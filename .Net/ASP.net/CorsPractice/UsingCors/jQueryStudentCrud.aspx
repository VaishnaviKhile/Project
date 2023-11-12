<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jQueryStudentCrud.aspx.cs" Inherits="UsingCors.jQueryStudentCrud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using Cors</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script>
    $(document).ready(function () {

        $(btnGet).click(function () {
            $.ajax({

                type: "GET",
                url: "https://localhost:44340/api/Worker/GetAllStudent",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) {
                    alert(result);

                    var str = "";
                    $.each(result, function () {

                        str += "<tr>" + "<td>" + this["ID"] + "</td>" + "<td>" + this["NAME"] + "</td>" + "</tr>";

                    });

                    $("#tblShowData").append(str);
                }


            })

        });


    })

    </script>
</head>
<body>
    <form id="form1" runat="server">
      <div>
        <input type="button" id="btnGet" value="GetData" />
        <br />
        <table id="tblShowData" border="1">
        <thead>
        
        <td>StudentId</td>
        <td>Name</td>
        </thead>
        <tbody>

        </tbody>
        </table>

       </div>
    </form>
</body>
</html>
