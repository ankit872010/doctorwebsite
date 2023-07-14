<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searching.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
      
            .navbar-default {
                                background-color: gold;
                                border-color: #E7E7E7;
}
    </style>
</head>
<body>
   <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
     
    <form class="navbar-form navbar-left" action="/doctorlist.aspx">
      <div class="form-group">
          <input type="text" class="form-control" placeholder="Search with doctor id" name="doctorid"/>
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav>
</body>
</html>
