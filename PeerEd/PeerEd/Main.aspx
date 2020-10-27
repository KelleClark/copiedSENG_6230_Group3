﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PeerEd.WebForm1" %>

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

        .addButton  {
            float:left
        }

        .main  {
            padding: 80px;
        }

    </style>

    <script>
        
        function openPopupWindow() {  
            //Open the popup page  
            window.open('AddVideo.aspx', 'AddVideo', 'resizable=no,width=400,height=400');  
   }  
    </script>  

</head>

<body>
    <form id="form1" runat="server">
        <div class="pageHeader">
            <h1>PeerEd</h1>
            <p>A website created by students for students.</p>
        <asp:Button ID="btnAddVideo" runat="server" Text="Add Video" OnClientClick="openPopupWindow();return false;"/>
        </div>

        <div class="navbar">
            <h2>Videos</h2>

            <asp:DropDownList ID="ddlTopic" runat="server" AutoPostBack="true" CssClass="dropDown" onselectedindexchanged="ddlTopic_SelectedIndexChanged">
            </asp:DropDownList>
            <h2 class="right">Topic:</h2>
            
            <asp:DropDownList ID="ddlSubject" runat="server" AutoPostBack="true" CssClass="dropDown" onselectedindexchanged="ddlSubject_SelectedIndexChanged">
            </asp:DropDownList>
            <h2 class="right">Subject:</h2>        
        </div>

        <div class="main">

            <br />
            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center"></asp:Panel>
        </div>
    </form>

</body>
</html>
