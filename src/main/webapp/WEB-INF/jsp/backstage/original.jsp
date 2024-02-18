<%@ page import="com.bigfish.blog.po.Input" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Optional" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name = "viewport" content="with = device - width, initial - scale = 1.0">
    <title>管理</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.css">
    <link rel="stylesheet" href="../static/css/me.css" th:href="@{/css/me.css}" >
</head>
<body>

<!--メニュー-->
<nav class="ui inverted attached segment">
    <div class="ui container">
        <div class="ui inverted secondary menu">
            <h2 class="ui teal header item">管理Blog</h2>
            <a href="/index" class="item"><i class="icon home"></i>ホームページ</a>
            <a href="/input" class="item"><i class="icon tags"></i>編集</a>
            <a href="" class="item"><i class="icon info"></i>自己紹介</a>

            <!--検索ボックス-->
            <div class="right item">
                <div class="ui icon input">
                    <input type="text" placeholder="Search...">
                    <i class="search link icon"></i>
                </div>
            </div>

        </div>
    </div>
</nav>

<!--主体-->
<div class="m-container-small m-padded-tb">
    <div class="ui container">
        <!--header-->
        <div class="ui top attached segment">
            <div class="ui middle aligned two column grid">
                <div class="column">
                    <h3 class="ui teal header">オリジナル</h3>
                </div>
                <div class="right aligned column">
                    <%

                        List<Integer > idList = (List<Integer>) request.getAttribute("idList");
                        if (idList != null){
                    %>
                    共<h2 class="ui orange header m-inline-block m-text-thin"><%=idList.size()%></h2>个
                <%
                    }
                %>
                </div>
            </div>
        </div>

        <div class="ui attached segment">
            <div class="ui labeled button m-margin-tb">
                <a href="#" class="ui basic teal button">Translate</a>
                <div class="ui basic teal left pointing label">24</div>
            </div>
            <div class="ui labeled button m-margin-tb">
                <a href="#" class="ui basic teal button">歴史</a>
                <div class="ui basic teal left pointing label">24</div>
            </div>
        </div>
        <table class="ui center aligned  table">
            <!--表头-->
            <thead>
            <tr>
                <th></th>
                <th>name</th>
                <th>操作</th>
            </tr>
            </thead>
            <!--数据-->
            <tbody>
            <tr>
                <td>1</td>
                <td>练习IT的方式</td>
                <td>
                    <a class="ui mini teal basic button">编辑</a>
                    <a class="ui mini red basic button">删除</a>
                </td>
            </tr>
            </tbody>
            <!--按钮-->
            <tfoot>
            <tr>
                <th colspan="6">
                    <a href="/input" class="ui mini left floated basic button">增加</a>
                    <div class="ui right floated pagination menu">
                        <a class="icon item">
                            <i class="left chevron icon"></i>
                        </a>
                        <a class="item">1</a>
                        <a class="item">2</a>
                        <a class="item">3</a>
                        <a class="item">4</a>
                        <a class="icon item">
                            <i class="right chevron icon"></i>
                        </a>
                    </div>
                </th>
            </tr>
            </tfoot>
        </table>
    </div>
</div>
<br>
<br>

<!--footer-->
<footer class="ui inverted vertical segment m-padded-tb-massive">

    <div class="ui center aligned container">

        <div class="ui inverted divided grid">
            <div class="three wide column">
                <img src="../../../static/images/WeChat.jpg" th:src="@{/images/WeChat.jpg}" class="ui rounded images" alt="" style="width: 120px">
            </div>
            <div class="four wide column">
                <div class="ui inverted link list">
                    <h4 class="ui inverted header m-opacity-mini">最新博客</h4>
                    <a href="#" class="item">用户故事</a>
                    <a href="#" class="item">最新的技术</a>
                    <a href="#" class="item">关于IT的趋势</a>
                </div>
            </div>
            <div class="four wide column">
                <div class="ui inverted link list">
                    <h4 class="ui inverted header m-opacity-mini">联系作者</h4>
                    <a href="#" class="item">姓名：BigFish</a>
                    <a href="#" class="item">邮箱：bigfish.alert@gmail.com</a>
                    <a href="#" class="item">地址：日本 东京</a>
                </div>
            </div>
            <div class="five wide column">
                <div class="ui inverted link list">
                    <h4 class="ui inverted header m-opacity-mini">心情</h4>
                    <a class="item">生活不止眼前的苟且，还有诗和远方。</a>
                </div>
            </div>
        </div>
        <div class="ui inverted section divider"></div>
        <p class="m-text-thin m-text-spaced m-opacity-mini">Paragraphs are usually represented in visual media as blocks of text </p>
    </div>
</footer>



<script src = "https://cdn.jsdelivr.net/npm/jquery@3.6/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.js"></script>
</body>

</html>