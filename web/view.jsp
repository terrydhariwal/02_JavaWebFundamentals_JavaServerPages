<%@ page import="io.nosqlyessql.mvc.UserModel" %>
<%@ page import="javax.jws.soap.SOAPBinding" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <title>My JSP</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
</head>

<body>

<%@include file="_header.jsp"%>

<section class="main container-fluid">
  <div class="container">

    <h1>View</h1>

    <div class="row-fluid">
      <%
        UserModel global_user = (UserModel) request.getServletContext().getAttribute("global_user");
        if(global_user == null) {
          global_user = new UserModel();
        }
        UserModel session_user = (UserModel) request.getSession().getAttribute("session_user");
        if(session_user == null) {
          session_user = new UserModel();
        }
        UserModel request_user = (UserModel) request.getAttribute("request_user");
        if(request_user == null) {
          request_user = new UserModel();
        }
      %>
      <div>
        <h2>Global scope user</h2>
        <h5>Welcome <%= global_user.getName() %></h5>
      </div>
      <div>
        <h2>Session scope user</h2>
        <h5>Welcome <%= session_user.getName() %></h5>
      </div>
      <div>
        <h2>Request scope user</h2>
        <h5>Welcome <%= request_user.getName() %></h5>
      </div>
    </div>
  </div>
</section>
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
