<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practice1.aspx.cs" Inherits="apiPractice1.Practice1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $('p').css("background-color", "yellow");
            $("p:first").css("color", "red");
            $("#ABC").hide();
            $("ul li:first").css("color", "pink");


        })

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 id="ABC">JQuery</h1>
            <h2 class="xyz">JQuery is a popular language</h2>
            <h3>9876542310</h3>

            <p>
                This is dot net course . Very Helpful for develop applications 
            </p>

            <p>
                Hii.... I am JQuery here!!!!!
            </p>

            <ul>
                <li>HTML</li>
                <li>CSS</li>
                <li>Bootstrap</li>
            </ul>
            
        </div>
    </form>
</body>
</html>
