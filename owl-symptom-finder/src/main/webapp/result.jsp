<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Treatment Results</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }
        .header {
            background-color: #2c7be5;
            color: white;
            padding: 2rem;
            margin-bottom: 2rem;
            border-radius: 0 0 1rem 1rem;
        }
        .card-treatment {
            border: none;
            border-radius: 1rem;
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
            transition: transform 0.3s;
            margin-bottom: 1.5rem;
        }
        .card-treatment:hover {
            transform: translateY(-5px);
        }
        .highlight-med {
            color: #2c7be5;
            font-weight: 600;
        }
        .highlight-price {
            color: #28a745;
            font-weight: 600;
        }
        .badge-custom {
            background-color: #e9ecef;
            color: #495057;
            font-weight: 500;
            padding: 0.5em 0.8em;
        }
        .no-results {
            text-align: center;
            padding: 3rem;
            background-color: white;
            border-radius: 1rem;
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.1);
        }
        .back-btn {
            margin-top: 2rem;
            padding: 0.75rem 2rem;
            border-radius: 0.5rem;
        }
    </style>
</head>
<body>
    <div class="header text-center">
        <h1 class="display-4 mb-3">Recommended Treatments</h1>
        <h2 class="h4">For symptom: <span class="text-warning">${symptom}</span></h2>
    </div>

    <div class="container">
        <c:choose>
            <c:when test="${not empty treatments}">
                <div class="row row-cols-1 row-cols-md-2 g-4">
                    <c:forEach items="${treatments}" var="t">
                        <div class="col">
                            <div class="card card-treatment">
                                <div class="card-body">
                                    <h3 class="card-title highlight-med mb-4">${t.medicine}</h3>
                                    <div class="row g-3 mb-4">
                                        <div class="col-6">
                                            <span class="badge badge-custom">Dosage</span>
                                            <p class="mt-2 mb-0 h5">${t.dosage}</p>
                                        </div>
                                        <div class="col-6">
                                            <span class="badge badge-custom">Duration</span>
                                            <p class="mt-2 mb-0 h5">${t.duration}</p>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="badge badge-custom">Price</span>
                                        <h4 class="highlight-price mb-0">₹${t.price}</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:when>
            <c:otherwise>
                <div class="no-results">
                    <img src="https://cdn-icons-png.flaticon.com/512/7465/7465751.png" 
                         alt="No results" 
                         style="height: 100px; margin-bottom: 1.5rem;">
                    <h3 class="text-muted mb-3">No treatments found</h3>
                    <p class="text-secondary">We couldn't find any treatments for "${symptom}"</p>
                </div>
            </c:otherwise>
        </c:choose>

        <div class="text-center mt-5">
            <a href="javascript:history.back()" 
               class="btn btn-outline-primary back-btn">
               ← Back to Symptoms Checker
            </a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>