<%@page import="org.json.JSONObject"%>
<html>
<body>
	<h2>Hello World! FROM Harsha</h2>
	
	<%= new JSONObject("{\"smile\": \":)))\"}").get("smile") %>
</body>
</html>
