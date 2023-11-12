<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADODeletion.aspx.cs" Inherits="ADOFrameworkCrud.ADODeletion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>To Delete Id:<br />
            Enter Id: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
