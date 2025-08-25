<%@ page import="org.json.JSONObject" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello DEVOPS World</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        p {
            color: #555;
            max-width: 600px;
        }
        .demo-box {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Hello DEVOPS World!</h2>
    <p>Welcome to this demo JSP page. Here, you can try out dynamic content, work with JSON data, and see how JSP integrates with HTML and CSS for beautiful layouts.</p>
    
    <div class="demo-box">
        <p>This is a demo box to showcase additional text content.</p>
        <p>You can add more paragraphs, lists, or even dynamic JSON content here using the <code>JSONObject</code> class.</p>
    </div>
</body>
</html>
