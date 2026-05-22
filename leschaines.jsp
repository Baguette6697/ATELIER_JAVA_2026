<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les chaines</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les chaines de charactères</h1>
    
    <form action="#" method="post">
        <p>Saisir une chaine (Du texte avec 6 caractères minimum) : 
           <input type="text" id="inputValeur" name="chaine" value="<%= request.getParameter("chaine") != null ? request.getParameter("chaine") : "" %>">
        </p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
        
    <% if (chaine != null && !chaine.isEmpty()) { %>
        
        <%-- Sécurité : On vérifie qu'il y a bien au moins 6 caractères pour les exemples de base --%>
        <% if (chaine.length() < 6) { %>
            <p style="color: red;"><strong>Erreur :</strong> Veuillez saisir au moins 6 caractères.</p>
        <% } else { %>

            <h3>Exemples de base du cours :</h3>
            <%-- Obtention de la longueur de la chaîne --%>
            <% int longueurChaine = chaine.length(); %>
            <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

            <%-- Extraction du 3° caractère dans votre chaine --%>
            <% char caractereExtrait = chaine.charAt(2); %>
            <p>Le 3° caractère de votre chaine est la lettre <strong><%= caractereExtrait %></strong></p>

            <%-- Obtention d'une sous-chaîne --%>
            <% String sousChaine = chaine.substring(2, 6); %>
            <p>Une sous chaine de votre texte (du 3ème au 6ème caractère) : <strong><%= sousChaine %></strong></p>

            <%-- Recherche de la lettre "e" --%>
            <% char recherche = 'e'; 
               int position = chaine.indexOf(recherche); %>
            <p>Votre premier "e" est à l'indice : <strong><%= position %></strong> (Note : -1 signifie qu'il n'y en a pas)</p>

            <hr>

            <h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
            <%
                int nbE = 0;
                for (int i = 0; i < chaine.length(); i++) {
                    // On vérifie les 'e' minuscules et 'E' majuscules
                    if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') {
                        nbE++;
                    }
                }
            %>
            <p>Il y a <strong><%= nbE %></strong> lettre(s) 'e' dans votre texte.</p>

            <h2>Exercice 2 : Affichage verticale</h2>
            <p>
            <%
                for (int i = 0; i < chaine.length(); i++) {
                    out.print(chaine.charAt(i) + "<br>");
                }
            %>
            </p>

            <h2>Exercice 3 : Retour à la ligne</h2>
            <p>
            <%
                for (int i = 0; i < chaine.length(); i++) {
                    char c = chaine.charAt(i);
                    if (c == ' ') {
                        out.print("<br>"); // Un espace provoque un saut de ligne HTML
                    } else {
                        out.print(c);
                    }
                }
            %>
            </p>

            <h2>Exercice 4 : Afficher une lettre sur deux</h2>
            <p><strong>
            <%
                // On avance de 2 en 2 (i += 2) pour sauter une lettre
                for (int i = 0; i < chaine.length(); i += 2) {
                    out.print(chaine.charAt(i));
                }
            %>
            </strong></p>

            <h2>Exercice 5 : La phrase en verlant</h2>
            <p><strong>
            <%
                // On commence par la fin de la chaîne (chaine.length() - 1) et on recule
                for (int i = chaine.length() - 1; i >= 0; i--) {
                    out.print(chaine.charAt(i));
                }
            %>
            </strong></p>

            <h2>Exercice 6 : Consonnes et voyelles</h2>
            <%
                int voyelles = 0;
                int consonnes = 0;
                String chaineMinuscule = chaine.toLowerCase(); // On passe tout en minuscule pour simplifier

                for (int i = 0; i < chaineMinuscule.length(); i++) {
                    char c = chaineMinuscule.charAt(i);
                    
                    // On vérifie d'abord si c'est bien une lettre de l'alphabet
                    if (c >= 'a' && c <= 'z') {
                        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'y') {
                            voyelles++;
                        } else {
                            consonnes++;
                        }
                    }
                }
            %>
            <ul>
                <li>Nombre de voyelles : <strong><%= voyelles %></strong></li>
                <li>Nombre de consonnes : <strong><%= consonnes %></strong> (hors espaces et ponctuations)</li>
            </ul>

        <% } // Fin du bloc de sécurité (longueur >= 6) %>
    <% } // Fin du bloc de présence de la chaîne %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
