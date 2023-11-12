<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADOUpdate.aspx.cs" Inherits="ADOFrameworkCrud.ADOUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            For Updation:
            <br />
            Enter UR StudentId: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Enter Updated Name:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
