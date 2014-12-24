<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true"  %>
<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h2>Error Page</h2>
    <%= exception.getMessage() %>
  </div>
</body>
</html>
