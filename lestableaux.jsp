<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les tableaux</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les tableaux</h1>
    
    <form action="#" method="post">
        <p>Saisir au minimum 3 chiffres séparés par des espaces (ex: 6 78 -15) : 
           <input type="text" id="inputValeur" name="chaine" value="<%= request.getParameter("chaine") != null ? request.getParameter("chaine") : "" %>">
        </p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
        
    <% if (chaine != null && !chaine.trim().isEmpty()) { %>

        <%-- Division de la chaîne de chiffres séparés par des espaces --%>
        <% String[] tableauDeChiffres = chaine.trim().split("\\s+"); %>
        
        <%-- Sécurité : On s'assure qu'il y a bien au moins 3 valeurs pour l'affichage initial --%>
        <% if (tableauDeChiffres.length < 3) { %>
            <p style="color: red;"><strong>Erreur :</strong> Veuillez saisir au moins 3 chiffres séparés par des espaces.</p>
        <% } else { %>

            <%
                // Pour simplifier la suite, on convertit immédiatement le tableau de String en tableau de int
                int[] nombres = new int[tableauDeChiffres.length];
                for (int i = 0; i < tableauDeChiffres.length; i++) {
                    nombres[i] = Integer.parseInt(tableauDeChiffres[i]);
                }
            %>

            <h3>Présentation du tableau :</h3>
            <p>Le tableau contient <strong><%= nombres.length %></strong> valeurs.<br>
            Chiffre 1 : <%= nombres[0] %><br>
            Chiffre 2 : <%= nombres[1] %><br>
            Chiffre 3 : <%= nombres[2] %></p>
            
            <hr>
            
            <h2>Exercice 1 : Le carré de la première valeur</h2>
            <% int carrePremier = nombres[0] * nombres[0]; %>
            <p>Le carré de <%= nombres[0] %> est <strong><%= carrePremier %></strong></p>

            <h2>Exercice 2 : La somme des 2 premières valeurs</h2>
            <% int sommeDeux = nombres[0] + nombres[1]; %>
            <p>La somme de <%= nombres[0] %> + <%= nombres[1] %> est égale à <strong><%= sommeDeux %></strong></p>

            <h2>Exercice 3 : La somme de toutes les valeurs</h2>
            <%
                int sommeTotale = 0;
                for (int i = 0; i < nombres.length; i++) {
                    sommeTotale += nombres[i];
                }
            %>
            <p>La somme de l'ensemble des <%= nombres.length %> valeurs est <strong><%= sommeTotale %></strong></p>

            <h2>Exercice 4 : La valeur maximum</h2>
            <%
                int max = nombres[0];
                for (int i = 1; i < nombres.length; i++) {
                    if (nombres[i] > max) {
                        max = nombres[i];
                    }
                }
            %>
            <p>La valeur maximale présente dans le tableau est <strong><%= max %></strong></p>

            <h2>Exercice 5 : La valeur minimale</h2>
            <%
                int min = nombres[0];
                for (int i = 1; i < nombres.length; i++) {
                    if (nombres[i] < min) {
                        min = nombres[i];
                    }
                }
            %>
            <p>La valeur minimale présente dans le tableau est <strong><%= min %></strong></p>

            <h2>Exercice 6 : La valeur la plus proche de 0</h2>
            <%
                int procheZero = nombres[0];
                for (int i = 1; i < nombres.length; i++) {
                    // Math.abs() permet d'obtenir la valeur absolue (sans le signe -)
                    if (Math.abs(nombres[i]) < Math.abs(procheZero)) {
                        procheZero = nombres[i];
                    }
                }
            %>
            <p>La valeur la plus proche de 0 est <strong><%= procheZero %></strong></p>

            <h2>Exercice 7 : La valeur la plus proche de 0 (2° version)</h2>
            <%
                int procheZeroV2 = nombres[0];
                for (int i = 1; i < nombres.length; i++) {
                    int absCourant = Math.abs(nombres[i]);
                    int absProche = Math.abs(procheZeroV2);
                    
                    if (absCourant < absProche) {
                        procheZeroV2 = nombres[i]; // Fixed typo: 'nmbres' is now 'nombres'
                    } 
                    // En cas d'égalité stricte de distance (ex: -5 et 5)
                    else if (absCourant == absProche) {
                        // On choisit la valeur qui est positive
                        if (nombres[i] > procheZeroV2) {
                            procheZeroV2 = nombres[i];
                        }
                    }
                }
            %>
            <p>La valeur la plus proche de 0 (avec préférence positive) est <strong><%= procheZeroV2 %></strong></p>

        <% } // Fin du bloc de sécurité (longueur >= 3) %>
    <% } // Fin du bloc de présence de la chaîne %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
