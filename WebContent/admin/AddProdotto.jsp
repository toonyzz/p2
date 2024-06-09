<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<title>Aggiungi prodotto</title>
<script>
    function validateForm() {
        var iva = document.forms["myform"]["iva"].value;
        var prezzo = document.forms["myform"]["prezzo"].value;
        var dataUscita = document.forms["myform"]["dataUscita"].value;

        if (isNaN(iva) || isNaN(prezzo)) {
            alert("Iva e Prezzo devono essere numerici");
            return false;
        }

        if (!Date.parse(dataUscita)) {
            alert("Formato data non valido");
            return false;
        }

        return true;
    }
</script>
</head>
<body>
    <jsp:include page="../fragments/header.jsp" />
    <jsp:include page="../fragments/menu.jsp" />
    
    <div id="main" class="clear">
        <h2>AGGIUNGI PRODOTTO</h2>

        <form action="../catalogo" method="post" id="myform" onsubmit="return validateForm()">
            <input type="hidden" name="action" value="add">
            <input type="hidden" name="page" value="admin/GestioneCatalogo.jsp"><br><br>
            <div class="tableRow">
                <p>Nome:</p>
                <p><input type="text" name="nome" value="" required></p>
            </div>
            <div class="tableRow">
                <p>Descrizione:</p>
                <p><input type="text" name="descrizione" value="" required></p>
            </div>
            <div class="tableRow">
                <p>Iva:</p>
                <p><input type="text" name="iva" value="" required></p>
            </div>
            <div class="tableRow">
                <p>Prezzo:</p>
                <p><input type="text" name="prezzo" value="" required></p>
            </div>        
            <div class="tableRow">
                <p>Data:</p>
                <p><input type="text" name="dataUscita" value="" required></p>
            </div>
            <div class="tableRow">
                <p>Quantità:</p>
                <p><input type="number" name="quantità" value="" required></p>
            </div>
            <div class="tableRow">
                <p>Immagine:</p>
                <p><input type="text" name="img" value="" required></p>
            </div>
            <div class="tableRow">
                <p>Piattaforma:</p>
                <p><input type="text" name="piattaforma" value="" required></p>
            </div>
            <div class="tableRow">
                <p>Genere:</p>
                <p><input type="text" name="genere" value="" required></p>
            </div>
            <div class="tableRow">    
                <p>Descrizione dettagliata:</p>
                <p><input type="text" name="descDett" value=""></p>
            </div>
            <div class="tableRow">
                <p></p>
                <p><input type="submit" value="aggiungi"></p>
            </div>
        </form>
    </div>

    <jsp:include page="../fragments/footer.jsp" />
</body>
</html>
