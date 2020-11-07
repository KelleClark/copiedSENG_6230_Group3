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
                    <td> <h2>Add Video</h2> </td>
                </tr>
                <tr>  
                    <td>Video Subject</td>  
                    <td>  
                        <asp:TextBox ID="TextBoxSubject" runat="server"></asp:TextBox> 
                        <asp:requiredfieldvalidator id="rfvSubject" runat="server" errormessage="*" ForeColor="Red" controltovalidate="TextBoxSubject"></asp:requiredfieldvalidator>
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Video Topic</td>  
                     <td> 
                         <asp:TextBox ID="TextBoxTopic" runat="server"></asp:TextBox>
                         <asp:requiredfieldvalidator id="rfvTopic" runat="server" errormessage="*" ForeColor="Red" controltovalidate="TextBoxTopic"></asp:requiredfieldvalidator>
                     </td>
                     
                </tr>  
                <tr>  
                    <td>Youtube Embed URL</td>  
                    <td>  
                        <asp:TextBox ID="TextBoxLink" runat="server"></asp:TextBox> 
                        <asp:requiredfieldvalidator id="rfvLink" runat="server" errormessage="*" ForeColor="Red" controltovalidate="TextBoxLink"></asp:requiredfieldvalidator>
                    </td>  
                </tr>   
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Add" onclick="btnAdd_ClientClick" />  
                    </td> 
                </tr>
                <tr>  
                    <td>  
                        <asp:Label ID="lblMessage" runat="server" />  
                    </td>  
                </tr>  
            </table>  
        </div>
    </form>
</body>
</html>
