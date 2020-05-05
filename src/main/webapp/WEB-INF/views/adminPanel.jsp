<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<% request.setAttribute("isAdmin", request.isUserInRole("ADMIN")); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>G&G CarRent - Wypożyczalnia samochodów</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <nav class="navtop">
        <img src="../../resources/images/newlogo.png">
        <ul>
            <c:if test="${isAdmin}">
                <li><a class="active"  href="${contextPath}/adminPanel">Panel administratora</a></li>
            </c:if>
            <li><a href="${contextPath}/index">Strona Główna</a></li>
            <li><a href="${contextPath}/flota">Flota</a></li>
            <li><a href="${contextPath}/locations">Lokalizacje</a></li>
            <li><a href="${contextPath}/ofirmie">O firmie</a></li>
            <li><a href="${contextPath}/kontakt">Kontakt</a></li>
            <li><a href="${contextPath}/offer">Oferta</a></li>
        </ul>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                </form>
                <div class="logreg">
                    <h6>Zalogowany: <b>${pageContext.request.userPrincipal.name}</b></h6>
                    <button type="button" class="btn btn-dark" onclick="document.forms['logoutForm'].submit()">Wyloguj się
                    </button>
                </div>
            </c:if>
    </nav>

    <header class="header">
        <h3>"Bądź wzorcem jakości. Niektórzy ludzie nie przywykli do środowiska, gdzie oczekuje się doskonałości."</h3>
    </header>

    <main class= "main">
        </br>
        <c:if test="${location eq true}">
            <div class="alert alert-success">Dodano nową lokalizację!</div>
        </c:if>
        <c:if test="${car eq true}">
            <div class="alert alert-success">Dodano nowy samochód!</div>
        </c:if>
        <c:if test="${offer eq true}">
            <div class="alert alert-success">Dodano nową ofertę!</div>
        </c:if>
        <h2>Panel administratora:</h2>
        <h2><a href="${contextPath}/carform"> Dodaj samochód</a></h2>
        <h2><a href="${contextPath}/offerform"> Dodaj ofertę</a></h2>
        <h2><a href="${contextPath}/locationform"> Dodaj lokalizacje</a></h2>
        <h2><a href="${contextPath}/users"> Zarządzaj użytkownikami</a></h2>

    </main>

    <footer class = "footer">
        <p>Autorzy: Karol Głuch, Michał Galas, Sławomir Faron.</p>
        <p>Copyright &copy 2020 G-F-G CarRent. Wszelkie prawa zastrzeżone.</p>
    </footer>

</body>
</html>