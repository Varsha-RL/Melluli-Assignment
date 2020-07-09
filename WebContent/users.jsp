<%@page import="org.apache.catalina.mapper.Mapper"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.melluli.challenge.springapp.model.User"%>
<%@page import="java.util.List"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%
URL url = new URL("http://111.111.1.111:8080/user/getallusers ");
HttpURLConnection conn = (HttpURLConnection) url.openConnection();
conn.setRequestMethod("GET");
conn.setRequestProperty("Accept", "application/json");
conn.get
%> --%>
<%
List<User> users =new ArrayList<>();
//storing passed value from jsp
users = (List<User>)request.getAttribute("/users");

/* HttpServletRequest req = request;
HttpServletResponse res = response;

Iterator itr = users.iterator();
int i =0;
while(itr.hasNext()){
	User user = (User) itr.next();
	
} */

%>

<html>
<head>
    <title>Users</title>
    <!-- <script>
    	var users = {id:1, name: "Varsha"};
		function openUserDetails(){
			window.location.href = "viewUserDetails.jsp?user="+users;
		}
    </script> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <%-- <c:out name="users" value="users" />  --%>
    <script language="javascript" type="text/javascript" >
    	</script>
</head>
<body>
    <%-- <h2>Users</h2>

    <h4>Tasks in this page</h4>
    <ol>
        <li>Add <strong><code>1px</code></strong> border to the cells in the table</li>
        <li>Add a new column called <strong><code>age</code></strong> in the user table, fill it with sample data for existing users and display it here</li>
        <li>Add a link on user id in to open "<strong><code>/user.form</code></strong>" which shows the selected user details (this page needs to be created)</li>
    </ol> --%>
    <nav class="navbar  navbar-fixed-top" style="background-color: #5cb85c; color: white;">
		<div class="container-fluid">
	    <div class="navbar-header row">
	      <label style="font-size: 22px; padding-top:10px; margin-left: 25px;">User Lists</label>
	    </div>
	  </div>
	</nav>
	<br>
    <div class="container" style="margin-top:60px">
    	<form name="frm" method="get" action="users">
	    	<table border="1" style="border : thick solid 2px;" class="table">
	    	<thead>
	    		<tr class="bg-success">
		            <th scope="col">Id</th>
		            <th scope="col">Name</th>
		            <th scope="col">Gender</th>
		            <th scope="col">City</th>
		            <th scope="col">Country</th>
		            <th scope="col">Age</th>
	        	</tr>
	    	</thead>
	    	<tbody class="table-hover">
	    		<c:forEach items="${users}" var="user">
		            <tr scope="row">
		                <td><a href="viewUserDetails?userId=${user.id}">${user.id}</a></td>
		                <td><a href="viewUserDetails?userId=${user.id}">${user.name}</a></td>
		                <td>${user.gender}</td>
		                <td>${user.city}</td>
		                <td>${user.country}</td>
		                <td>25</td>
		            </tr>
	        	</c:forEach>
	    	</tbody>
	    	</table>
	    	<br>
			<div class="row">
				<div class="text-right col-xs-13">
					<a type="button" class="btn btn-success" href="index.jsp">Back</a>
				</div>
			</div>
	    </form>
    </div>
	
</body>
