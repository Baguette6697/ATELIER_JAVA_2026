<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercices sur les Chaînes de Caractères</title>
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
            word-break: break-word;
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
            <h1>📝 Exercices sur les Chaînes</h1>
            <p>Manipulez le texte comme les dinosaures! 🦖</p>
        </div>

        <div class="content">
            <div class="intro-box">
                <p><strong>Bienvenue!</strong> Les chaînes de caractères sont partout. Vous allez apprendre à mesurer, extraire, inverser et analyser du texte. Chaque caractère est un petit dinosaure dans une armée! 🦖🦖🦖</p>
            </div>

            <div class="input-section">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="inputChaine">Votre phrase (minimum 6 caractères) :</label>
                        <input type="text" id="inputChaine" name="chaine" value="<%= request.getParameter("chaine") != null ? request.getParameter("chaine") : "" %>" placeholder="Ex: Bonjour les dinosaures!">
                    </div>
                    <input type="submit" value="Analyser le texte 📝">
                </form>
            </div>

            <% String chaine = request.getParameter("chaine"); %>
                
            <% if (chaine != null && !chaine.isEmpty()) { %>
                <% if (chaine.length() < 6) { %>
                    <div class="result-section error-box">
                        <p><strong>⚠ Erreur :</strong> Les dinosaures exigent au moins 6 caractères! 🦖</p>
                    </div>
                <% } else { %>

                    <div class="result-section">
                        <p><strong>✓ Analyse de base :</strong></p>
                        <% int longueurChaine = chaine.length(); %>
                        <p>🦖 Votre armée compte <strong><%= longueurChaine %></strong> dinosaures (caractères)</p>
                        <% char caractereExtrait = chaine.charAt(2); %>
                        <p>🦖 Le 3ème dinosaure est : <strong><%= caractereExtrait %></strong></p>
                        <% String sousChaine = chaine.substring(2, Math.min(6, chaine.length())); %>
                        <p>🦖 Une sous-armée (3ème au 6ème) : <strong><%= sousChaine %></strong></p>
                        <% int position = chaine.toLowerCase().indexOf('e'); %>
                        <p>🦖 Première lettre 'e' à la position : <strong><%= position >= 0 ? position : "introuvable!" %></strong></p>
                    </div>

                    <div class="exercise-container">
                        <div class="exercise">
                            <h2><span class="exercise-num">1</span> L'invasion des petits E 🦗</h2>
                            <p class="exercise-desc">Comptez les 'e' (minuscules et majuscules).</p>
                            <div class="output-box">
                                <%
                                    int nbE = 0;
                                    for (int i = 0; i < chaine.length(); i++) {
                                        if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') nbE++;
                                    }
                                %>
                                <p>🦗 Nombre de 'e' : <strong><%= nbE %></strong> crickets!</p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">2</span> Armée Verticale 📊</h2>
                            <p class="exercise-desc">Chaque caractère sur une nouvelle ligne!</p>
                            <div class="output-box">
                                <%
                                    for (int i = 0; i < chaine.length(); i++) {
                                        out.print("🦖 " + chaine.charAt(i) + "<br>");
                                    }
                                %>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">3</span> Escadrons 🎖️</h2>
                            <p class="exercise-desc">Chaque espace = saut de ligne. Les dinosaures se regroupent!</p>
                            <div class="output-box">
                                <%
                                    for (int i = 0; i < chaine.length(); i++) {
                                        char c = chaine.charAt(i);
                                        if (c == ' ') {
                                            out.print("<br>--- ESCADRON ---<br>");
                                        } else {
                                            out.print(c);
                                        }
                                    }
                                %>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">4</span> Alternants 🔄</h2>
                            <p class="exercise-desc">Une lettre sur deux. Les dinosaures avancent par paires!</p>
                            <div class="output-box">
                                <p><strong>
                                    <%
                                        for (int i = 0; i < chaine.length(); i += 2) {
                                            out.print(chaine.charAt(i));
                                        }
                                    %>
                                </strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">5</span> Retraite 🔙</h2>
                            <p class="exercise-desc">Le texte à l'envers! Les dinosaures battent en retraite!</p>
                            <div class="output-box">
                                <p><strong>
                                    <%
                                        for (int i = chaine.length() - 1; i >= 0; i--) {
                                            out.print(chaine.charAt(i));
                                        }
                                    %>
                                </strong></p>
                            </div>
                        </div>

                        <div class="exercise">
                            <h2><span class="exercise-num">6</span> Classification 📋</h2>
                            <p class="exercise-desc">Voyelles vs Consonnes. Chaque type de dinosaure a son rôle!</p>
                            <div class="output-box">
                                <%
                                    int voyelles = 0, consonnes = 0;
                                    String chaineMinuscule = chaine.toLowerCase();
                                    for (int i = 0; i < chaineMinuscule.length(); i++) {
                                        char c = chaineMinuscule.charAt(i);
                                        if (c >= 'a' && c <= 'z') {
                                            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'y') {
                                                voyelles++;
                                            } else {
                                                consonnes++;
                                            }
                                        }
                                    }
                                %>
                                <ul style="list-style: none; padding: 0;">
                                    <li>🎤 <strong>Voyelles (chanteurs):</strong> <%= voyelles %></li>
                                    <li>🎺 <strong>Consonnes (musiciens):</strong> <%= consonnes %></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                <% } %>
            <% } else { %>
                <div class="intro-box" style="background: #e3f2fd; border-left-color: #2196F3;">
                    <p><strong>💡 Conseil:</strong> Entrez une phrase pour voir les dinosaures s'organiser!</p>
                </div>
            <% } %>

            <div class="back-link">
                <a href="index.html">← Retour à l'accueil</a>
            </div>
        </div>

        <div class="footer">
            💡 Les chaînes sont des tableaux de lettres - manipulez-les avec sagesse!
        </div>
    </div>
</body>
</html>
