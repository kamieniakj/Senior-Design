<%@ page import="java.sql.*" %> 
<jsp:useBean id="bean" class="bean.big_bean" scope="session"/>
<jsp:setProperty name="bean" property="*"/>
<html>
    <head>
        <title>View</title>
    </head>
    <body>
        <h1>View SSN</h1>
        
        
        <%
        Statement_Factory factory = new Statement_Factory();
		Statement st = factory.get_statement();
		ResultSet rs = st.executeQuery("SELECT admin FROM clients WHERE username = '" +bean.getUsername()+"';");
		rs.next();	
			
			int admin = rs.getInt("admin");
			
			if(admin == 1){
				rs = st.executeQuery("SELECT ssn FROM clients WHERE username = '" +bean.getAccount()+"';");
				rs.next();
				int ssn = rs.getInt("ssn");
				out.println("User: " + bean.getAccount()+ "      ");
				out.println("SSN: " + ssn);
			}
			
			else{
				rs = st.executeQuery("SELECT ssn FROM clients WHERE username = '" +bean.getUsername()+"';");
				rs.next();
				int ssn = rs.getInt("ssn");
				out.println("Your SSN: " + ssn);
			}
		
			
		//out.println(user + " " + pass + " " + admin);
		

		%>
        <hr>
		
    </body>
</html>
