<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>LinkDataの追加</title>
    </head>
    <body>
    <%
    String name = (String)request.getAttribute("username");
    String id = (String)request.getAttribute("userid");
    String url;
    request.setAttribute("username", name);
    request.setAttribute("userid", id);
    	%>
        <h1>ユーザー登録</h1>
        <table>
        <form method="post" action="/adduser">
            <tr><th>ユーザー名:</th><td><input type="text" name="username" value=${username}></td></tr>
            <input type="hidden" name="userid" value=${userid}>
            <tr><th></th><td><input type="submit" value="追加"></td></tr>
        </form>
        </table>
        <a href="add.html">登録しない</</a>
    </body>
</html>