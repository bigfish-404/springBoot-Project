<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Login</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.css">

    <link rel="stylesheet" href="../../static/css/me.css"  >
</head>
<body>
<br>
<br>
<br>
<br>
<div class="m-container-mini m-padded-tb-massive">
    <div class="ui container">
        <div class="column">
            <h2 class="ui teal image header">

                <div class="content">ログイン</div>
            </h2>
            <form class="ui large form" method="post" action="admin/login">
                <div class="ui segment">
                    <div class="field">
                        <div class="ui left icon input">
                            <i class="user icon"></i>
                            <input type="text" name="username" placeholder="アカウント">
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui left icon input">
                            <i class="lock icon"></i>
                            <input type="password" name="password" placeholder="Password">
                        </div>
                    </div>
                    <button class="ui fluid large teal submit button">Login</button>
                </div>

                <div class="ui error message"></div>
            </form>
        </div>
    </div>
</div>

<!--引入jquery的链接-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6/dist/jquery.min.js"></script>

<!--导入Semantic UI 框架，在首尾都需要引入-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.js"></script>

</body>
</html>