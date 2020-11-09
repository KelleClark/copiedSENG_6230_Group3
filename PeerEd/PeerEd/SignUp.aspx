<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PeerEd.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="SignUp">
            <table class="auto-style1">
                <tr>
                    <td> <h2>Create Account</h2> </td>
                </tr>
                <tr>  
                    <td>Username</td>  
                    <td>  
                        <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox> 
                        <asp:requiredfieldvalidator id="rfvUsername" runat="server" errormessage="*" ForeColor="Red" controltovalidate="TextBoxUsername"></asp:requiredfieldvalidator>
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Password</td>  
                     <td> 
                         <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                         <asp:requiredfieldvalidator id="rfvPassword" runat="server" errormessage="*" ForeColor="Red" controltovalidate="TextBoxPassword"></asp:requiredfieldvalidator>
                     </td>
                     
                </tr>
                <tr>  
                    <td>Confirm Password</td>  
                     <td> 
                         <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                         <asp:requiredfieldvalidator id="rfvConfirmPassword" runat="server" errormessage="*" ForeColor="Red" controltovalidate="TextBoxConfirmPassword"></asp:requiredfieldvalidator>
                     </td>
                     
                </tr>  
                <tr>  
                    <td>First Name</td>  
                    <td>  
                        <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox> 
                        <asp:requiredfieldvalidator id="rfvFirstName" runat="server" errormessage="*" ForeColor="Red" controltovalidate="TextBoxFirstName"></asp:requiredfieldvalidator>
                    </td>  
                </tr>
                
                <tr>  
                    <td>Last Name</td>  
                    <td>  
                        <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox> 
                        <asp:requiredfieldvalidator id="rfvLastName" runat="server" errormessage="*" ForeColor="Red" controltovalidate="TextBoxLastName"></asp:requiredfieldvalidator>
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />  
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
