<%@page import="org.json.JSONObject"%>
<html>
<body>
	<h2>Hello World! from HARSHA</h2>
	
	<%= new JSONObject("{\"smile\": \":)))\"}").get("smile") %>
</body>
</html>
