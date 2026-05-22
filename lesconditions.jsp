<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercices sur les Conditions</title>
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
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>❓ Exercices sur les Conditions</h1>
            <p>Apprenez à faire des choix avec le Java - et aux dinosaures aussi!</p>
        </div>

        <div class="content">
            <div class="intro-box">
                <p>
                    <strong>Bienvenue dans le module des conditions!</strong> Les conditions (if, else if, else) sont essentielles pour créer une logique 
                    de programmation. Vous allez apprendre à comparer des nombres, vérifier des propriétés mathématiques, et prendre des décisions basées 
                    sur les données. Les dinosaures aussi doivent faire des choix - vont-ils attaquer ou s'enfuir? 🦖
                </p>
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
                <% try { %>
                   <%-- Conversion des valeurs en entiers pour les calculs --%>
                    <% 
                        int intA = Integer.parseInt(valeurA); 
                        int intB = Integer.parseInt(valeurB); 
                        int intC = Integer.parseInt(valeurC); 
                    %>
                    
                    <div class="result-section">
                        <p><strong>✓ Comparaison initiale (Dinosaures A vs B) :</strong></p>
                        <% if (intA > intB) { %>
                            <p>🦖 Dinosaure A (<%= intA %>) est PLUS FORT que Dinosaure B (<%= intB %>). A gagnerait le duel!</p>
                        <% } else if (intA < intB) { %>
                            <p>🦖 Dinosaure A (<%= intA %>) est PLUS FAIBLE que Dinosaure B (<%= intB %>). B gagnerait le duel!</p>
                        <% } else { %>
                            <p>🦖 Dinosaure A (<%= intA %>) a la MÊME FORCE que Dinosaure B (<%= intB %>). Égalité parfaite!</p>
                        <% } %>
                    </div>

                    <div class="exercise-container">
                        <!-- Exercice 1: C entre A et B -->
                        <div class="exercise">
                            <h2><span class="exercise-num">1</span> Le Dinosaure C est-il coincé entre A et B? 🤔</h2>
                            <p class="exercise-desc">
                                C doit vérifier s'il est compris entre les forces de A et B. Cette condition teste si une valeur 
                                se situe entre deux autres, peu importe l'ordre. Utile pour les plages de valeurs!
                            </p>
                            <div class="output-box">
                                <p>A = <%= intA %>, B = <%= intB %>, C = <%= intC %></p>
                                <% 
                                    if ((intC >= intA && intC <= intB) || (intC >= intB && intC <= intA)) { 
                                %>
                                    <p><strong>✓ OUI!</strong> Dinosaure C (force <%= intC %>) est compris entre A et B. Il est coincé! 😅</p>
                                <% } else { %>
                                    <p><strong>✗ NON!</strong> Dinosaure C (force <%= intC %>) s'est échappé! Il ne fait pas partie de la plage A-B. 🏃</p>
                                <% } %>
                            </div>
                        </div>

                        <!-- Exercice 2: Pair ou Impair -->
                        <div class="exercise">
                            <h2><span class="exercise-num">2</span> Pair ou Impair? Les Préférences des Dinos 🦖</h2>
                            <p class="exercise-desc">
                                Vérifiez si chaque dinosaure a une force paire ou impaire. Utilisez l'opérateur modulo (%) pour déterminer le reste 
                                de la division par 2. Les dinosaures pairs sont plus équilibrés, les impairs plus chaotiques!
                            </p>
                            <div class="output-box">
                                <ul style="list-style: none; padding: 0;">
                                    <li style="margin-bottom: 10px;">
                                        🦖 Dinosaure A (force <%= intA %>) : 
                                        <strong><%= (intA % 2 == 0) ? "✓ PAIR - Équilibré" : "✗ IMPAIR - Chaotique" %></strong>
                                    </li>
                                    <li style="margin-bottom: 10px;">
                                        🦖 Dinosaure B (force <%= intB %>) : 
                                        <strong><%= (intB % 2 == 0) ? "✓ PAIR - Équilibré" : "✗ IMPAIR - Chaotique" %></strong>
                                    </li>
                                    <li style="margin-bottom: 10px;">
                                        🦖 Dinosaure C (force <%= intC %>) : 
                                        <strong><%= (intC % 2 == 0) ? "✓ PAIR - Équilibré" : "✗ IMPAIR - Chaotique" %></strong>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                <% } catch (NumberFormatException e) { %>
                    <div class="result-section" style="background: #ffebee; border-left-color: #f44336;">
                        <p><strong>⚠ Erreur:</strong> Les dinosaures sont confus! Veuillez entrer des nombres valides.</p>
                    </div>
                <% } %>
            <% } else { %>
                <div class="intro-box" style="background: #e3f2fd; border-left-color: #2196F3;">
                    <p>
                        <strong>💡 Conseil:</strong> Saisissez trois nombres pour voir comment les dinosaures se comparent et font des choix logiques. 
                        Essayez différentes valeurs pour explorer toutes les conditions!
                    </p>
                </div>
            <% } %>

            <div class="back-link">
                <a href="index.html">← Retour à l'accueil</a>
            </div>
        </div>

        <div class="footer">
            💡 Les conditions permettent aux programmes (et aux dinosaures) de prendre des décisions intelligentes!
        </div>
    </div>
</body>
</html>
