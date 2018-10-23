﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 offset-3 float-md-center">
            <div class="jumbotron container-fluid" style="background-image: url(https://cdn.cssauthor.com/wp-content/uploads/2015/10/Fine-Wood-Textures-1.jpg); font-size: large; color: orange">
                <div class="col-lg-4 col-lg-offset-4">
                    <img src="https://pbs.twimg.com/profile_images/2511992016/3cjz9awq6dvjr41kqiie_400x400.jpeg" class="img-responsive mb-4" alt="Wildlife Center" />
                </div>
                <input type="email" class="form-control mb-4" id="InputUsername" aria-describedby="Username" placeholder="Enter Username" autofocus="autofocus" />

                <input type="password" class="form-control" id="InputPassword" placeholder="Enter Password" />
                <small id="emailHelp" class="form-text">Do not share your password with anyone</small>
                <button type="submit" class="btn btn-primary">Login</button>

            </div>
        </div>
    </form>

</body>
</html>
