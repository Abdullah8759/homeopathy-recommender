# Ontology Driven Recommender System for Homeopathy

## 📋 Project Overview
This is a web-based application that recommends suitable **homeopathic medicines** based on user-input symptoms. It uses **semantic web technologies**, including OWL/RDF ontologies and SPARQL queries, to map symptoms to treatments intelligently. The system is built using **Java**, **JSP**, and **Apache Jena**, and deployed on **Apache Tomcat**.

---

## 🔧 Tools & Technologies Used

| Tool/Technology | Role in the Project |
|------------------|---------------------|
| **Ontology (OWL/RDF)** | Stores structured medical knowledge, defining relationships between symptoms, diseases, and treatments. |
| **SPARQL** | Queries the ontology to fetch relevant medicines, dosage, and duration. |
| **HTML & CSS** | Builds a clean, responsive frontend interface for user input and displaying results. |
| **Java (JSP, Servlets)** | Handles business logic, integrates Apache Jena, and dynamically renders treatment results. |
| **Maven** | Manages project structure and dependencies like Apache Jena. |
| **Apache Tomcat** | Deploys and runs the Java web application locally or on a server. |

---

## 🔄 Workflow

**Symptom Input → Ontology Query (SPARQL) → Treatment Results**

**Example:**  
User inputs: `Headache`  
System returns:  
- **Medicine:** Belladonna 30C  
- **Dosage:** 3 drops twice a day  
- **Duration:** 5 days  
- **Price:** ₹150
# Team Members

| Name            | Roll Number  | Registration Number | Student Code           |
|-----------------|--------------|----------------------|-----------------------|
|    ABDULLAH     | 23010201118  | 23012005234          | BWU/MCA/23/127        |
|   ARINDAM KUNDU | 23010201129  | 23012005245          | BWU/MCA/23/138        |
|   SANTANU ROY   | 23010201130  | 23012005246          | BWU/MCA/23/141        |
|  DEBDUTTA DWARY | 23010201137  | 23012005253          | BWU/MCA/23/148        |

**Execution Steps**
Follow these steps to run the Ontology Driven Recommender System for Homeopathy locally:

1️⃣ Clone or Download the Project

Clone the repository using:

bash
Copy
Edit
git clone <your-repo-link>
or download the ZIP and extract it.

2️⃣ Open in IDE

Open the project in Eclipse, IntelliJ IDEA, or any IDE that supports Maven and Java Web Projects.

3️⃣ Check Project Structure

Make sure the following are properly placed:

ontology.owl (your OWL/RDF file) is in the correct resource path.

pom.xml has required dependencies (Apache Jena, Servlet API).

4️⃣ Configure Apache Tomcat

Add Apache Tomcat server in your IDE.

Deploy the project on the Tomcat server.

Make sure the web.xml is configured correctly if needed.

5️⃣ Build the Project

Use Maven to build:

bash
Copy
Edit
mvn clean install
Ensure there are no build errors.

6️⃣ Run the Server

Start the Apache Tomcat server from your IDE.

7️⃣ Access the Application

Open a web browser and go to:

arduino
Copy
Edit
http://localhost:8080/<your-project-name>/
Example: http://localhost:8080/HomeopathySystem/

8️⃣ Test the System

Enter a symptom (e.g., Headache) in the input form.

Submit the form.

The system will run a SPARQL query on the ontology and display:

Suggested medicine

Dosage

Duration

Pricing

✅ Done!
Your Homeopathic Medicine Recommendation System is now up and running!



