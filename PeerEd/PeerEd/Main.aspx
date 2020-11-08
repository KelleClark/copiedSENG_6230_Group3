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
        .addButton  {
            float:left;
        }
        .main  {
            padding: 80px;
        }
         * {
            box-sizing: border-box;
        }

        .col-1 {
            width: 8.33%;
        }

        .col-2 {
            width: 16.66%;
        }

        .col-3 {
            width: 25%;
        }

        .col-4 {
            width: 33.33%;
        }

        .col-5 {
            width: 41.66%;
        }

        .col-6 {
            width: 50%;
        }

        .col-7 {
            width: 58.33%;
        }

        .col-8 {
            width: 66.66%;
        }

        .col-9 {
            width: 75%;
        }

        .col-10 {
            width: 83.33%;
        }

        .col-11 {
            width: 91.66%;
        }

        .col-12 {
            width: 100%;
        }
        [class*="col-"] {
            float: left;
            padding: 15px;
            border: 0px;
        }
        /* Header/logo Title */
        .pageHeader {
            padding: 80px;
            text-align: center;
            background: #8C2D3B;
            background: #e2e2e2
            /*  min-height: 100%;
            background-image: url(logo.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;*/
        }

            /* Increase the font size of the heading */
            .pageHeader h1 {
                font-size: 40px;
                color: white;
                color: #bf2307;
            }
            .pageHeader h2 {
                font-size: 30px;
                color: #bf2307;
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
        }
    </style>

    <script>
        
        function openPopupWindow() {  
            //Open the popup page  
            window.open('AddVideo.aspx', 'AddVideo', 'resizable=no,width=400,height=400');  
   }  
    </script> 
    
     <script type="text/javascript">
         function Navigate() {
             javascript: window.open("Watchvideo.aspx");
         }

     </script>

</head>

<body>
     <div class="navbar navbar-fixed-top">
        <div class="row">
            <div class="navbar-header">
                <div class="col-3">
                    <h2><a class="navbar-brand" runat="server" href="StudentLand.html">PeerEd</a></h2>
                </div>
                <div class="col-6">

                </div>
                <div class="col-3">
                    <h2><a class="navbar-brand" runat="server" href="StudentLand.html">Home</a></h2>   
                </div>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="pageHeader">
            <h1>Welcome to PeerEd!</h1>
            <h2>Choose From the Menu Options Below</h2>
            <asp:Button ID="btnAddVideo" runat="server" Text="Add Video" OnClientClick="openPopupWindow();return false;"/>
            <asp:Button ID="btnWatchVideo" runat="server" Text="Watch Video" OnClientClick="Navigate();return false;"/>
        </div>

       
    </form>

</body>
</html><%--  --%>