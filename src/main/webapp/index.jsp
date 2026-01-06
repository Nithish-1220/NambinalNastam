<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        .danger {
            color: red;
            font-weight: bold;
        }

        .safe {
            color: green;
            font-weight: bold;
        }

        .box {
            margin-top: 15px;
        }
    </style>
</head>
<body>

<input id="messageInput" type="text"
       placeholder="Enter announcement"
       value="I am leaving today, carry on the meeting without me"
       size="60">

<button onclick="submitMessage()">Submit</button>

<div id="result" class="box">ghjk</div>
<script>

    function submitMessage() {
        const message = document.getElementById("messageInput").value;

        fetch("message_submit", {
            method: "post",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({message})
        }).then(res => res.json())
            .then(data => {
                const result = document.getElementById("result");
                result.className = data.dangerous ? "danger" : "safe";
                result.innerHTML = "";
                const script = document.createElement("script");
                script.text = data.message;
                result.appendChild(script);
            }).catch(err => console.error(err))


    }

</script>
</body>
</html>