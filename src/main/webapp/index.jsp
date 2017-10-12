<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <jsp:include page="head.jsp"/>

    <style>

        @media (min-width: 768px) {
            .sidebar {
                position: fixed;
                top: 51px;
                bottom: 0;
                left: 0;
                z-index: 1000;
                display: block;
                padding: 20px;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */

                border-right: 1px solid #eee;
            }
        }
    </style>
</head>
<body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="row">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Project name</a>
                    </div>
                    <div id="navbar1" class="navbar-collapse collapse">
                        <form class="navbar-form navbar-right">
                            <div class="form-group">
                                <input type="text" placeholder="Email" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" placeholder="Password" class="form-control">
                            </div>
                            <button type="submit" class="btn btn-success">Sign in</button>
                        </form>
                    </div>
                </div>
            </div>
        </nav>

        <div class="container-fluid" style="margin-top: 50px;padding: 0 0 0 0" >
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar ">
                    <ul class="nav nav-sidebar" id="navbar">
                        <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Reports</a></li>
                        <li><a href="#">Analytics</a></li>
                        <li><a href="#">Export</a></li>
                        <li><a href="">Nav item</a></li>
                        <li><a href="">Nav item again</a></li>
                        <li><a href="">One more nav</a></li>
                        <li><a href="">Another nav item</a></li>
                        <li><a href="">More navigation</a></li>
                        <li><a href="">Nav item again</a></li>
                        <li><a href="">One more nav</a></li>
                        <li><a href="">Another nav item</a></li>
                    </ul>

<%--                    <ul class="nav nav-pills nav-stacked navbar-inverse navbar-collapse collapse" id="navbar">
                        <li role="presentation" class="active"><a href="#">Home</a></li>
                        <li role="presentation"><a href="#">Profile</a></li>
                        <li role="presentation"><a href="#">Messages</a></li>
                    </ul>--%>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="container">

            </div>
        </nav>
</body>
<script>
    var index = new Vue({
        el : "#index"
    })
</script>
</html>
