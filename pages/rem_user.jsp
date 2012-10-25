<%@ page import="java.sql.*" %> 
<jsp:useBean id="bean" class="bean.big_bean" scope="session"/>
<jsp:setProperty name="bean" property="*"/>
<html>
    <head>
        <title>Remove User Confirmtion</title>
    </head>
    <body>
        <h1>Remove User</h1>
        Username <% out.println(bean.getRem()); %><br/>
        
        <%
		String connectionURL = "jdbc:mysql://localhost:3306/test"; 

		Connection connection = null; 

		Class.forName("com.mysql.jdbc.Driver").newInstance(); 

		connection = DriverManager.getConnection(connectionURL, "root", "");

		Statement st = connection.createStatement();
		st.executeUpdate("DELETE FROM clients WHERE username = '"+bean.getRem()+"';");
			
		%>
    </body>
</html>
