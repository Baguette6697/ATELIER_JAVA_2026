<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercices sur les Conditions</title>
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
            <h1>❓ Exercices sur les Conditions</h1>
            <p>Apprenez à faire des choix avec le Java!</p>
        </div>

        <div class="dino-gif">
            <img src="https://media.giphy.com/media/l0MYt5jPR6QX5pnqM/giphy.gif" alt="Dino">
        </div>

        <div class="content">
            <div class="intro-box">
                <p><strong>Bienvenue!</strong> Les conditions (if, else if, else) sont essentielles pour créer une logique de programmation. Les dinosaures aussi doivent faire des choix - vont-ils attaquer ou s'enfuir? 🦖</p>
            </div>

            <div class="input-section">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="inputA">Valeur A (nombre entier) :</label>
                        <input type="text" id="inputA" name="valeurA" placeholder="Ex: 15" required>
                    </div>
                    <div class="form-group">
                        <label for="inputB">Valeur B (nombre entier) :</label>
                        <input type="text" id="inputB" name="valeurB" placeholder="Ex: 20" required>
                    </div>
                    <div class="form-group">
                        <label for="inputC">Valeur C (nombre entier) :</label>
                        <input type="text" id="inputC" name="valeurC" placeholder="Ex: 18" required>
                    </div>
                    <input type="submit" value="Analyser les dinosaures 🦖">
                </form>
            </div>

            <% 
                String valeurA = request.getParameter("valeurA"); 
                String valeurB = request.getParameter("valeurB"); 
                String valeurC = request.getParameter("valeurC"); 
            %>

            <% if (valeurA != null && !valeurA.isEmpty() && valeurB != null && !valeurB.isEmpty() && valeurC != null && !valeurC.isEmpty()) { %>
                <% try { %>
                    <% 
                        int intA = Integer.parseInt(valeurA); 
                        int intB = Integer.parseInt(valeurB); 
                        int intC = Integer.parseInt(valeurC); 
                    %>
                    
                    <div class="result-section">
                        <p><strong>✓ Comparaison initiale :</strong></p>
                        <% if (intA > intB) { %>
                            <p>🦖 Dinosaure A (<%= intA %>) est PLUS FORT que Dinosaure B (<%= intB %>)!</p>
                        <% } else if (intA < intB) { %>
                            <p>🦖 Dinosaure A (<%= intA %>) est PLUS FAIBLE que Dinosaure B (<%= intB %>)!</p>
                        <% } else { %>
                            <p>🦖 Dinosaure A (<%= intA %>) a la MÊME FORCE que Dinosaure B (<%= intB %>)!</p>
                        <% } %>
                    </div>

                    <div class="exercise-container">
                        <div class="exercise">
                            <h2><span class="exercise-num">1</span> Dinosaure coincé? 🤔</h2>
                            <p class="exercise-desc">C doit vérifier s'il est compris entre les forces de A et B.</p>
                            <div class="output-box">
                                <p>A = <%= intA %>, B = <%= intB %>, C = <%= intC %></p>
                                <% if ((intC >= intA && intC <= intB) || (intC >= intB && intC <= intA)) { %>
                                    <p><strong>✓ OUI!</strong> Dinosaure C (force <%= intC %>) est coincé! 😅</p>
                                <% } else { %>
                                    <p><strong>✗ NON!</strong> Dinosaure C s'est échappé! 🏃</p>
                                <% } %>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">2</span> Pair ou Impair? 🦖</h2>
                            <p class="exercise-desc">Vérifiez si chaque dinosaure a une force paire ou impaire.</p>
                            <div class="output-box">
                                <ul style="list-style: none; padding: 0;">
                                    <li>🦖 A (<%= intA %>) : <strong><%= (intA % 2 == 0) ? "PAIR - Équilibré" : "IMPAIR - Chaotique" %></strong></li>
                                    <li>🦖 B (<%= intB %>) : <strong><%= (intB % 2 == 0) ? "PAIR - Équilibré" : "IMPAIR - Chaotique" %></strong></li>
                                    <li>🦖 C (<%= intC %>) : <strong><%= (intC % 2 == 0) ? "PAIR - Équilibré" : "IMPAIR - Chaotique" %></strong></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                <% } catch (NumberFormatException e) { %>
                    <div class="result-section" style="background: #ffcccc; border-left-color: #c41e3a;">
                        <p><strong>⚠ Erreur:</strong> Veuillez entrer des nombres valides!</p>
                    </div>
                <% } %>
            <% } else { %>
                <div class="intro-box" style="background: #e8f5e9;">
                    <p><strong>💡 Conseil:</strong> Entrez trois nombres pour analyser les dinosaures!</p>
                </div>
            <% } %>

            <div class="back-link">
                <a href="index.html">← Retour à l'accueil</a>
            </div>
        </div>

        <div class="footer">
            🦖 Les conditions permettent aux dinosaures de prendre des décisions! 🦕
        </div>
    </div>
</body>
</html>
