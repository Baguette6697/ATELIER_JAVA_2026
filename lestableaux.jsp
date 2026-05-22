<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercices sur les Tableaux</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1a4d2e 0%, #2d6a4f 50%, #40916c 100%);
            background-attachment: fixed;
            min-height: 100vh;
            padding: 30px 20px;
            position: relative;
        }
        body::before {
            content: "";
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background-image: radial-gradient(circle at 80% 80%, rgba(40, 167, 69, 0.2) 0%, transparent 50%);
            pointer-events: none;
            z-index: 0;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            background: #f5f9f7;
            border-radius: 15px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
            overflow: hidden;
            position: relative;
            z-index: 1;
            border: 3px solid #2d6a4f;
        }
        .header {
            background: linear-gradient(135deg, #1b4332 0%, #2d6a4f 50%, #40916c 100%);
            color: #ffd60a;
            padding: 40px;
            text-align: center;
            border-bottom: 4px solid #ffd60a;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        .header h1 {
            font-size: 2.2em;
            margin-bottom: 10px;
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }
        .header p { opacity: 0.95; font-size: 1em; }
        .content { padding: 40px; }
        .intro-box {
            background: #c7f0d8;
            border-left: 4px solid #2d6a4f;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 30px;
            color: #1b4332;
        }
        .intro-box p { line-height: 1.6; }
        .input-section {
            background: linear-gradient(135deg, #d8f3dc 0%, #b7e4c7 100%);
            padding: 25px;
            border-radius: 10px;
            margin-bottom: 30px;
            border: 2px solid #40916c;
        }
        .input-section form { display: grid; gap: 15px; }
        .form-group { display: flex; flex-direction: column; gap: 8px; }
        .input-section label { font-weight: 600; color: #1b4332; }
        .input-section input[type="text"] {
            padding: 10px 15px;
            border: 2px solid #40916c;
            border-radius: 8px;
            font-size: 1em;
        }
        .input-section input[type="text"]:focus {
            outline: none;
            border-color: #1b4332;
            background-color: #e8f5e9;
        }
        .input-section input[type="submit"] {
            background: linear-gradient(135deg, #40916c 0%, #2d6a4f 100%);
            color: #ffd60a;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s;
            align-self: flex-start;
            border: 2px solid #1b4332;
        }
        .input-section input[type="submit"]:hover { transform: scale(1.05); }
        .result-section {
            background: #fff3cd;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
            border-left: 4px solid #40916c;
        }
        .exercise-container { display: grid; gap: 30px; }
        .exercise {
            background: linear-gradient(135deg, #d8f3dc 0%, #b7e4c7 100%);
            border: 2px solid #40916c;
            border-radius: 10px;
            padding: 25px;
            transition: all 0.3s ease;
        }
        .exercise:hover {
            border-color: #1b4332;
            box-shadow: 0 8px 20px rgba(27, 67, 50, 0.15);
        }
        .exercise h2 {
            color: #1b4332;
            font-size: 1.4em;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .exercise-num {
            background: linear-gradient(135deg, #40916c 0%, #2d6a4f 100%);
            color: #ffd60a;
            width: 35px;
            height: 35px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
        }
        .exercise-desc {
            color: #2d6a4f;
            margin-bottom: 15px;
            line-height: 1.6;
            font-size: 0.95em;
        }
        .output-box {
            background: white;
            border: 2px solid #40916c;
            padding: 15px;
            border-radius: 8px;
            color: #1b4332;
        }
        .error-box { background: #ffcccc; border-left-color: #c41e3a !important; }
        .dino-gif { text-align: center; margin: 20px 0; }
        .dino-gif img { max-width: 150px; height: auto; border-radius: 10px; }
        .back-link { margin-top: 30px; text-align: center; }
        .back-link a {
            display: inline-block;
            background: linear-gradient(135deg, #40916c 0%, #2d6a4f 100%);
            color: #ffd60a;
            padding: 12px 30px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            transition: transform 0.3s;
            border: 2px solid #1b4332;
        }
        .back-link a:hover { transform: scale(1.05); }
        .footer {
            background: linear-gradient(135deg, #1b4332 0%, #2d6a4f 100%);
            padding: 20px 40px;
            text-align: center;
            color: #ffd60a;
            font-size: 0.85em;
            border-top: 3px solid #40916c;
        }
        @media (max-width: 600px) { .header { padding: 25px; } .header h1 { font-size: 1.6em; } .content { padding: 20px; } }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>📊 Exercices sur les Tableaux</h1>
            <p>Organisez les dinosaures en troupeaux! 🦖</p>
        </div>

        <div class="dino-gif">
            <img src="https://media.giphy.com/media/J8FZIm9HoBo4vGKZvz/giphy.gif" alt="Dino">
        </div>

        <div class="content">
            <div class="intro-box">
                <p><strong>Bienvenue!</strong> Les tableaux sont des collections ordonnées d'éléments. Vous allez apprendre à stocker des dinosaures dans des tableaux, les parcourir, les analyser et en tirer des statistiques. Organisez votre armée! 🦖🦖🦖</p>
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
                        <p><strong>⚠ Erreur :</strong> Vous avez besoin d'au moins 3 dinosaures! 🦖</p>
                    </div>
                <% } else { %>

                    <% int[] nombres = new int[tableauDeChiffres.length];
                        for (int i = 0; i < tableauDeChiffres.length; i++) {
                            nombres[i] = Integer.parseInt(tableauDeChiffres[i]);
                        }
                    %>

                    <div class="result-section">
                        <p><strong>✓ Présentation du troupeau :</strong></p>
                        <p>🦖 Vous avez un troupeau de <strong><%= nombres.length %></strong> dinosaures!</p>
                    </div>

                    <div class="exercise-container">
                        <div class="exercise">
                            <h2><span class="exercise-num">1</span> Force du Premier Dino 💪</h2>
                            <p class="exercise-desc">Calculez le carré de la force du premier dinosaure.</p>
                            <div class="output-box">
                                <% int carrePremier = nombres[0] * nombres[0]; %>
                                <p>🦖 <%= nombres[0] %>² = <strong><%= carrePremier %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">2</span> Alliance Dino! 🤝</h2>
                            <p class="exercise-desc">Additionnez les deux premiers dinosaures.</p>
                            <div class="output-box">
                                <% int sommeDeux = nombres[0] + nombres[1]; %>
                                <p>🦖 <%= nombres[0] %> + <%= nombres[1] %> = <strong><%= sommeDeux %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">3</span> Force Totale 🌍</h2>
                            <p class="exercise-desc">Additionnez TOUS les dinosaures!</p>
                            <div class="output-box">
                                <% int sommeTotale = 0;
                                    for (int i = 0; i < nombres.length; i++) {
                                        sommeTotale += nombres[i];
                                    }
                                %>
                                <p>🦖 Force totale : <strong><%= sommeTotale %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">4</span> Dinosaure le Plus Fort 👑</h2>
                            <p class="exercise-desc">Trouvez le roi du troupeau!</p>
                            <div class="output-box">
                                <% int max = nombres[0];
                                    for (int i = 1; i < nombres.length; i++) {
                                        if (nombres[i] > max) max = nombres[i];
                                    }
                                %>
                                <p>👑 Le plus fort : <strong><%= max %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">5</span> Dinosaure le Plus Faible 🐣</h2>
                            <p class="exercise-desc">Trouvez le plus jeune du troupeau!</p>
                            <div class="output-box">
                                <% int min = nombres[0];
                                    for (int i = 1; i < nombres.length; i++) {
                                        if (nombres[i] < min) min = nombres[i];
                                    }
                                %>
                                <p>🐣 Le plus faible : <strong><%= min %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">6</span> Dinosaure Neutre ⚔️</h2>
                            <p class="exercise-desc">Trouvez celui le plus proche de 0!</p>
                            <div class="output-box">
                                <% int procheZero = nombres[0];
                                    for (int i = 1; i < nombres.length; i++) {
                                        if (Math.abs(nombres[i]) < Math.abs(procheZero)) {
                                            procheZero = nombres[i];
                                        }
                                    }
                                %>
                                <p>⚔️ Le plus équilibré : <strong><%= procheZero %></strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">7</span> Dinosaure Vraiment Zen 🧘</h2>
                            <p class="exercise-desc">Même chose, mais positif en cas d'égalité!</p>
                            <div class="output-box">
                                <% int procheZeroV2 = nombres[0];
                                    for (int i = 1; i < nombres.length; i++) {
                                        int absCourant = Math.abs(nombres[i]);
                                        int absProche = Math.abs(procheZeroV2);
                                        
                                        if (absCourant < absProche) {
                                            procheZeroV2 = nombres[i];
                                        } else if (absCourant == absProche && nombres[i] > procheZeroV2) {
                                            procheZeroV2 = nombres[i];
                                        }
                                    }
                                %>
                                <p>🧘 Le plus zen : <strong><%= procheZeroV2 %></strong></p>
                            </div>
                        </div>
                    </div>

                <% } %>
            <% } else { %>
                <div class="intro-box" style="background: #e8f5e9;">
                    <p><strong>💡 Conseil:</strong> Saisissez au moins 3 nombres pour créer un troupeau!</p>
                </div>
            <% } %>

            <div class="back-link">
                <a href="index.html">← Retour à l'accueil</a>
            </div>
        </div>

        <div class="footer">
            🦖 Les tableaux permettent de stocker et analyser des armées de dinosaures! 🦕
        </div>
    </div>
</body>
</html>
