<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/head.jsp"/>
</head>
<body  style="background-color: #C0C0C0">
    <div class="row" style="height: 15%"></div>
    <div class="container">
        <div class="row text-center" id="login" >
            <div  style="width: 400px;background-color: white;height: 400px;border-radius:5px;margin-left: auto;margin-right: auto"  >
                <div>
                    <img class="img-circle" v-bind:src="head_img">
                </div>
                <form clas="form-horizontal" >
                    <div class="form-group input-group"  style="width: 250px;margin-left: auto;margin-right: auto">
                        <span class="input-group-addon" ><span class="glyphicon glyphicon-user"></span></span>
                        <input class="form-control" type="text" placeholder="请输入用户名..." style="height: 30px;width: 250px;" v-model="username" >
                    </div>
                    <div class="form-group input-group" v-bind:class="{ error:isError }" style="width: 250px;margin-left: auto;margin-right: auto">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-eye-close"></span></span>
                        <input class="form-control" type="password" placeholder="请输入密码..." style="height: 30px;width: 250px;" v-on:mousedown="login_mousedown" v-model="password">
                    </div>
                    <div class="form-group" >
                        <div class="controls col-md-5 " >
                            <button type="button" class="btn btn-warning" style="margin-left: 50px" v-on:click="submit">Sign in</button>
                        </div>
                            <div class="checkbox col-md-6">
                            <input type="checkbox" >Remember me
                        </div>
                    </div>
                    <div class="row-fluid control-group" style="margin-bottom: 50px;text-align: center;height: 20px" v-bind:class="{ error:isError }">
                        <span class="help-inline" v-html="errorInfo"></span>
                    </div>
                    <hr >
                </form>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    var main = new Vue({
        el:'#login',
        data : {
            errorInfo : "",
            isError : false,
            username : "",
            password : "",
            head_img:root+"/plugin/mao/tiantiansifangmao-04.png"
        },
        methods : {
            submit : function(event){
                this.errorInfo = "Please correct the error";
                this.isError = true;
                $.post( "/index",
                    {username : this.username ,password : this.password},
                    function(data){

                    }
                )
            },
            login_mousedown : function(){
                this.errorInfo = "";
                this.isError = false;
            }
        }
    })
</script>
</html>
