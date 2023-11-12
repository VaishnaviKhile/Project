<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buttonclick.aspx.cs" Inherits="practiceJQuery.buttonclick" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $('#Button1').click(function () {
                alert("yahooo");
            })
            $('h1').dblclick(function () {
                $('h1').toggle(2000);
            })
            $('h2').click(function () {
                $('h2').html('hi how are u');
            })
            $('h2').mouseenter(function () {
                alert('this is mousein');
            })
            $('h2').mouseleave(function () {
                alert('this is mouseleave');
            })



        })
    </script>

</head>


<body>
    <form id="form1" runat="server">
        <div>
            <input id="Button1" type="button" value="button"/>
            <h1>Hi this is ......</h1>
            <h2>Hi this is for fade in......</h2>
        </div>
    </form>
</body>
</html>
