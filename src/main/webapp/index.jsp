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
<body>
    <div id="index" class="row" style="height: 100%">
        <div class="col-md-2" style="background-color: #30404D;height: 100%">
            <div class="row " style="background-color: #E4481F;height: 50px">

            </div>
            <div class="row" style="background-color: #30404D;height: 150px">
                <div style="margin: auto;margin-top:10px;width: 130px">
                    <img src="/plugin/mao/tiantiansifangmao-04.png" class="img-circle" style="background-color: #ffffff; ">
                </div>
            </div>
            <div style="width: 100%;background-color: #30404D">
                <ul class="nav nav-pills nav-stacked" style="width: 100%">
                    <li v-for="menu in menus"  v-bind:class="{active:menu.check}" >
                        <a v-bind:href="menu.href" v-on:click="click_memnu(menu)">{{menu.name}}
                            <span style="float: right;font-weight: bolder" v-if="menu.check">-</span>
                            <span style="float: right;font-weight: bolder" v-else="menu.check">+</span>
                        </a>
                        <transition name="fade">
                            <ul v-if="menu.check" class="nav nav-pills nav-stacked" style="width: 100%;background-color: #3B4C5C">
                                <li v-for="m in menu.child" style="margin-left: 20px;">
                                    <a v-bind:href="m.href" v-on:click="click_memnu(m)">{{m.name}}</a>
                                </li>
                            </ul>
                        </transition>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-10" >
            <div class="row" style="background-color: #30404D;height: 50px">

            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    var index = new Vue({
        el : "#index",
        data : {
            menus : [
                {id : "1",href : "#",name : "Home", check : "",child:[{id : "4",href : "#",name : "text1"},{id : "5",href : "#",name : "text2"},{id : "6",href : "#",name : "text3"}]},
                {id : "2",href : "#",name : "Profile", check : "",child:[{id : "5",href : "#",name : "aaa1"},{id : "6",href : "#",name : "aaa2"}]},
                {id : "3",href : "#",name : "Messages", check : "",child:[{id : "6",href : "#",name : "bbb1"}]},
            ]
        },
        methods : {
            click_memnu : function(menu){
                var check = !(menu.check==true);
                for(var i in this.menus){
                    this.menus[i].check = false;
                }
                menu.check = check;
            }
        }
    })
</script>
</html>
