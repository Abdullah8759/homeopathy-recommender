<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Homeopathy Healing</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <style>
        :root {
            --primary-color: #1e3c72;
            --secondary-color: #2a5298;
            --accent-color: #ff6f61;
            --light-bg: #f0f4f8;
            --dark-bg: #1a252f;
            --text-light: #ffffff;
            --text-dark: #1f2a44;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--light-bg);
            color: var(--text-dark);
            padding-top: 80px;
            line-height: 1.6;
        }

        .nav-glass {
            background: rgba(30, 60, 114, 0.95);
            backdrop-filter: blur(8px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .nav-link {
            color: #fff !important;
            font-weight: 500;
            transition: 0.3s ease-in-out;
        }

        .nav-link:hover {
            color: var(--accent-color) !important;
        }

        .hero-section {
            padding: 6rem 0;
            background: linear-gradient(120deg, var(--primary-color), var(--secondary-color));
            color: var(--text-light);
            position: relative;
            overflow: hidden;
            text-align: center;
        }

        .hero-section::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://cdn.pixabay.com/photo/2016/11/19/22/52/herbs-1840308_1280.jpg') no-repeat center/cover;
            opacity: 0.1;
            z-index: 0;
        }

        .hero-content {
            position: relative;
            z-index: 1;
        }

        .benefit-card {
            border-radius: 1rem;
            background: var(--light-bg);
            padding: 2rem;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease;
        }

        .benefit-card:hover {
            transform: translateY(-8px);
        }

        .benefit-icon {
            width: 70px;
            height: 70px;
            background: var(--secondary-color);
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .dark-section {
            background: var(--dark-bg);
            color: var(--text-light);
        }

        .dark-section .benefit-card {
            background: #2c3742;
        }

        .cta-button {
            background: var(--accent-color);
            border: none;
            padding: 0.8rem 2.5rem;
            font-weight: 600;
            border-radius: 2rem;
            color: var(--text-light);
            transition: all 0.3s ease;
        }

        .cta-button:hover {
            background: var(--primary-color);
            color: var(--text-light);
        }

        .inspiration-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 1rem;
            padding: 2rem;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg nav-glass fixed-top">
        <div class="container">
            <a class="navbar-brand text-white fw-bold" href="#">Homeopathy Healing</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon bg-light rounded"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link btn btn-outline-light mx-2" href="register.jsp">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-light mx-2 text-dark" href="patient_login.jsp">Patient Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container hero-content">
           <h1 class="display-4 fw-bold mb-4">Welcome to </h1>
            <p class="lead mb-5">
                Discover the gentle power of homeopathy with personalized healing solutions.
            </p>
            <a href="register.jsp" class="btn cta-button">Start Your Healing Journey</a>
        </div>
    </section>

    <!-- Benefits Section -->
    <section class="py-5 dark-section">
        <div class="container">
            <h2 class="text-center mb-5 fw-bold">Why Homeopathy?</h2>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="benefit-card text-center">
                        <div class="benefit-icon mx-auto mb-4">
                            <img src="https://cdn-icons-png.flaticon.com/512/411/411712.png" 
                                 alt="Natural" 
                                 style="height: 35px; filter: brightness(0) invert(1);">
                        </div>
                        <h4 class="mb-3">Natural Healing</h4>
                        <p>
                            Uses natural substances to stimulate your body's healing, free from chemicals.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="benefit-card text-center">
                        <div class="benefit-icon mx-auto mb-4">
                            <img src="https://cdn-icons-png.flaticon.com/512/892/892458.png" 
                                 alt="Holistic" 
                                 style="height: 35px; filter: brightness(0) invert(1);">
                        </div>
                        <h4 class="mb-3">Holistic Approach</h4>
                        <p>
                            Treats mind, body, and spirit together for total wellness and harmony.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="benefit-card text-center">
                        <div class="benefit-icon mx-auto mb-4">
                            <img src="https://cdn-icons-png.flaticon.com/512/411/411745.png" 
                                 alt="Personalized" 
                                 style="height: 35px; filter: brightness(0) invert(1);">
                        </div>
                        <h4 class="mb-3">Personalized Care</h4>
                        <p>
                            Each remedy is uniquely matched to your individual symptoms and nature.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Stories -->
    <section class="py-5">
        <div class="container">
            <h2 class="text-center mb-5 fw-bold">Stories of Hope and Healing</h2>
            <div class="row g-4">
                <div class="col-md-6">
                    <div class="inspiration-card">
                        <h4 class="fw-bold text-primary">A New Lease on Life</h4>
                        <p>
                            “Homeopathy gave me back my vitality. I feel like myself again!”  
                            — Ananya R., Grateful Patient
                        </p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="inspiration-card">
                        <h4 class="fw-bold text-primary">Gentle and Effective</h4>
                        <p>
                            “I was amazed at how quickly I saw results. Homeopathy is truly remarkable.”  
                            — Vikram S., Wellness Advocate
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <section class="py-5 dark-section text-center">
        <div class="container">
            <h2 class="fw-bold mb-4">Ready to Transform Your Health?</h2>
            <p class="lead mb-5">
                Join our community and experience the healing power of homeopathy with Homeopathy Healing.
            </p>
            <a href="register.jsp" class="btn cta-button">Get Started Today</a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white py-4">
        <div class="container text-center">
            <p>© 2025 Homeopathy Healing | Developed by Abdullah</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
