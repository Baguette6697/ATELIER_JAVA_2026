<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercices sur les Tableaux</title>
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
            display: grid;
            gap: 15px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 8px;
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
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s;
            align-self: flex-start;
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
            border: 2px solid #ddd;
            padding: 15px;
            border-radius: 8px;
            color: #333;
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

        .error-box {
            background: #ffebee;
            border-left-color: #f44336 !important;
        }

        @media (max-width: 600px) {
            .header { padding: 25px; }
            .header h1 { font-size: 1.6em; }
            .content { padding: 20px; }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>📊 Exercices sur les Tableaux</h1>
            <p>Organisez les dinosaures en troupeaux! 🦖</p>
        </div>

        <div class="content">
            <div class="intro-box">
                <p><strong>Bienvenue dans le module des tableaux!</strong> Les tableaux sont des collections ordonnées d'éléments. Vous allez apprendre à stocker des dinosaures dans des tableaux, les parcourir, les analyser et en tirer des statistiques. Organisez votre armée de dinosaures! 🦖🦖🦖</p>
            </div>

            <div class="input-section">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="inputTableau">Entrez au minimum 3 nombres séparés par des espaces :</label>
                        <input type="text" id="inputTableau" name="chaine" value="<%= request.getParameter("chaine") != null ? request.getParameter("chaine") : "" %>" placeholder="Ex: 5 12 8 -3 15">
                    </div>
                    <input type="submit" value="Analyser le troupeau 🦖">
                </form>
            </div>

            <% String chaine = request.getParameter("chaine"); %>
                
            <% if (chaine != null && !chaine.trim().isEmpty()) { %>
                <% String[] tableauDeChiffres = chaine.trim().split("\\s+"); %>
                <% if (tableauDeChiffres.length < 3) { %>
                    <div class="result-section error-box">
                        <p><strong>⚠ Erreur :</strong> Vous avez besoin d'au moins 3 dinosaures! Saisissez plus de nombres! 🦖</p>
                    </div>
                <% } else { %>

                    <%
                        int[] nombres = new int[tableauDeChiffres.length];
                        for (int i = 0; i < tableauDeChiffres.length; i++) {
                            nombres[i] = Integer.parseInt(tableauDeChiffres[i]);
                        }
                    %>

                    <div class="result-section">
                        <p><strong>✓ Présentation du troupeau :</strong></p>
                        <p>🦖 Vous avez un troupeau de <strong><%= nombres.length %></strong> dinosaures!</p>
                        <p style="margin-top: 10px;">
                            Premier dinosaure (force) : <strong><%= nombres[0] %></strong><br>
                            Deuxième dinosaure (force) : <strong><%= nombres[1] %></strong><br>
                            Troisième dinosaure (force) : <strong><%= nombres[2] %></strong>
                        </p>
                    </div>

                    <div class="exercise-container">
                        <div class="exercise">
                            <h2><span class="exercise-num">1</span> La Force du Premier Dino 💪</h2>
                            <p class="exercise-desc">Calculez le carré de la force du premier dinosaure. Plus c'est élevé, plus il est puissant!</p>
                            <div class="output-box">
                                <% int carrePremier = nombres[0] * nombres[0]; %>
                                <p>🦖 Le carré de la force <%= nombres[0] %> est : <strong><%= carrePremier %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">2</span> Alliance Dino! 🤝</h2>
                            <p class="exercise-desc">Additionnez les forces des deux premiers dinosaures. Ensemble, ils sont plus forts!</p>
                            <div class="output-box">
                                <% int sommeDeux = nombres[0] + nombres[1]; %>
                                <p>🦖 <%= nombres[0] %> + <%= nombres[1] %> = <strong><%= sommeDeux %></strong> (force combinée!)</p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">3</span> Force Totale du Troupeau 🌍</h2>
                            <p class="exercise-desc">Additionnez TOUS les dinosaures. Quel est le pouvoir total du troupeau?</p>
                            <div class="output-box">
                                <%
                                    int sommeTotale = 0;
                                    for (int i = 0; i < nombres.length; i++) {
                                        sommeTotale += nombres[i];
                                    }
                                %>
                                <p>🦖 Force totale de <%= nombres.length %> dinosaures : <strong><%= sommeTotale %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">4</span> Le Dinosaure le Plus Fort 👑</h2>
                            <p class="exercise-desc">Trouvez le dinosaure avec la force maximale. Le roi du troupeau!</p>
                            <div class="output-box">
                                <%
                                    int max = nombres[0];
                                    for (int i = 1; i < nombres.length; i++) {
                                        if (nombres[i] > max) {
                                            max = nombres[i];
                                        }
                                    }
                                %>
                                <p>👑 Le dinosaure le plus fort a une force de : <strong><%= max %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">5</span> Le Dinosaure le Plus Faible 🐣</h2>
                            <p class="exercise-desc">Trouvez le dinosaure avec la force minimale. Le plus jeune du troupeau!</p>
                            <div class="output-box">
                                <%
                                    int min = nombres[0];
                                    for (int i = 1; i < nombres.length; i++) {
                                        if (nombres[i] < min) {
                                            min = nombres[i];
                                        }
                                    }
                                %>
                                <p>🐣 Le dinosaure le plus faible a une force de : <strong><%= min %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">6</span> Le Dinosaure Neutre ⚔️</h2>
                            <p class="exercise-desc">Trouvez celui le plus proche de 0. Les dinosaures neutres sont les plus équilibrés!</p>
                            <div class="output-box">
                                <%
                                    int procheZero = nombres[0];
                                    for (int i = 1; i < nombres.length; i++) {
                                        if (Math.abs(nombres[i]) < Math.abs(procheZero)) {
                                            procheZero = nombres[i];
                                        }
                                    }
                                %>
                                <p>⚔️ Le dinosaure le plus proche de 0 (équilibre parfait) : <strong><%= procheZero %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">7</span> Le Dinosaure Vraiment Neutre 🧘</h2>
                            <p class="exercise-desc">Même chose, mais en cas d'égalité (ex: -5 et 5), on choisit le positif. Plus zen!</p>
                            <div class="output-box">
                                <%
                                    int procheZeroV2 = nombres[0];
                                    for (int i = 1; i < nombres.length; i++) {
                                        int absCourant = Math.abs(nombres[i]);
                                        int absProche = Math.abs(procheZeroV2);
                                        
                                        if (absCourant < absProche) {
                                            procheZeroV2 = nombres[i];
                                        } else if (absCourant == absProche) {
                                            if (nombres[i] > procheZeroV2) {
                                                procheZeroV2 = nombres[i];
                                            }
                                        }
                                    }
                                %>
                                <p>🧘 Le dinosaure vraiment zen (positif en cas d'égalité) : <strong><%= procheZeroV2 %></strong></p>
                            </div>
                        </div>
                    </div>

                <% } %>
            <% } else { %>
                <div class="intro-box" style="background: #e3f2fd; border-left-color: #2196F3;">
                    <p><strong>💡 Conseil:</strong> Saisissez au moins 3 nombres pour créer un troupeau! Essayez des nombres positifs, négatifs et zéro!</p>
                </div>
            <% } %>

            <div class="back-link">
                <a href="index.html">← Retour à l'accueil</a>
            </div>
        </div>

        <div class="footer">
            💡 Les tableaux sont parfaits pour stocker et analyser des collections de dinosaures!
        </div>
    </div>
</body>
</html>
