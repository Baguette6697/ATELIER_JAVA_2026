<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Boucles</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les boucles</h1>
    
    <form action="#" method="post">
        <label for="inputValeur">Saisir le nombre d'étoiles : </label>
        <input type="text" id="inputValeur" name="valeur">
        <input type="submit" value="Afficher">
    </form>

    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String valeur = request.getParameter("valeur"); %>
        
    <%-- Vérification de l'existence de la valeur --%>
    <% if (valeur != null && !valeur.isEmpty()) { %>

        <% int cpt = Integer.parseInt(valeur); %>
        
        <p><strong>Ligne de <%= cpt %> étoiles :</strong></p>
        <p>
        <% for (int i = 1; i <= cpt; i++) { %>
           <%= "*" %>
        <% } %>
        </p>

        <hr>

        <h2>Exercice 1 : Le carré d'étoiles</h2>
        <p>Code dynamique pour un carré de <%= cpt %>x<%= cpt %> :</p>
        <%
            for (int i = 0; i < cpt; i++) {
                for (int j = 0; j < cpt; j++) {
                    out.print("* ");
                }
                out.print("<br>");
            }
        %>

        <h2>Exercice 2 : Triangle rectangle gauche</h2>
        <p>Code dynamique :</p>
        <%
            for (int i = 1; i <= cpt; i++) {
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.print("<br>");
            }
        %>

        <h2>Exercice 3 : Triangle rectangle inversé</h2>
        <p>Code dynamique :</p>
        <%
            for (int i = cpt; i >= 1; i--) {
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.print("<br>");
            }
        %>

        <h2>Exercice 4 : Triangle rectangle 2 (Aligné à droite, grands espaces)</h2>
        <p>Code dynamique :</p>
        <%
            for (int i = 1; i <= cpt; i++) {
                // Espaces de rechange (2 espaces HTML par étoile manquante)
                for (int j = 1; j <= (cpt - i) * 2; j++) {
                    out.print("&nbsp;");
                }
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.print("<br>");
            }
        %>

        <h2>Exercice 5 : Triangle isocèle (Aligné à droite, petits espaces)</h2>
        <p>Code dynamique :</p>
        <%
            for (int i = 1; i <= cpt; i++) {
                // 1 espace HTML par étoile manquante
                for (int j = 1; j <= cpt - i; j++) {
                    out.print("&nbsp;");
                }
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.print("<br>");
            }
        %>

        <h2>Exercice 6 : Le demi losange</h2>
        <p>Code dynamique :</p>
        <%
            // Partie haute (identique à l'exercice 4)
            for (int i = 1; i <= cpt; i++) {
                for (int j = 1; j <= (cpt - i) * 2; j++) {
                    out.print("&nbsp;");
                }
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.print("<br>");
            }
            // Partie basse inversée
            for (int i = cpt; i >= 1; i--) {
                for (int j = 1; j <= (cpt - i) * 2; j++) {
                    out.print("&nbsp;");
                }
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.print("<br>");
            }
        %>

        <h2>Exercice 7 : La table de multiplication</h2>
        <p>Table de multiplication pour le nombre <%= cpt %> :</p>
        <%
            for (int i = 1; i <= cpt; i++) {
                out.print(cpt + " x " + i + " = " + (cpt * i) + "<br>");
            }
        %>

    <% } // Fin du bloc IF %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
