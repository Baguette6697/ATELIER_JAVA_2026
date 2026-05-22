<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercices sur les Boucles</title>
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
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: radial-gradient(circle at 10% 20%, rgba(52, 78, 65, 0.3) 0%, transparent 50%);
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
        .input-section form { display: flex; gap: 15px; flex-wrap: wrap; align-items: flex-end; }
        .input-section label { font-weight: 600; color: #1b4332; }
        .input-section input[type="text"] {
            padding: 10px 15px;
            border: 2px solid #40916c;
            border-radius: 8px;
            font-size: 1em;
            transition: border-color 0.3s;
        }
        .input-section input[type="text"]:focus {
            outline: none;
            border-color: #1b4332;
            background-color: #e8f5e9;
        }
        .input-section input[type="submit"] {
            background: linear-gradient(135deg, #40916c 0%, #2d6a4f 100%);
            color: #ffd60a;
            padding: 10px 30px;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s;
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
            font-size: 0.9em;
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
            padding: 20px;
            border-radius: 8px;
            font-family: 'Courier New', monospace;
            color: #1b4332;
            overflow-x: auto;
            line-height: 1.6;
        }
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
        @media (max-width: 600px) {
            .header { padding: 25px; } .header h1 { font-size: 1.6em; }
            .content { padding: 20px; }
            .input-section form { flex-direction: column; align-items: stretch; }
            .input-section input { width: 100%; }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🔄 Exercices sur les Boucles</h1>
            <p>Maîtrisez les structures itératives dans la jungle!</p>
        </div>

        <div class="dino-gif">
            <img src="https://media.giphy.com/media/5Ntl5KPZQvPiIxP2yw/giphy.gif" alt="Dino">
        </div>

        <div class="content">
            <div class="intro-box">
                <p><strong>Bienvenue dans le module des boucles!</strong> Les boucles sont des structures de contrôle fondamentales en programmation qui vous permettent de répéter un bloc de code plusieurs fois. Dans ce module, vous allez explorer les boucles <code>for</code> imbriquées pour créer des motifs visuels fascinants et résoudre des problèmes mathématiques courants.</p>
            </div>

            <div class="input-section">
                <form action="#" method="post">
                    <label for="inputValeur">Saisir la taille (nombre de lignes/colonnes) :</label>
                    <input type="text" id="inputValeur" name="valeur" placeholder="Ex: 5" required>
                    <input type="submit" value="Afficher les résultats">
                </form>
            </div>

            <% String valeur = request.getParameter("valeur"); %>
            <% if (valeur != null && !valeur.isEmpty()) { %>
                <% try { %>
                    <% int cpt = Integer.parseInt(valeur); %>
                    <% if (cpt > 0 && cpt <= 100) { %>
                        <div class="result-section">
                            <p><strong>✓ Résultats pour une taille de <%= cpt %> :</strong></p>
                        </div>

                        <div class="exercise-container">
                            <div class="exercise">
                                <h2><span class="exercise-num">0</span> Ligne simple</h2>
                                <p class="exercise-desc">Une simple boucle qui affiche une ligne de dinosaures.</p>
                                <div class="output-box"><pre><% for (int i = 1; i <= cpt; i++) { %>🦖<% } %></pre></div>
                            </div>

                            <div class="exercise">
                                <h2><span class="exercise-num">1</span> Le carré de dinosaures</h2>
                                <p class="exercise-desc">Utilisez deux boucles imbriquées pour créer un carré.</p>
                                <div class="output-box">
                                    <%
                                        for (int i = 0; i < cpt; i++) {
                                            for (int j = 0; j < cpt; j++) {
                                                out.print("🦖 ");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <div class="exercise">
                                <h2><span class="exercise-num">2</span> Armée de dinosaures croissante 🦖</h2>
                                <p class="exercise-desc">Créez une armée de dinosaures qui grandit progressivement.</p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            for (int j = 1; j <= i; j++) {
                                                out.print("🦖");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <div class="exercise">
                                <h2><span class="exercise-num">3</span> Retraite des dinosaures 🏃</h2>
                                <p class="exercise-desc">L'inverse du triangle précédent!</p>
                                <div class="output-box">
                                    <%
                                        for (int i = cpt; i >= 1; i--) {
                                            for (int j = 1; j <= i; j++) {
                                                out.print("🦖");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <div class="exercise">
                                <h2><span class="exercise-num">4</span> Formation pyramidale (côté droit)</h2>
                                <p class="exercise-desc">Alignez les dinosaures en pyramide sur la droite.</p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            for (int j = 1; j <= (cpt - i) * 2; j++) {
                                                out.print("&nbsp;");
                                            }
                                            for (int j = 1; j <= i; j++) {
                                                out.print("🦖");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <div class="exercise">
                                <h2><span class="exercise-num">5</span> Sapin de Noël des dinos 🎄</h2>
                                <p class="exercise-desc">Créez un sapin élégant avec les dinosaures (centré).</p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            for (int j = 1; j <= cpt - i; j++) {
                                                out.print("&nbsp;");
                                            }
                                            for (int j = 1; j <= i; j++) {
                                                out.print("🦖");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <div class="exercise">
                                <h2><span class="exercise-num">6</span> Le losange de dinosaures 💎</h2>
                                <p class="exercise-desc">Combinez une armée croissante avec une armée décroissante.</p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            for (int j = 1; j <= (cpt - i) * 2; j++) {
                                                out.print("&nbsp;");
                                            }
                                            for (int j = 1; j <= i; j++) {
                                                out.print("🦖");
                                            }
                                            out.print("<br>");
                                        }
                                        for (int i = cpt; i >= 1; i--) {
                                            for (int j = 1; j <= (cpt - i) * 2; j++) {
                                                out.print("&nbsp;");
                                            }
                                            for (int j = 1; j <= i; j++) {
                                                out.print("🦖");
                                            }
                                            out.print("<br>");
                                        }
                                    %>
                                </div>
                            </div>

                            <div class="exercise">
                                <h2><span class="exercise-num">7</span> Table de reproduction des dinosaures 🦖👨‍👩‍👧‍👦</h2>
                                <p class="exercise-desc">Générez le tableau de reproduction pour les dinosaures.</p>
                                <div class="output-box">
                                    <%
                                        for (int i = 1; i <= cpt; i++) {
                                            out.print("🦖 × " + i + " = " + (cpt * i) + " 🦖s<br>");
                                        }
                                    %>
                                </div>
                            </div>
                        </div>

                    <% } else { %>
                        <div class="result-section" style="background: #ffcccc; border-left-color: #c41e3a;">
                            <p><strong>⚠ Erreur:</strong> Veuillez entrer un nombre entre 1 et 100.</p>
                        </div>
                    <% } %>
                <% } catch (NumberFormatException e) { %>
                    <div class="result-section" style="background: #ffcccc; border-left-color: #c41e3a;">
                        <p><strong>⚠ Erreur:</strong> Veuillez entrer un nombre valide.</p>
                    </div>
                <% } %>
            <% } else { %>
                <div class="intro-box" style="background: #e8f5e9;">
                    <p><strong>💡 Conseil:</strong> Saisissez un nombre entre 1 et 10 pour voir les différents motifs!</p>
                </div>
            <% } %>

            <div class="back-link">
                <a href="index.html">← Retour à l'accueil</a>
            </div>
        </div>

        <div class="footer">
            �� Les boucles permettent aux dinosaures de faire des choses incroyables! 🦕
        </div>
    </div>
</body>
</html>
