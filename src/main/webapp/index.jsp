<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="head.jsp"/>

    <style>
        .fade-enter-active{
            transition: all 1s
        }
        .fade-enter
            /* .slide-fade-leave-active for below version 2.1.8 */ {
            transform: translateX(-100px);
            /*opacity: 0;*/
        }
    </style>
</head>
<body style="background-color: #30404D;">
    <div id="index" class="row" style="height: 100%">
        <div class="col-md-2" style="background-color: #30404D;height: 100%">
            <div class="row " style="background-color: #E4481F;height: 50px">

            </div>
            <div class="row" style="background-color: #30404D;height: 150px">
                <div style="margin: auto;margin-top:10px;width: 130px">
                    <img src="/plugin/mao/tiantiansifangmao-04.png" class="img-circle" style="background-color: #ffffff; " >
                </div>
            </div>
            <div style="width: 100%;background-color: #30404D;height: 500px">
                <ul class="nav nav-pills nav-stacked">
                    <li v-for="menu in menus"  v-bind:class="{active:menu.check}">
                        <a href="#" v-on:click="click_memnu(menu)" ><span class="glyphicon glyphicon-home" aria-hidden="true"></span> {{menu.authName}}
                            <span style="float: right;font-weight: bolder" v-if="menu.check">-</span>
                            <span style="float: right;font-weight: bolder" v-else="menu.check">+</span>
                        </a>
                        <transition name="fade">
                            <ul v-if="menu.check" class="nav nav-pills nav-stacked" style="width: 100%;background-color: #3B4C5C">
                                <li v-for="m in menu.child" style="margin-left: 20px;" v-bind:class="{active:m.check}">
                                    <a href="#" v-on:click="click_memnu_ch(m,menu)">{{m.authName}}</a>
                                </li>
                            </ul>
                        </transition>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-10" >
            <div class="row " style="background-color: #30404D;height: 50px;" >
                <div class="col-sm-1" style="margin-top: 10px;width:55px">
                    <button type="button" class="btn btn-primary" aria-label="Left Align">
                        <span class="glyphicon glyphicon-align-left" aria-hidden="true" ></span>
                    </button>
                </div>
                <div class="col-sm-2" style="margin-top: 7px">
                    <div class="input-group" style="border-color: #30404D">
                        <span class="input-group-addon" id="basic-addon1" style="background-color: #3B4C5C;color: white;border-color: #30404D"><span aria-hidden="true" class="glyphicon glyphicon-search"></span></span>
                        <input type="text" class="form-control" placeholder="search..." aria-describedby="basic-addon1" style="background-color: #3B4C5C;color: white;border-color: #30404D">
                    </div>
                </div>
                <div class="col-sm-2" style="margin-top: 10px;float: right">
                    <button type="button" class="btn btn-primary" aria-label="Left Align">
                        <span class="glyphicon glyphicon-cloud" aria-hidden="true"></span>
                    </button>
                    <button type="button" class="btn btn-primary" aria-label="Left Align">
                        <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                    </button>
                    <button type="button" class="btn btn-primary" aria-label="Left Align">
                        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                    </button>
                </div>
            </div>
            <div class="row " style="background-color: white;height: 50px;" >
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Library</a></li>
                    <li class="active">Data</li>
                </ol>
            </div>
            <div class="row" style="background-color: white;height: 100%">

            </div>
        </div>
    </div>
</body>
<script type="text/javascript">



    var index = new Vue({
        el : "#index",
        data : {
            menus : []
        },
        methods : {
            click_memnu : function(menu){
                var check = !(menu.check==true);
                for(var i in this.menus){
                    this.$set(this.menus[i], "check", false);
                    this.menus[i].check = false;
                }
                this.$set(menu, "check", check)
            },
            click_memnu_ch : function(menu,root){
                for(var i in root.child){
                    this.$set(root.child[i],"check",false);
                }
                this.$set(menu, "check", true)
            },
            init : function(){
                var _this = this;
                ajax.get("http://localhost:8080/emro_boss/staff/auth",function(res){
                    _this.menus = res.data.data;
                })
            }
        },
        mounted : function(){
            this.init()
        }
    })
</script>
</html>
