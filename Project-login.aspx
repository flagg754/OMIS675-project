<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Project-login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Web App Login Page</h2>
        <p>Username:<br />
            <asp:TextBox ID="TextBox1" runat="server"  Width="209px"></asp:TextBox>
&nbsp;
            <br />
            <br />
            Password:<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="208px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Height="28px" Text="Register" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Login" Width="68px" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Height="50px" Text="Login with Facebook" Width="213px" />
            <br />
        </p>
        <p>
            <br />
            <br />
        </p>
    
    
    </form>
</body>
</html>
