<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBox.aspx.cs" Inherits="Listbox.ListBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

           Select One <asp:ListBox ID="ListBox1" Width="80px" runat="server" SelectionMode="Multiple" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                <asp:ListItem>Korea</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>America</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Thailand</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>England</asp:ListItem>
            </asp:ListBox>
            <asp:Button ID="Button1" runat="server" Text="<<" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text=">>" OnClick="Button2_Click" />
            <asp:ListBox ID="ListBox2" Width="80px" runat="server" SelectionMode="Multiple" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged"></asp:ListBox>


        </div>
    </form>
</body>
</html>
