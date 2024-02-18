<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>publishSucceed</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.css">
    <link rel="stylesheet" href="../../static/css/me.css" th:href="@{/css/me.css}" >
</head>
<body>

<nav class="ui inverted attached segment m-padded-tb-mini">

    <div class="ui container">

        <div class="ui inverted secondary stackable menu">

            <h2 class="ui teal header item">管理后台</h2>
            <a href="/index"  class="item"><i class="home icon"></i> MyBlog</a>
            <a href="/type"  class="item"><i class="idea icon"></i> 分類</a>
            <a href="/input"  class="item"><i class="tags icon"></i> 編集</a>
            <a href="/input"  class="item"><i class="tags icon"></i> 自己紹介</a>

            <div class="right dropdown menu">
                <!--transparent：透明的-->
                <div class="ui inline dropdown item">
                    <div class="text">
                        <img class="ui avatar image" src="../web/images/1.jpg" alt="">
                        BigFish
                    </div>
                    <i class=" dropdown icon"></i>
                    <div class="ui menu">
                        <a href="admin/logout"  class="ui inverted item">ログアウト</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<div class="m-container-small m-padded-tb-big">
    <div class="ui container">
        <div class="ui success large message ">
            <h3>Hi,</h3>
            <p>編集成功</p>
        </div>
        <img src="https://unsplash.it/1000/400?image=4" alt="" class="ui rounded bordered fluid image">

    </div>
</div>
<!--底部内容-->
<!--footer代表底部的的意思，都是实现分块，但是名字不同增加代码的可读性-->
<!--"vertical segment" 类用于指定该元素为垂直方向的段落，并提供适当的上下边距。-->
<footer class="ui inverted vertical segment m-padded-tb-massive">

    <!--"center aligned" 类用于指定该元素在水平方向上居中对齐。
    "container" 类用于指定该元素为一个容器，具有最大宽度并在页面中居中-->
    <div class="ui center aligned container">

        <!--grid:网格布局，一共16份 three wide column 代表这一块占三份-->
        <div class="ui inverted divided grid">
            <div class="three wide column">
                <img src="../../static/images/WeChat.jpg" th:src="@{/images/WeChat.jpg}" class="ui rounded images" alt="" style="width: 120px">
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
        <!--分割线-->
        <!--section" 类用于指定该元素为UI中的一个部分或区域。 "divider" 类用于指定该元素为分割线或分隔符。-->
        <div class="ui inverted section divider"></div>
        <p class="m-text-thin m-text-spaced m-opacity-mini">Paragraphs are usually represented in visual media as blocks of text </p>
    </div>
</footer>

<!--引入jquery的链接-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6/dist/jquery.min.js"></script>

<!--导入Semantic UI 框架，在首尾都需要引入-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.js"></script>

<script>
    $('.ui.dropdown')
        .dropdown()
    ;
</script>

</body>
</html>