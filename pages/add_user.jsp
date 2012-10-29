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
        Statement_Factory factory = new Statement_Factory(); 
		Statement st = factory.get_statement();
		st.executeUpdate("INSERT into clients (username, password) VALUES  ('" +bean.getAdd()+"', '"+bean.getNewpass()+"');");
			
			
		//out.println(user + " " + pass + " " + admin);
		

		%>
        
    </body>
</html>
