<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercices sur les Boucles</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 30px 20px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            background: white;
            border-radius: 15px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            overflow: hidden;
        }

        .header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 40px;
            text-align: center;
        }

        .header h1 {
            font-size: 2.2em;
            margin-bottom: 10px;
            font-weight: 700;
        }

        .header p {
            opacity: 0.95;
            font-size: 1em;
        }

        .content {
            padding: 40px;
        }

        .intro-box {
            background: #f0f4ff;
            border-left: 4px solid #667eea;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 30px;
        }

        .intro-box p {
            color: #333;
            line-height: 1.6;
        }

        .input-section {
            background: #f8f9fa;
            padding: 25px;
            border-radius: 10px;
            margin-bottom: 30px;
            border: 2px solid #e9ecef;
        }

        .input-section form {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
            align-items: flex-end;
        }

        .input-section label {
            font-weight: 600;
            color: #333;
        }

        .input-section input[type="text"] {
            padding: 10px 15px;
            border: 2px solid #e9ecef;
            border-radius: 8px;
            font-size: 1em;
            transition: border-color 0.3s;
        }

        .input-section input[type="text"]:focus {
            outline: none;
            border-color: #667eea;
            background-color: #f0f4ff;
        }

        .input-section input[type="submit"] {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 10px 30px;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s;
        }

        .input-section input[type="submit"]:hover {
            transform: scale(1.05);
        }

        .result-section {
            background: #fff8f0;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
            border-left: 4px solid #ff9800;
        }

        .exercise-container {
            display: grid;
            gap: 30px;
        }

        .exercise {
            background: #f8f9fa;
            border: 2px solid #e9ecef;
            border-radius: 10px;
            padding: 25px;
            transition: all 0.3s ease;
        }

        .exercise:hover {
            border-color: #667eea;
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.15);
        }

        .exercise h2 {
            color: #667eea;
            font-size: 1.4em;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .exercise-num {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            width: 35px;
            height: 35px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            font-size: 0.9em;
        }

        .exercise-desc {
            color: #666;
            margin-bottom: 15px;
            line-height: 1.6;
            font-size: 0.95em;
        }

        .output-box {
            background: white;
            border: 2px dashed #ddd;
            padding: 20px;
            border-radius: 8px;
            font-family: 'Courier New', monospace;
            color: #333;
            overflow-x: auto;
            line-height: 1.6;
        }

        .output-box pre {
            margin: 0;
        }

        .back-link {
            margin-top: 30px;
            text-align: center;
        }

        .back-link a {
            display: inline-block;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 12px 30px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            transition: transform 0.3s;
        }

        .back-link a:hover {
            transform: scale(1.05);
        }

        .footer {
            background: #f8f9fa;
            padding: 20px 40px;
            text-align: center;
            color: #999;
            font-size: 0.85em;
            border-top: 1px solid #e9ecef;
        }

        @media (max-width: 600px) {
            .header {
                padding: 25px;
            }

            .header h1 {
                font-size: 1.6em;
            }

            .content {
                padding: 20px;
            }

            .input-section form {
                flex-direction: column;
                align-items: stretch;
            }

            .input-section input {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🔄 Exercices sur les Boucles</h1>
            <p>Maîtrisez les structures itératives avec le Java</p>
        </div>

        <div class="content">
            <div class="intro-box">
                <p>
                    <strong>Bienvenue dans le module des boucles!</strong> Les boucles sont des structures de contrôle fondamentales 
                    en programmation qui vous permettent de répéter un bloc de code plusieurs fois. Dans ce module, vous allez explorer 
                    les boucles <code>for</code> imbriquées pour créer des motifs visuels fascinants et résoudre des problèmes mathématiques courants.
                </p>
            </div>

            <div class="input-section">
                <form action="#" method="post">
                    <label for="inputValeur">Saisir la taille (nombre de lignes/colonnes) :</label>
                    <input type="text" id="inputValeur" name="valeur" placeholder="Ex: 5" required>
                    <input type="submit" value="Afficher les résultats">
                </form>
            </div>

            <%-- Récupération de la valeur saisie par l'utilisateur --%>
            <% String valeur = request.getParameter("valeur"); %>
                
            <%-- Vérification de l'existence de la valeur --%>
            <% if (valeur != null && !valeur.isEmpty()) { %>
                <% try { %>
                    <% int cpt = Integer.parseInt(valeur); %>
                    
                    <% if (cpt > 0 && cpt <= 100) { %>
                        <div class="result-section">
                            <p><strong>✓ Résultats pour une taille de <%= cpt %> :</strong></p>
                        </div>

                        <div class="exercise-container">
                            <!-- Exercice 0: Ligne simple -->
                            <div class="exercise">
                                <h2><span class="exercise-num">0</span> Ligne simple</h2>
                                <p class="exercise-desc">
                                    Une simple boucle qui affiche une ligne d'étoiles. C'est l'exercice de base pour comprendre 
                                    comment fonctionnent les boucles : initialisation, condition, et incrémentation.
                                </p>
                                <div class="output-box"><pre><% for (int i = 1; i <= cpt; i++) { %>*<% } %></pre></div>
                            </div>

                            <!-- Exercice 1: Carré -->
                            <div class="exercise">
                                <h2><span class="exercise-num">1</span> Le carré d'étoiles</h2>
                                <p class="exercise-desc">
                                    Utilisez deux boucles imbriquées pour créer un carré. La première boucle (externe) gère les lignes, 
                                    tandis que la seconde (interne) gère les colonnes. C'est une excellente introduction aux boucles imbriquées!
                                </p>
                                <div class="output-box">
                                    <%
                                        for (int i = 0; i < cpt; i++) {
                                            for (int j = 0; j < cpt; j++) {
                                                out.print("* ");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <!-- Exercice 2: Triangle croissant -->
                            <div class="exercise">
                                <h2><span class="exercise-num">2</span> Triangle rectangle croissant</h2>
                                <p class="exercise-desc">
                                    Créez un triangle qui grandit progressivement. La boucle externe augmente le nombre d'étoiles à chaque itération, 
                                    tandis que la boucle interne affiche le bon nombre d'étoiles pour cette ligne.
                                </p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            for (int j = 1; j <= i; j++) {
                                                out.print("*");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <!-- Exercice 3: Triangle décroissant -->
                            <div class="exercise">
                                <h2><span class="exercise-num">3</span> Triangle rectangle décroissant</h2>
                                <p class="exercise-desc">
                                    L'inverse du triangle précédent! Cette fois, la boucle externe commence par le maximum et décrémente. 
                                    Observez comment changer la direction de la boucle crée un triangle inversé.
                                </p>
                                <div class="output-box">
                                    <%
                                        for (int i = cpt; i >= 1; i--) {
                                            for (int j = 1; j <= i; j++) {
                                                out.print("*");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <!-- Exercice 4: Triangle aligné à droite (espaces doubles) -->
                            <div class="exercise">
                                <h2><span class="exercise-num">4</span> Triangle aligné à droite (grands espaces)</h2>
                                <p class="exercise-desc">
                                    Alignez le triangle à droite en ajoutant des espaces avant les étoiles. La première boucle interne ajoute 
                                    des espaces pour l'alignement, la deuxième ajoute les étoiles. Astuce: nous utilisons <code>&amp;nbsp;</code> 
                                    pour les espaces HTML.
                                </p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            for (int j = 1; j <= (cpt - i) * 2; j++) {
                                                out.print("&nbsp;");
                                            }
                                            for (int j = 1; j <= i; j++) {
                                                out.print("*");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <!-- Exercice 5: Triangle isocèle -->
                            <div class="exercise">
                                <h2><span class="exercise-num">5</span> Triangle isocèle</h2>
                                <p class="exercise-desc">
                                    Créez un triangle isocèle (centré) avec moins d'espaces. Similaire à l'exercice précédent, 
                                    mais avec un espacement plus réduit, créant un triangle plus élancé et symétrique.
                                </p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            for (int j = 1; j <= cpt - i; j++) {
                                                out.print("&nbsp;");
                                            }
                                            for (int j = 1; j <= i; j++) {
                                                out.print("*");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <!-- Exercice 6: Losange -->
                            <div class="exercise">
                                <h2><span class="exercise-num">6</span> Le losange</h2>
                                <p class="exercise-desc">
                                    Combinez un triangle croissant avec un triangle décroissant pour créer un losange! 
                                    La première partie affiche le triangle du haut, la deuxième affiche le triangle du bas inversé.
                                </p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            for (int j = 1; j <= (cpt - i) * 2; j++) {
                                                out.print("&nbsp;");
                                            }
                                            for (int j = 1; j <= i; j++) {
                                                out.print("*");
                                            }
                                            out.print("<br>");
                                        }
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
                                </div>
                            </div>

                            <!-- Exercice 7: Table de multiplication -->
                            <div class="exercise">
                                <h2><span class="exercise-num">7</span> Table de multiplication</h2>
                                <p class="exercise-desc">
                                    Appliquez les boucles à un cas pratique! Générez la table de multiplication pour le nombre <%= cpt %>.
                                    Les boucles ne sont pas limitées aux motifs visuels - elles peuvent aussi résoudre des problèmes mathématiques.
                                </p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            out.print(cpt + " × " + i + " = " + (cpt * i) + "<br>");
                                        }
                                    %>
                                </div>
                            </div>
                        </div>

                    <% } else { %>
                        <div class="result-section" style="background: #ffebee; border-left-color: #f44336;">
                            <p><strong>⚠ Erreur:</strong> Veuillez entrer un nombre entre 1 et 100.</p>
                        </div>
                    <% } %>
                <% } catch (NumberFormatException e) { %>
                    <div class="result-section" style="background: #ffebee; border-left-color: #f44336;">
                        <p><strong>⚠ Erreur:</strong> Veuillez entrer un nombre valide.</p>
                    </div>
                <% } %>
            <% } else { %>
                <div class="intro-box" style="background: #e3f2fd; border-left-color: #2196F3;">
                    <p>
                        <strong>💡 Conseil:</strong> Saisissez un nombre entre 1 et 100 dans le champ ci-dessus pour voir les différents exercices s'exécuter. 
                        Essayez avec des valeurs différentes pour voir comment les boucles évoluent!
                    </p>
                </div>
            <% } %>

            <div class="back-link">
                <a href="index.html">← Retour à l'accueil</a>
            </div>
        </div>

        <div class="footer">
            💡 Les boucles sont partout en programmation - les maîtriser est essentiel!
        </div>
    </div>
</body>
</html>
