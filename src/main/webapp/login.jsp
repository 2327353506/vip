<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../../../../target/emro_api/head.jsp"/>
</head>
<body  style="background-color: #C0C0C0">
    <div class="row" style="height: 100px"></div>
    <div class="row-fluid" id="login">
        <div  style="width: 400px;background-color: white;height: 400px;border-radius:5px;" class="offset5" >
            <div style="text-align:center">
                <img src="../../../../target/emro_api/plugin/mao/tiantiansifangmao-04.png" class="img-circle" >
            </div>
            <form clas="form-horizontal" >
                <div class="control-group row-fluid">
                    <div class="controls input-prepend" style="margin-left: 50px">
                        <span class="add-on"><i class="icon-envelope"></i></span>
                        <input class="input-xlarge" type="text" placeholder="请输入用户名..." style="height: 30px" v-model="username">
                    </div>
                </div>
                <div class="control-group row-fluid" v-bind:class="{ error:isError }">
                    <div class="controls input-prepend" style="margin-left: 50px">
                        <span class="add-on" ><i class="icon-lock"></i></span>
                        <input class="input-xlarge" type="password" placeholder="请输入密码..." style="height: 30px" v-on:mousedown="login_mousedown" v-model="password">
                    </div>
                </div>
                <div class="control-group row-fluid" >
                    <div class="controls span5 " >
                        <button type="button" class="btn btn-warning" style="margin-left: 50px" v-on:click="submit">Sign in</button>
                    </div>
                    <div class="controls span6">
                        <label class="checkbox" style="margin-left: 50px">
                            <input type="checkbox" ><span > Remember me</span>
                        </label>
                    </div>
                </div>
                <div class="row-fluid control-group" style="margin-bottom: 50px;text-align: center;height: 20px" v-bind:class="{ error:isError }">
                    <span class="help-inline" v-html="errorInfo"></span>
                </div>
                <hr >
            </form>
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
            password : ""
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
