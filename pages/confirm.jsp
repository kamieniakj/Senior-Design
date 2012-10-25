<%@ page import="java.sql.*" %> 
<jsp:useBean id="bean" class="bean.big_bean" scope="session"/>
<jsp:setProperty name="bean" property="*"/>
<html>
    <head>
        <title>Confirmation</title>
    </head>
    <body>
        Successfully added your new SSN!<br/>
        User: <% out.println(bean.getUsername()); %><br/>
        SSN: <% out.println(bean.getSsn()); %><br/>
        
        <%
		String connectionURL = "jdbc:mysql://localhost:3306/test"; 

		Connection connection = null; 

		Class.forName("com.mysql.jdbc.Driver").newInstance(); 

		connection = DriverManager.getConnection(connectionURL, "root", "");

		Statement st = connection.createStatement();
		st.executeUpdate("UPDATE clients SET ssn='"+bean.getSsn()+"' WHERE username = '" +bean.getUsername()+"';");
		
		%>
    </body>
</html>
