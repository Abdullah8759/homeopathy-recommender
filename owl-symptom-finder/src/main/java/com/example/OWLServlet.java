package com.example;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import org.apache.jena.query.*;
import org.apache.jena.rdf.model.*;
import org.apache.jena.util.FileManager;
import java.util.ArrayList;
import java.util.List;

public class OWLServlet extends HttpServlet {
    private Model model;

    @Override
    public void init() throws ServletException {
        try {
            String rdfPath = getServletContext().getRealPath("/WEB-INF/owl/allFileSample.rdf");
            model = FileManager.get().loadModel(rdfPath);
        } catch (Exception e) {
            throw new ServletException("Failed to load RDF file: " + e.getMessage(), e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String symptom = request.getParameter("symptom").trim();
            String symptomURI = "http://www.semanticweb.org/user/ontologies/2025/3/04_sampleData#" + symptom;
            
            List<Treatment> treatments = queryTreatments(symptomURI);
            
            request.setAttribute("symptom", symptom);
            request.setAttribute("treatments", treatments);
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } catch (Exception e) {
            handleError(request, response, e);
        }
    }

    private List<Treatment> queryTreatments(String symptomURI) {
        List<Treatment> results = new ArrayList<>();
        String queryStr = 
            "PREFIX sample: <http://www.semanticweb.org/user/ontologies/2025/3/04_sampleData#>\n" +
            "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
            "SELECT (COALESCE(?label, STRAFTER(STR(?medicine), '#')) AS ?medName) ?dosage ?duration ?price\n" +
            "WHERE {\n" +
            "  { \n" +
            "    <" + symptomURI + "> sample:has_medicine ?medicine .\n" +
            "    OPTIONAL { ?medicine sample:price ?price }\n" +
            "    OPTIONAL { ?medicine rdfs:label ?label }\n" +
            "    BIND('Standard dosage' AS ?dosage)\n" +
            "    BIND('Consult practitioner' AS ?duration)\n" +
            "  }\n" +
            "  UNION\n" +
            "  {\n" +
            "    ?treatment sample:treat_symp <" + symptomURI + "> ;\n" +
            "               sample:uses_medicine ?medicine ;\n" +
            "               sample:dosageAmount ?dosage ;\n" +
            "               sample:duration ?duration .\n" +
            "    OPTIONAL { ?medicine sample:price ?price }\n" +
            "    OPTIONAL { ?medicine rdfs:label ?label }\n" +
            "  }\n" +
            "}";

        try (QueryExecution qExec = QueryExecutionFactory.create(queryStr, model)) {
            ResultSet rs = qExec.execSelect();
            while (rs.hasNext()) {
                QuerySolution soln = rs.next();
                Treatment t = new Treatment();
                t.setMedicine(getCleanValue(soln, "medName"));
                t.setDosage(getCleanValue(soln, "dosage"));
                t.setDuration(getCleanValue(soln, "duration"));
                t.setPrice(getCleanValue(soln, "price"));
                results.add(t);
            }
        }
        return results;
    }

    private String getCleanValue(QuerySolution soln, String var) {
        if (!soln.contains(var)) return "N/A";
        
        String value = soln.get(var).toString();
        
        // Clean medicine names
        if (var.equals("medName")) {
            value = value.replace("http://www.semanticweb.org/user/ontologies/2025/3/04_sampleData#", "");
        }
        
        // Clean price values
        if (var.equals("price") && value.contains("^^")) {
            return value.split("\\^\\^")[0];
        }
        
        return value;
    }

    private void handleError(HttpServletRequest request, HttpServletResponse response, Exception e) 
            throws ServletException, IOException {
        request.setAttribute("error", e.getMessage());
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }

    public static class Treatment {
        private String medicine;
        private String dosage;
        private String duration;
        private String price;

        // Getters and Setters
        public String getMedicine() { return medicine; }
        public void setMedicine(String medicine) { this.medicine = medicine; }
        public String getDosage() { return dosage; }
        public void setDosage(String dosage) { this.dosage = dosage; }
        public String getDuration() { return duration; }
        public void setDuration(String duration) { this.duration = duration; }
        public String getPrice() { return price; }
        public void setPrice(String price) { this.price = price; }
    }
}