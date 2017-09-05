<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<meta charset="UTF-8">

<title>vip</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="<%=basePath %>/plugin/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="<%=basePath %>/plugin/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/plugin/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=basePath %>/plugin/vue.js"></script>