<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Pizza Shop</title>
    <%@ page
    import="com.google.appengine.api.users.*" 
    pageEncoding="utf-8"
    contentType="text/html;charset=utf-8"
    %>
  </head>
  <body>
    <h1>Pizza Shop</h1>
    <%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    String msg = null;
    String name;
    String id;
    String url;
    if( user != null ){
    	name = user.getNickname();
    	id = user.getUserId();
    	url = userService.createLogoutURL("/");
    	request.setAttribute("username", name);
    	request.setAttribute("userid", id);
    	%><jsp:forward page="adduser.jsp" /><%
    	
    	}
    else {
    	msg = "こんにちは! こちらから "
    + "<a href='" + userService.createLoginURL("login.jsp") + "'>サインイン</a> してください!";
    }
    System.out.println( msg );
    %>
    <p class="round"><%= msg %></p>
  </body>
</html>