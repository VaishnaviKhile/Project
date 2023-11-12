<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDown.aspx.cs" Inherits="CascadingDropdownList.DropDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                <td>Country </td><td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
                 </tr>
               <tr>
              <td>State </td><td><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
               </tr>
             <tr>
            <td>Region</td><td><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
