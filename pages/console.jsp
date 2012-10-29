<%@ page import="java.sql.*" %> 
<jsp:useBean id="bean" class="bean.big_bean" scope="session"/>
<jsp:setProperty name="bean" property="*"/>
<html>
	
    <head>
        <title>Console Page</title>
    </head>
    <body>
   		
	    <%
        Statement_Factory factory = new Statement_Factory();
		Statement st = factroy.get_statement();
		ResultSet rs = st.executeQuery("SELECT username, password, admin FROM clients;");
		
		
		while(rs.next())
		{
			
			String user = rs.getString("username");
			String pass = rs.getString("password");
			int admin = rs.getInt("admin");
		
			if(bean.getUsername().equals(user)){
				if(bean.getPassword().equals(pass)){
					if(admin==1){
						%>
		    				<%@ include file="admin.html" %>
						<%
					} else {
						%>
		    				<%@ include file="user.html" %>
						<%
					}	
				 }
			 }
		//out.println(user + " " + pass + " " + admin);
		}

		%>
		
    </body>
</html>
