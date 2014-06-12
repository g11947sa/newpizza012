<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title></title>
    </head>
    <body>
    <%
    String name = (String)request.getAttribute("username");
    String id = (String)request.getAttribute("userid");
    String url;
    	request.setAttribute("username", name);
    	request.setAttribute("userid", id);
    	%>
        <h1></h1>
        ${username}さん<br>
        <table>
        <form method="post" action="/add">
            <tr><th>名前:</th><td><input type="text" name="title"></td></tr>
            <tr><th>電話番号:</th><td><input type="text" name="url"></td></tr>
            <tr><th>枚数:</th><td><input type="text" name="comment"></td></tr>
            <tr><th></th><td><input type="submit" value="送信"></td></tr>
        </form>
        </table>
    </body>
</html>