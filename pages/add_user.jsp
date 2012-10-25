<%@ page import="java.sql.*" %> 
<jsp:useBean id="bean" class="bean.big_bean" scope="session"/>
<jsp:setProperty name="bean" property="*"/>
<html>
    <head>
        <title>Add User Confirmtion</title>
    </head>
    <body>
        <h1>Added User</h1>
        Username <% out.println(bean.getAdd()); %><br/>
        Password <% out.println(bean.getNewpass()); %><br/>
        
        <%
		String connectionURL = "jdbc:mysql://localhost:3306/test"; 

		Connection connection = null; 

		Class.forName("com.mysql.jdbc.Driver").newInstance(); 

		connection = DriverManager.getConnection(connectionURL, "root", "");

		Statement st = connection.createStatement();
		st.executeUpdate("INSERT into clients (username, password) VALUES  ('" +bean.getAdd()+"', '"+bean.getNewpass()+"');");
			
			
		//out.println(user + " " + pass + " " + admin);
		

		%>
        
    </body>
</html>
