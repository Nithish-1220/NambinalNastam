<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>JSP - Hello World</title>--%>
<%--    <style>--%>
<%--        body{--%>
<%--            background-image: url("https://wallpapercave.com/wp/wp486145.webp");--%>
<%--            background-repeat: no-repeat;--%>
<%--            background-size: cover;--%>
<%--        }--%>
<%--        .glass {--%>
<%--            background: rgba(255, 255, 255, 0.15);--%>
<%--            backdrop-filter: blur(15px);--%>
<%--            -webkit-backdrop-filter: blur(15px);--%>

<%--            border-radius: 12px;--%>
<%--            border: 1px solid rgba(255,255,255,0.3);--%>
<%--            box-shadow: 0 8px 32px rgba(0,0,0,0.25);--%>
<%--            color: white;--%>
<%--        }--%>


<%--        .container {--%>
<%--            min-height: 100vh;--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            align-items: center;--%>
<%--            justify-content: center;--%>
<%--            gap: 15px;--%>
<%--        }--%>


<%--        .input-box {--%>
<%--            width: 320px;--%>
<%--            height: 120px;--%>
<%--            padding: 12px;--%>
<%--            font-size: 14px;--%>
<%--            outline: none;--%>
<%--        }--%>

<%--        .result-box {--%>
<%--            width: 320px;--%>
<%--            min-height: 120px;--%>
<%--            padding: 12px;--%>
<%--        }--%>

