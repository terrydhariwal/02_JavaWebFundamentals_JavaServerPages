<%@ page import="io.nosqlyessql.mvc.UserModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <title>My JSP</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="/app.css" >
</head>

<body>

<%@include file="_header.jsp"%>

<section class="main container-fluid">
  <div class="container">

    <h1>View</h1>

    <div class="container">
      <div class="blueUser">
          <h2>Using JSP Scriplets and JSP Expressions</h2>
          <%--  JSP Scriptlets start/end with <% ... %>
                  They can contain Java code
          --%>
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
          <%-- JSP Expressions start/end with <%= ... %%>
                They are used to insert data onto the page
                And expression is transformed into a statement
                The value of the statement is converted to a String Object and inserts it into the implicit out object
          --%>
          Global scope: Welcome <%= global_user.getName() %>   <br/>
          Session scope: Welcome <%= session_user.getName() %> <br />
          Request scope: Welcome <%= request_user.getName() %> <br/>
      </div>
    </div>

    <div class="container">
      <h2>Hello world form</h2>
      <form action="/home" method="post"> <!-- Note the browser has no understanding of the application root, therefore, "/" is relative to the serverhost -->
        <p><input name="name" type="text" /></p>
        <p>
          <select name="response">
            <option name="html" value="html" selected="selected" >html</option>
            <option name="xml" value="xml" >xml</option>
            <option name="json" value="json" >json</option>
          </select>
        </p>
        <p><input type="submit" value="Enter name"/></p>
      </form>
    </div>

  </div>
</section>
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
