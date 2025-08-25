<%@page import="org.json.JSONObject"%>
<html>
<body>
	<h2>Hello DEVOPS World!  </h2>
	
	<%= new JSONObject("{\"smile\": \":)))\"}").get("smile") %>
</body>
</html>
