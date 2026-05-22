<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>les conditions</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les conditions</h1>
    
    <%-- Formulaire mis à jour avec 3 champs pour coller à l'exercice 1 --%>
    <form action="#" method="post">
        <p>Saisir la valeur A : <input type="text" id="inputA" name="valeurA"></p>
        <p>Saisir la valeur B : <input type="text" id="inputB" name="valeurB"></p>
        <p>Saisir la valeur C : <input type="text" id="inputC" name="valeurC"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% 
        String valeurA = request.getParameter("valeurA"); 
        String valeurB = request.getParameter("valeurB"); 
        String valeurC = request.getParameter("valeurC"); 
    %>

    <%-- Vérification de l'existence des trois valeurs --%>
    <% if (valeurA != null && !valeurA.isEmpty() && 
           valeurB != null && !valeurB.isEmpty() && 
           valeurC != null && !valeurC.isEmpty()) { %>
           
        <%-- Conversion des valeurs en entiers pour les calculs --%>
        <% 
            int intA = Integer.parseInt(valeurA); 
            int intB = Integer.parseInt(valeurB); 
            int intC = Integer.parseInt(valeurC); 
        %>
        
        <h3>Comparaison initiale (A et B) :</h3>
        <% if (intA > intB) { %>
            <p>Valeur A (<%= intA %>) est supérieure à Valeur B (<%= intB %>).</p>
        <% } else if (intA < intB) { %>
            <p>Valeur A (<%= intA %>) est inférieure à Valeur B (<%= intB %>).</p>
        <% } else { %>
            <p>Valeur A (<%= intA %>) est égale à Valeur B (<%= intB %>).</p>
        <% } %>
   
        <hr>
        
        <h2>Exercice 1 : Comparaison 1</h2>
        <p>A = <%= intA %><br>
           B = <%= intB %><br>
           C = <%= intC %></p>
        
        <% 
            // On vérifie si C est entre A et B (prend en compte si A < B ou si A > B)
            if ((intC >= intA && intC <= intB) || (intC >= intB && intC <= intA)) { 
        %>
            <p><strong>Oui</strong>, C est compris entre A et B.</p>
        <% } else { %>
            <p><strong>Non</strong>, C n'est pas compris entre A et B.</p>
        <% } %>

        <h2>Exercice 2 : Pair ou Impair ?</h2>
        <p>Vérification du statut des nombres saisis :</p>
        <ul>
            <li>La valeur A (<%= intA %>) est <strong><%= (intA % 2 == 0) ? "Paire" : "Impaire" %></strong>.</li>
            <li>La valeur B (<%= intB %>) est <strong><%= (intB % 2 == 0) ? "Paire" : "Impaire" %></strong>.</li>
            <li>La valeur C (<%= intC %>) est <strong><%= (intC % 2 == 0) ? "Paire" : "Impaire" %></strong>.</li>
        </ul>

    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
