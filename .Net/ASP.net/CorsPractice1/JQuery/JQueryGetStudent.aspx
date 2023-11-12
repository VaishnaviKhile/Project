<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQueryGetStudent.aspx.cs" Inherits="JQuery.JQueryGetStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.7.1.js" ></script>
    <script>
        $(document).ready(function () {
            $("#getData").click(function () {
                $.ajax({
                    type: "GET",
                    url: "https://www.google.com/",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (result) {
                        alert(result);

                        var str = "";
                        $.each(result, function () {
                            str = "<tr>" + "<td>" + this["ID"] + "</td>" + "<td>" + this["NAME"] + "</td>" + "</tr>";

                        });
                        $("#Student").append(str);

                    }

                })
            })

        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" id="getData" value="Get All" />
            <br />
            <table>
                <thead id="Student" border="1">
                    <tr>
                        <td>Student ID </td>
                        <td>Student Name</td>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
