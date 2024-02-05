<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name = "viewport" content="with = device - width, initial - scale = 1.0">
    <title>分類</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.css">
    <link rel="stylesheet" href="../static/css/me.css" th:href="@{/css/me.css}" >
</head>
<body>

<!--メニュー-->
<nav class="ui inverted attached segment">
    <div class="ui container">
        <div class="ui inverted secondary menu">
            <h2 class="ui teal header item">BigFish</h2>
            <a href="#" class="item"><i class="icon home"></i>ホームページ</a>
            <a href="#" class="item"><i class="icon idea"></i>分類</a>
            <a href="#" class="item"><i class="icon tags"></i>タグ</a>
            <a href="#" class="item"><i class="icon info"></i>自己紹介</a>

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
                    <h3 class="ui teal header">分類</h3>
                </div>
                <div class="right aligned column">
                    共<h2 class="ui orange header m-inline-block m-text-thin">14</h2>个
                </div>
            </div>
        </div>

        <div class="ui attached segment">
            <div class="ui labeled button m-margin-tb">
                <a href="#" class="ui basic teal button">思考与感悟</a>
                <div class="ui basic teal left pointing label">24</div>
            </div>
            <div class="ui labeled button m-margin-tb">
                <a href="#" class="ui basic teal button">思考与感悟</a>
                <div class="ui basic teal left pointing label">24</div>
            </div>
            <div class="ui labeled button m-margin-tb">
                <a href="#" class="ui basic teal button">思考与感悟</a>
                <div class="ui basic teal left pointing label">24</div>
            </div>
            <div class="ui labeled button m-margin-tb">
                <a href="#" class="ui basic teal button">思考与感悟</a>
                <div class="ui basic teal left pointing label">24</div>
            </div>
            <div class="ui labeled button m-margin-tb">
                <a href="#" class="ui basic teal button">思考与感悟</a>
                <div class="ui basic teal left pointing label">24</div>
            </div>
        </div>

        <div class="ui segment">
            <div class="ui grid">
                <div class="eleven wide column">
                    <a href="#" class="ui header">Chat-GPT简介</a>
                    <div class="ui inverted selected divider"></div>
                    <p>Chat-GPT是一种基于GPT-3.5架构的大型语言模型，由OpenAI开发。它使用深度学习技术，通过大量的自然语言语料库进行训练，以便可以生成逼真的自然语言响应。
                        Chat-GPT的主要应用是在自然语言处理领域，它可以用于各种任务，例如问答、文本生成、自动翻译、文本分类等。</p>

                    <div class="ui stackable grid">
                        <div class="eleven wide column">
                            <div class="ui horizontal link list">
                                <div class="item">
                                    <!--&lt;!&ndash;avatar:圆形小图片  springboot需要引用绝对路径-->
                                    <img src="../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="#" class="ui avatar image">
                                    <div class="content">
                                        <a href="#" class="header">BigFish</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <i class="calendar icon"></i>2023-04-30
                                </div>
                                <div class="item">
                                    <i class="eye icon"></i> 2002
                                </div>
                            </div>
                        </div>
                        <div class="right aligned four wide column">
                            <a href="#" target="_blank" class="ui teal basic label">行业信息</a>
                        </div>
                    </div>
                </div>

                <div class="five wide column">
                    <div class="ui center aligned container">
                        <a href="" target=_blank>
                            <img src="../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="" class="ui rounded" style="width: 150px; height: 150px" >
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="ui segment">
            <div class="ui grid">
                <div class="eleven wide column">
                    <a href="#" class="ui header">Chat-GPT简介</a>
                    <div class="ui inverted selected divider"></div>
                    <p>Chat-GPT是一种基于GPT-3.5架构的大型语言模型，由OpenAI开发。它使用深度学习技术，通过大量的自然语言语料库进行训练，以便可以生成逼真的自然语言响应。
                        Chat-GPT的主要应用是在自然语言处理领域，它可以用于各种任务，例如问答、文本生成、自动翻译、文本分类等。</p>

                    <div class="ui stackable grid">
                        <div class="eleven wide column">
                            <div class="ui horizontal link list">
                                <div class="item">
                                    <!--&lt;!&ndash;avatar:圆形小图片  springboot需要引用绝对路径-->
                                    <img src="../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="#" class="ui avatar image">
                                    <div class="content">
                                        <a href="#" class="header">BigFish</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <i class="calendar icon"></i>2023-04-30
                                </div>
                                <div class="item">
                                    <i class="eye icon"></i> 2002
                                </div>
                            </div>
                        </div>
                        <div class="right aligned four wide column">
                            <a href="#" target="_blank" class="ui teal basic label">行业信息</a>
                        </div>
                    </div>
                </div>

                <div class="five wide column">
                    <div class="ui center aligned container">
                        <a href="" target=_blank>
                            <img src="../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="" class="ui rounded" style="width: 150px; height: 150px" >
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="ui attached segment">
            <div class="ui grid">
                <div class="eleven wide column">
                    <a href="#" class="ui header">Chat-GPT简介</a>
                    <div class="ui inverted selected divider"></div>
                    <p>Chat-GPT是一种基于GPT-3.5架构的大型语言模型，由OpenAI开发。它使用深度学习技术，通过大量的自然语言语料库进行训练，以便可以生成逼真的自然语言响应。
                        Chat-GPT的主要应用是在自然语言处理领域，它可以用于各种任务，例如问答、文本生成、自动翻译、文本分类等。</p>

                    <div class="ui stackable grid">
                        <div class="eleven wide column">
                            <div class="ui horizontal link list">
                                <div class="item">
                                    <!--&lt;!&ndash;avatar:圆形小图片  springboot需要引用绝对路径-->
                                    <img src="../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="#" class="ui avatar image">
                                    <div class="content">
                                        <a href="#" class="header">BigFish</a>
                                    </div>
                                </div>
                                <div class="item">
                                    <i class="calendar icon"></i>2023-04-30
                                </div>
                                <div class="item">
                                    <i class="eye icon"></i> 2002
                                </div>
                            </div>
                        </div>
                        <div class="right aligned four wide column">
                            <a href="#" target="_blank" class="ui teal basic label">行业信息</a>
                        </div>
                    </div>
                </div>

                <div class="five wide column">
                    <div class="ui center aligned container">
                        <a href="" target=_blank>
                            <img src="../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="" class="ui rounded" style="width: 150px; height: 150px" >
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!--footer-->
        <div class="ui bottom attached segment">
            <div class="ui middle aligned two column grid">
                <div class="ui left aligned column">
                    <a href="#" class="ui mini teal basic button">上一页</a>
                </div>
                <div class="ui right aligned column">
                    <a href="#" class="ui mini teal basic button">下一页</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!--footer-->
<footer class="ui inverted vertical segment m-padded-tb-massive">

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