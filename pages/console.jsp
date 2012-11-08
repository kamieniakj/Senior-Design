<%@ page import="java.sql.*" %> 
<jsp:useBean id="bean" class="bean.big_bean" scope="session"/>
<jsp:setProperty name="bean" property="*"/>
<html>
	
    <head>
        <title>Console Page</title>
    </head>
    <body>
   		
	    <%
		String connectionURL = "jdbc:mysql://localhost:3306/test"; 

		Connection connection = null; 

		Class.forName("com.mysql.jdbc.Driver").newInstance(); 

		connection = DriverManager.getConnection(connectionURL, "root", "");

		Statement st = connection.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM clients WHERE username='"+ bean.getUsername() + "' AND password='"+ bean.getPassword() +"';");
        rs.next();
        
        out.print("Welcome " + rs.getString("username")); 	
        if(rs.getString("admin").equals("1")){
        %>
            <%@ include file="admin.html" %>
        <%
        }
        else{
        %>
            <%@ include file="user.html" %>
        <%
        }
		%>
		
    </body>
</html>