<%--        button {--%>
<%--            padding: 10px 18px;--%>
<%--            border-radius: 8px;--%>
<%--            border: none;--%>
<%--            cursor: pointer;--%>

<%--            background: rgba(0,0,0,0.6);--%>
<%--            color: white;--%>
<%--            font-weight: bold;--%>
<%--        }--%>
<%--        button:hover {--%>
<%--            background: rgba(0,0,0,0.8);--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="container">--%>

<%--    <input id="messageInput"--%>
<%--           class="glass input-box"--%>
<%--           type="text"--%>
<%--           placeholder="Enter announcement"--%>
<%--           value="I am leaving today, carry on the meeting without me">--%>

<%--    <button onclick="submitMessage()">Submit</button>--%>

<%--    <div id="result" class="glass result-box">--%>
<%--        Result will appear here--%>
<%--    </div>--%>

<%--</div>--%>

<%--&lt;%&ndash;<iframe&ndash;%&gt;--%>
<%--&lt;%&ndash;        id="xssFrame"&ndash;%&gt;--%>
<%--&lt;%&ndash;        class="box"&ndash;%&gt;--%>
<%--&lt;%&ndash;        sandbox="allow-scripts allow-modals"&ndash;%&gt;--%>
<%--&lt;%&ndash;        style="width:100%; height:150px;">&ndash;%&gt;--%>
<%--&lt;%&ndash;</iframe>&ndash;%&gt;--%>


<%--<script>--%>

<%--    function submitMessage() {--%>
<%--        const message = document.getElementById("messageInput").value;--%>

<%--        fetch("message_submit", {--%>
<%--            method: "post",--%>
<%--            headers: {--%>
<%--                "Content-Type": "application/json"--%>
<%--            },--%>
<%--            body: JSON.stringify({message})--%>
<%--        }).then(res => res.json())--%>
<%--            .then(data => {--%>
<%--                &lt;%&ndash;                const frame = document.getElementById("xssFrame");&ndash;%&gt;--%>
<%--                &lt;%&ndash;                frame.srcdoc = `&ndash;%&gt;--%>
<%--                &lt;%&ndash;<!DOCTYPE html>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<html>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<head>&ndash;%&gt;--%>
<%--                &lt;%&ndash;  <meta charset="UTF-8">&ndash;%&gt;--%>
<%--                &lt;%&ndash;</head>&ndash;%&gt;--%>
<%--                &lt;%&ndash;<body>&ndash;%&gt;--%>
<%--                &lt;%&ndash;${data.message}&ndash;%&gt;--%>
<%--                &lt;%&ndash;</body>&ndash;%&gt;--%>
<%--                &lt;%&ndash;</html>&ndash;%&gt;--%>
<%--                &lt;%&ndash;`;&ndash;%&gt;--%>

<%--                const result = document.getElementById("result");--%>
<%--                result.innerHTML = data.message;--%>

<%--            }).catch(err => console.error(err))--%>


<%--    }--%>

<%--</script>--%>
<%--</body>--%>
<%--</html>--%>

<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>XSS Security Lab</title>--%>

<%--    <style>--%>
<%--        /* ===== RESET ===== */--%>
<%--        * {--%>
<%--            box-sizing: border-box;--%>
<%--            font-family: "Inter", system-ui, sans-serif;--%>
<%--        }--%>

<%--        body {--%>
<%--            margin: 0;--%>
<%--            min-height: 100vh;--%>
<%--            background: #f5f7fb;   /* soft white */--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            justify-content: center;--%>
<%--        }--%>


<%--        /* ===== GLASS CARD ===== */--%>
<%--        .card {--%>
<%--            width: 420px;--%>
<%--            padding: 22px;--%>
<%--            background: rgba(255, 255, 255, 0.12);--%>
<%--            backdrop-filter: blur(16px);--%>
<%--            -webkit-backdrop-filter: blur(16px);--%>
<%--            border-radius: 14px;--%>
<%--            border: 1px solid rgba(255,255,255,0.25);--%>
<%--            box-shadow: 0 12px 40px rgba(0,0,0,0.35);--%>
<%--            color: black;--%>
<%--        }--%>

<%--        /* ===== HEADER ===== */--%>
<%--        .title {--%>
<%--            font-size: 20px;--%>
<%--            font-weight: 700;--%>
<%--            margin-bottom: 6px;--%>
<%--        }--%>

<%--        .subtitle {--%>
<%--            font-size: 13px;--%>
<%--            opacity: 0.8;--%>
<%--            margin-bottom: 16px;--%>
<%--        }--%>

<%--        /* ===== INPUT ===== */--%>
<%--        .input {--%>
<%--            width: 100%;--%>
<%--            height: 90px;--%>
<%--            padding: 10px;--%>
<%--            resize: none;--%>
<%--            background: rgba(0,0,0,0.35);--%>
<%--            border: 1px solid rgba(255,255,255,0.2);--%>
<%--            border-radius: 10px;--%>
<%--            color: white;--%>
<%--            outline: none;--%>
<%--            font-size: 14px;--%>
<%--        }--%>

<%--        .input::placeholder {--%>
<%--            color: rgba(255,255,255,0.6);--%>
<%--        }--%>

<%--        /* ===== BUTTON ===== */--%>
<%--        .btn {--%>
<%--            width: 100%;--%>
<%--            margin-top: 14px;--%>
<%--            padding: 11px;--%>
<%--            border-radius: 10px;--%>
<%--            border: none;--%>
<%--            background: linear-gradient(135deg, #00c6ff, #0072ff);--%>
<%--            color: white;--%>
<%--            font-weight: 700;--%>
<%--            cursor: pointer;--%>
<%--        }--%>

<%--        .btn:hover {--%>
<%--            opacity: 0.9;--%>
<%--        }--%>

<%--        /* ===== RESULT ===== */--%>
<%--        .result {--%>
<%--            margin-top: 16px;--%>
<%--            padding: 12px;--%>
<%--            min-height: 70px;--%>
<%--            background: rgba(0,0,0,0.4);--%>
<%--            border-radius: 10px;--%>
<%--            font-size: 14px;--%>
<%--            border-left: 4px solid #ff4d4d;--%>
<%--        }--%>

<%--        .label {--%>
<%--            font-size: 12px;--%>
<%--            opacity: 0.7;--%>
<%--            margin-bottom: 6px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>

<%--<body>--%>

<%--<div class="card">--%>

<%--    <div class="title">XSS Security Lab</div>--%>
<%--    <div class="subtitle">Client-side script injection playground</div>--%>

<%--    <div class="label">Payload Input</div>--%>
<%--    <textarea id="messageInput" class="input"--%>
<%--              placeholder="Try: &lt;img src=x onerror=alert(1)&gt;"></textarea>--%>

<%--    <button class="btn" onclick="submitMessage()">Execute Payload</button>--%>

<%--    <div class="label" style="margin-top:14px">Rendered Output</div>--%>
<%--    <div id="result" class="result">--%>
<%--        Waiting for payload...--%>
<%--    </div>--%>

<%--</div>--%>

<%--<script>--%>
<%--    function submitMessage() {--%>
<%--        const message = document.getElementById("messageInput").value;--%>

<%--        fetch("message_submit", {--%>
<%--            method: "POST",--%>
<%--            headers: {"Content-Type": "application/json"},--%>
<%--            body: JSON.stringify({message})--%>
<%--        })--%>
<%--            .then(res => res.json())--%>
<%--            .then(data => {--%>
<%--                // INTENTIONALLY VULNERABLE (LAB MODE)--%>
<%--                document.getElementById("result").innerHTML = data.message;--%>
<%--            });--%>
<%--    }--%>
<%--</script>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Internal Announcements</title>

    <style>
        /* ===== GLOBAL RESET ===== */
        * {
            box-sizing: border-box;
            font-family: system-ui, -apple-system, BlinkMacSystemFont,
            "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
        }

        body {
            margin: 0;
            min-height: 100vh;
            background: #f1f3f4; /* Google-style light gray */
            display: flex;
            align-items: center;
            justify-content: center;
            color: #202124;
        }

        /* ===== MAIN CONTAINER ===== */
        .container {
            width: 860px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.08);
            padding: 24px 28px 28px;
        }

        /* ===== HEADER ===== */
        .header {
            border-bottom: 1px solid #e0e0e0;
            padding-bottom: 14px;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 20px;
            font-weight: 600;
            margin: 0;
        }

        .header p {
            margin-top: 6px;
            font-size: 13px;
            color: #5f6368;
        }

        /* ===== INPUT ===== */
        .input-box {
            width: 100%;
            height: 90px;
            padding: 12px 14px;
            font-size: 14px;
            border-radius: 8px;
            border: 1px solid #dadce0;
            outline: none;
            resize: none;
        }

        .input-box:focus {
            border-color: #1a73e8;
            box-shadow: 0 0 0 2px rgba(26,115,232,0.15);
        }

        /* ===== BUTTON ===== */
        button {
            margin-top: 12px;
            padding: 8px 18px;
            border-radius: 6px;
            border: none;
            background: #1a73e8;
            color: white;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
        }

        button:hover {
            background: #1558b0;
        }

        /* ===== RESULT / ANNOUNCEMENT ===== */
        .result-box {
            margin-top: 22px;
            padding: 16px;
            min-height: 80px;
            background: #f8f9fa;
            border-radius: 10px;
            border: 1px solid #e0e0e0;
            font-size: 14px;
            line-height: 1.5;
        }

        /* ===== FOOTER NOTE ===== */
        .footer {
            margin-top: 18px;
            font-size: 12px;
            color: #5f6368;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="header">
        <h1>Internal Announcements</h1>
        <p>Visible to authenticated employees only</p>
    </div>

    <input id="messageInput"
           class="input-box"
           type="text"
           placeholder="Post an internal update"
           value="I am leaving today, carry on the meeting without me">

    <button onclick="submitMessage()">Post Announcement</button>

    <div id="result" class="result-box">
        Announcements will appear here
    </div>

    <div class="footer">
        Internal system • Improper input handling may introduce security risks
    </div>

</div>

<script>
    function submitMessage() {
        const message = document.getElementById("messageInput").value;

        fetch("message_submit", {
            method: "post",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({ message })
        })
            .then(res => res.json())
            .then(data => {
                // INTENTIONALLY VULNERABLE (LAB PURPOSE)
                const result = document.getElementById("result");
                result.innerHTML = data.message;
            })
            .catch(err => console.error(err));
    }
</script>

</body>
</html>
