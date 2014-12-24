<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <title>My JSP</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
</head>

<body>
<header class="clearfix">
  <nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ext1-collapse   ">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">My App</a>
    </div>

    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/">Home</a></li>
        <li class="active"><a href="/">Dashboard</a></li>
        <li class="active"><a href="/">Route 2</a></li>
        <li class="active"><a href="/">Route 3</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="/logout">Sign out</a></li>
      </ul>
    </div>
  </nav>
</header>
<section class="main container-fluid">
  <div class="container">

    <h1>Home</h1>

    <div class="row-fluid">
      <div class="col-md-3">Sidebar</div>
      <div class="col-md-9">
        <tabset>
          <tab heading="Search">
            <div>
              <p>FORM</p>
              <form action="helloworld" id="helloworld" method="post">
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
          </tab>
          <tab heading="Next">
            Yet more static content
          </tab>
        </tabset>
      </div>
    </div>
  </div>
</section>
<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>
