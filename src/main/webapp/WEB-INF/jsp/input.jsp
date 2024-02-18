<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>編集Blog</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.css">
    <link rel="stylesheet" href="../../static/lib/editormd.min.css">
    <link rel="stylesheet" href="../../static/css/me.css"  >
</head>
<body>

<nav class="ui inverted attached segment m-padded-tb-mini">

    <div class="ui container">

        <div class="ui inverted secondary stackable menu">

            <h2 class="ui teal header item">編集Blog</h2>
            <a href="/index" class="item"><i class="home icon"></i> MyBlog</a>
            <a href="/type" class="item"><i class="idea icon"></i> 分類</a>
            <a href="#" class="item"><i class="tags icon"></i> 自己紹介</a>

            <div class="right dropdown menu">
                <div class="ui inline dropdown item">
                    <div class="text">
                        <img class="ui avatar image" src="../web/images/1.jpg" alt="">
                        BigFish
                    </div>
                    <i class=" dropdown icon"></i>
                    <div class="ui menu">
                        <a href="#"  class="ui inverted item">ログアウト</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<!--中间内容-->
<div class="m-container-small m-padded-tb-big">
    <form action="inputSubmit" method="post" class="ui form">
        <div class="field">
            <div class="ui left labeled input">
                <div class="ui selection compact teal basic dropdown label">
                    <input type="hidden" name="flagValue"  value="オリジナル">
                    <i class="ui dropdown icon"></i>
                    <div class=" text">オリジナル</div>
                    <div class="menu">
                        <div class="item" data-value="オリジナル">オリジナル</div>
                        <div class="item" data-value="Translate">Translate</div>
                        <div class="item" data-value="歴史">歴史</div>
                    </div>

                </div>
                <input type="text" name="title" placeholder="テーマ">
            </div>
        </div>

        <div class="required field">
            <div id="md-content" style="z-index: 1 !important;">
                <textarea placeholder="Blog内容" name="content" style="display: none">
                </textarea>
            </div>
        </div>

            <div class="field ">
                <div class="ui left labeled input">
                    <label class="ui teal basic label">写真</label>
                    <input type="text" name="indexPicture" placeholder="写真">
                </div>
            </div>
        <div class="field">
            <div style="z-index: 1 !important;">
                <textarea placeholder="プレビュー" name="preview" th:text="${blog}!=null ? ${blog.desc}" style="height: 100px" ></textarea>
            </div>
        </div>
        <div class="field">
            <div style="z-index: 1 !important;">
                <textarea placeholder="内容" name="content" th:text="${blog}!=null ? ${blog.desc}" style="height: 300px" ></textarea>
            </div>
        </div>

        <div class="field">
            <div class="ui checkbox">
                <input type="checkbox" name="comment" id="comment" class="hidden" value="false">
                <label for="comment">コメント</label>
            </div>
        </div>

        <div class="ui right aligned container">
            <button type="button" class="ui button" onclick="window.history.go(-1)">戻り</button>
            <button class="ui secondary button">commit</button>
        </div>
    </form>
</div>

<!--底部内容-->
<<footer class="ui inverted vertical segment m-padded-tb-massive">

    <div class="ui center aligned container">

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
                    <a href="#" class="item">名前：BigFish</a>
                    <a href="#" class="item">メール：xualert123@gmail.com</a>
                    <a href="#" class="item">アドレス：日本 东京</a>
                </div>
            </div>
            <div class="five wide column">
                <div class="ui inverted link list">
                    <h4 class="ui inverted header m-opacity-mini">SNS情報</h4>
                    <a class="item">https://github.com/bigfish-404/springBoot-Project</a>
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
<script src="../../static/lib/editormd/editormd.amd.min.js"  ></script>
<script>
    // 初始化编辑
    var contentEditor;
    $(function() {
        contentEditor = editormd("md-content", {
            width   : "100%",
            height  : 640,
            syncScrolling : "single",
            path    : "../../static/lib/editormd/lib/"
        });

        /*
        // or
        testEditor = editormd({
            id      : "test-editormd",
            width   : "90%",
            height  : 640,
            path    : "../lib/"
        });
        */
    });
    $('.ui.dropdown')
        .dropdown()
    ;
    $('.ui.form').form({
        fields :{
            title :{
                identifier :'title',
                rules:[{
                    type :'empty',
                    prompt:'标题：请输入博客标题'
                }]
            }
        }
    })
</script>

</body>
</html>