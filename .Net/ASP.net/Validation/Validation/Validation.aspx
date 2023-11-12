<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Validation.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:<asp:TextBox ID="Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ErrorMessage ="RequiredFieldValidator" ControlToValidate="Name">Ur Name is Required</asp:RequiredFieldValidator>
            <br />
            <br />

            Age:<asp:TextBox ID="Age" runat="server"></asp:TextBox>
                 <asp:RangeValidator ID="RangeValidator1" runat="server" 
                 ErrorMessage="RangeValidator" ControlToValidate="Age" MaximumValue="70" MinimumValue="18">Age must be b/w 18 to 70</asp:RangeValidator>
            <br />
            <br />
            Email:<asp:TextBox ID="Email" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                   ErrorMessage="RegularExpressionValidator" ControlToValidate="Email">Enter Valid Email</asp:RegularExpressionValidator>
            <br />
            <br />
            Password:<asp:TextBox ID="Password" runat="server"></asp:TextBox>
                     <asp:CompareValidator ID="CompareValidator2" runat="server"
                      ErrorMessage="CompareValidator" ControlToCompare="Confirmed">Enter Correct Password</asp:CompareValidator>
            <br />
            <br />
            Confirm Password:<asp:TextBox ID="Confirmed" runat="server"></asp:TextBox>
               <asp:CompareValidator ID="CompareValidator1" runat="server"
                ErrorMessage="CompareValidator" ControlToCompare="Password">Enter Correct Pass</asp:CompareValidator>
            <br />
            <br />

        </div>
    </form>
</body>
</html>
