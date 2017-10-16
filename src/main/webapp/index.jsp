<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <jsp:include page="head.jsp"/>

    <style>
        .sidebar {
            top: 51px;
            bottom: 0;
            z-index: 3;
            background-color: white;
        }
        .sidebar-cen {
            top: 51px;
            bottom: 10px;
            padding-left: 120px;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 0 0 0 0;
        }
        @media (min-width: 768px) {
            .sidebar {
                position: fixed;
                bottom: 0;
                left: 0;
                display: block;
                padding: 20px;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */

                border-right: 1px solid #eee;
            }
            .sidebar-cen {
                display: block;
                padding: 20px;
                position: fixed;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
                border-right: 1px solid #eee;
            }
        }
        @media (max-width: 768px) {
            .sidebar-cen {
                height: 100vh;
            }
        }
    </style>
</head>
<body>
    <div id="index">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="row">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1" aria-expanded="false" aria-controls="navbar1">
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

        <div class="container-fluid" style="padding: 0 0 0 0" >
            <div class="row">
                <div class="col-sm-3 col-md-2 sidebar ">
                    <ul class="nav nav-sidebar nav-pills nav-stacked" id="navbar">
                        <li  v-for="m in menu" v-bind:class="{active:m.active}"  v-bind:id="'menu_'+m.id">
                            <a href="#" role="button" v-on:click="menu_click(m,'menu_'+m.id)"><span class="glyphicon glyphicon-th-list" style="margin-right: 10px"></span>{{m.authName}}<span class="caret" style="float: right"></span></a>
                            <ul  class="nav nav-sidebar nav-pills nav-stacked collapse"  >
                                <li v-for="ch in m.menuCh" v-bind:class="{active:ch.active}" v-on:click="menu_click_ch(ch,m)"><a href="#" style="padding-left: 30px">{{ch.authName}}</a></li>

                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 sidebar-cen"  style="top: 51px">
                    <div class="container">
                        <jsp:include page="<%=request.getSession().getAttribute("address") %>"></jsp:include>
                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="">
            </div>
        </nav>
    </div>
</body>
<script>
    var index = new Vue({
        el : "#index",
        data: {
            menu : [
                {id: 1,authName:"首页",active:false,menuCh: [
                    {id: 6,authName:"title",url:"",active:false},
                    {id: 7,authName:"head",url:"",active:false},
                    {id: 8,authName:"body",url:"",active:false},
                ]},
                {id: 2,authName:"Reports",active:false,menuCh: []},
                {id: 3,authName:"Analytics",active:false,menuCh: []},
                {id: 4,authName:"Export",active:false,menuCh: []},
                {id: 5,authName:"Nav item",active:false,menuCh: []},
            ]
        },
        methods: {
            menu_click:function(m,id){
                for(var i=0;i<this.menu.length;i++){
                    this.menu[i].active = false;
                }
                m.active = true;
                $("#"+id+" .collapse").collapse("toggle");
            },
            menu_click_ch: function(ch,m){
                for(var i=0;i<m.menuCh.length;i++){
                    m.menuCh[i].active = false;
                }
                ch.active = true;
            }
        }
    })
</script>
</html>
