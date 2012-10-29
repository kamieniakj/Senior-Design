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
        Statement_Factory factroy = new Statement_Factory();
		Statement st = factory.get_statement();
		st.executeUpdate("DELETE FROM clients WHERE username = '"+bean.getRem()+"';");
			
		%>
    </body>
</html>
