<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<meta charset="UTF-8">

<title>vip</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script>
    var root = "<%=basePath %>";
</script>
<link rel="stylesheet" type="text/css" href="<%=basePath %>/webjars/bootstrap/3.3.7/dist/css/bootstrap.css">
<%--<script type="text/javascript" src="<%=basePath %>/webjars/jquery/3.2.1/dist/jquery.js"></script>--%>

<%--<script type="text/javascript" src="<%=basePath %>/webjars/bootstrap/3.3.7/dist/js/css/bootstrap.js"></script>--%>
<script type="text/javascript" src="<%=basePath %>/webjars/vue/2.4.2/vue.js"></script>
<script type="text/javascript" src="<%=basePath %>/webjars/axios/0.16.1/dist/axios.js"></script>
<script type="text/javascript" src="<%=basePath %>/webjars/vue-router/2.6.0/dist/vue-router.js"></script>
<script type="text/javascript" src="<%=basePath %>/webjars/requirejs/2.3.3/require.js"  ></script>
<script>
    var ajax = {
        get : function(url,fun,errfun){
            axios.get(url).then(fun).catch(errfun)
        }
    }

</script>
