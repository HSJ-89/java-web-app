<%@ page import="org.json.JSONObject" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello DEVOPS World</title>
    <style>
        /* Modern Warm Gradient Background */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(153deg, #000000, #443a3a, #000000);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
            color: #fff;
        }

        h2 {
            font-size: 3em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        p {
            font-size: 1.2em;
            max-width: 600px;
            line-height: 1.6;
        }

        .demo-box {
            background-color: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            padding: 20px 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            margin-top: 20px;
        }

        .demo-box p {
            color: #fff;
        }
    </style>
</head>
<body>
    <h2>Hello DEVOPS World!</h2>
    <p>Welcome to this demo JSP page. Explore how JSP can integrate with modern HTML and CSS for dynamic and visually appealing web pages.</p>
    
    <div class="demo-box">
        <p>This is a demo box to showcase additional content with a warm modern style.</p>
        <p>You can add more paragraphs, lists, or even dynamic JSON content here using the <code>JSONObject</code> class.</p>
    </div>
</body>
</html>
