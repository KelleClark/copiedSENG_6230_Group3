<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PeerEd.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title> PeerEd</title>

    <style type="text/css">
        /* Header/logo Title */
        .pageHeader {
          padding: 80px;
          text-align: center;
          background: #1abc9c;
          color: white;
        }

        /* Increase the font size of the heading */
        .pageHeader h1 {
          font-size: 40px;
        }

        /* Style the top navigation bar */
        .navbar {
          overflow: hidden;
          background-color: #333;
        }

        /* Style the navigation bar */
        .navbar h2 {
          float: left;
          display: block;
          color: white;
          text-align: center;
          padding: 14px 20px;
          text-decoration: none;
        }

        /* Right-aligned navbar item */
        .navbar h2.right  {
          float: right;
        }

        /* drop down lists */
        .dropDown  {
          float: right;
          display: block;
          padding: 4px 8px;
          text-decoration: none;
          vertical-align: middle;
        }

        /* Style the top navigation bar */
        .navbar {
            overflow: hidden;
            background-color: #333;
        }

            /* Style the navigation bar */
            .navbar h2 {
                float: left;
                display: block;
                color: white;
                text-align: center;
                padding: 14px 20px;
                text-decoration: none;
            }

                /* Right-aligned navbar item */
                .navbar h2.right {
                    float: right;
                }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
            
        .navbar-default {
            background-image: -webkit-linear-gradient(top, #ffffff 0%, #f8f8f8 100%);
            background-image: -o-linear-gradient(top, #ffffff 0%, #f8f8f8 100%);
            background-image: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#f8f8f8));
            background-image: linear-gradient(to bottom, #ffffff 0%, #f8f8f8 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#fff8f8f8', GradientType=0);
            background-repeat: repeat-x;
            filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);
        }

            .navbar-default .navbar-nav > .open > a,
            .navbar-default .navbar-nav > .active > a {
                background-image: -webkit-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);
                background-image: -o-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);
                background-image: -webkit-gradient(linear, left top, left bottom, from(#dbdbdb), to(#e2e2e2));
                background-image: linear-gradient(to bottom, #dbdbdb 0%, #e2e2e2 100%);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffdbdbdb', endColorstr='#ffe2e2e2', GradientType=0);
                background-repeat: repeat-x;
                -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);
                box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);
            }

        .navbar-brand,
        .navbar-nav > li > a {
            text-shadow: 0 1px 0 rgba(255, 255, 255, 0.25);
    </style>

</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" runat="server" href="StudentLand.html"><h1>PeerEd</h1></a>
                </div>
                <div class="navbar-collapse collapse">
                        <h2><a runat="server" href="Main.aspx">Upload a Video</a></h2>
                        <h2><a runat="server" href="Main.aspx">Watch a Video</a></h2>
                        <h2><a runat="server" href="Main.aspx">History</a></h2>
                </div>
            </div>
        </div>
    <form id="form1" runat="server">
        <div class="pageHeader">
            <h1>PeerEd</h1>
            <p>A website created by students for students.</p>
        </div>

        <div class="navbar">
            <h2>Videos</h2>

            <asp:DropDownList ID="ddlTopic" runat="server" AutoPostBack="true" CssClass="dropDown" OnSelectedIndexChanged="ddlTopic_SelectedIndexChanged">
                <asp:ListItem Text="Algebra" Value="Algebra" />
                <asp:ListItem Text="Business Calculus" Value="Business Calculus" />
            </asp:DropDownList>
            <h2 class="right">Topic:</h2>
            
            <asp:DropDownList ID="ddlSubject" runat="server" AutoPostBack="true" CssClass="dropDown" OnSelectedIndexChanged="ddlSubject_SelectedIndexChanged">
                <asp:ListItem Text="Math" Value="Math" />
                <asp:ListItem Text="Computer Science" Value="Computer Science" />
            </asp:DropDownList>
            <h2 class="right">Subject:</h2>        
        </div>

        <div class="main">
            <asp:GridView ID="GridView1" runat="server"> </asp:GridView> 
        </div>
    </form>

</body>
</html>
