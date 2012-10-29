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
        Statement_Factory factory = new Statement_Factory();
		Statement st = factory.get_statement();
		st.executeUpdate("UPDATE clients SET ssn='"+bean.getSsn()+"' WHERE username = '" +bean.getUsername()+"';");
		
		%>
    </body>
</html>
