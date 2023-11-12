<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="ValidatorPractice.Validator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="nam" runat="server" Text="Name "></asp:Label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="name">Ur Name</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="ag" runat="server" Text="Age "></asp:Label>
              <asp:TextBox ID="age" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" MaximumValue="80" MinimumValue="18" ControlToValidate="age"></asp:RangeValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password "></asp:Label>
              <asp:TextBox ID="pass" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="pass"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Confirmed Pass "></asp:Label>
              <asp:TextBox ID="conf" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="pass" ControlToValidate="conf"></asp:CompareValidator>
            <br />
           <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

           <br />
           <br />
            <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Page_Load" />
      
        </div>
    </form>
</body>
</html>
