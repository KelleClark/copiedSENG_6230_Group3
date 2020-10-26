<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVideo.aspx.cs" Inherits="PeerEd.AddVideo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> PeerEd</title>

    <style type="text/css">

    </style>

</head>

<body>
    <form id="form1" runat="server">
        <div class="AddVideo">
            <table class="auto-style1">  
                <tr>  
                    <td>Video Subject</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Video Topic</td>  
                     <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td>Youtube Embed URL</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>   
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Button" />  
                    </td>  
                </tr>  
            </table>  
        </div>
    </form>
</body>
</html>
