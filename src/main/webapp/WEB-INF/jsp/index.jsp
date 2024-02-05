<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name = "viewport" content="with = device - width, initial - scale = 1.0">
    <title>ホームページ</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.css">
    <link rel="stylesheet" href="../static/css/me.css" >

</head>
<body>

<!--メニュー-->
    <nav  class="ui inverted attached segment">
        <div class="ui container">
            <div class="ui inverted secondary menu">
                <h2 class="ui teal header item">BigFish</h2>
                <a href="/index" class="item"><i class="icon home"></i>ホームページ</a>
                <a href="/type" class="item"><i class="icon idea"></i>分類</a>
                <a href="/input" class="item"><i class="icon tags"></i>編集</a>
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
<div class="ui attached vertical segment m-container-small m-padded-tb">
    <div class="ui padded container ">
        <div class="ui grid">
                    <div class="ui middle aligned two column grid">
                        <div class="ui  column">
                            <h3 class="ui teal  header">MyBlog</h3>
                        </div>
                    </div>
                </div>

                <!--列表-->
                <div class="ui attached segment">
                    <div class="ui segment">
                        <div class="ui grid">
                            <div class="eleven wide column">
                                <a href="#" class="ui header">Java入門！言語の特徴や環境構築・基本処理の記述方法を解説！</a>
                                <div class="ui inverted selected divider"></div>
                                <p>Javaは開発者から非常に人気のプログラミング言語です。一度書いたプログラムはプラットフォームに依存せずに実行できるため、OS間をまたいだ開発をする際に、移植の手間を省くことができます。この記事では、
                                    「Java入門」と称して、基礎知識や基本的な文法を解説します。初心者の方も、ぜひ記事を参考にJavaを利用してみてください。</p>

                                <div class="ui grid">
                                    <div class="eleven wide column">
                                        <div class="ui horizontal link list">
                                            <div class="item">
                                                <!--&lt;!&ndash;avatar:圆形小图片  springboot需要引用绝对路径-->
                                                <img src="${pageContext.request.contextPath}/static/images/2.jpg"  alt="#" class="ui avatar image">
                                                <div class="content">
                                                    <a href="#" class="header">BigFish</a>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <i class="calendar icon"></i>2023-04-30
                                            </div>
                                        </div>
                                    </div>
                                    <div class="right aligned four wide column">
                                        <a href="#" target="_blank" class="ui teal basic label">IT情報</a>
                                    </div>
                                </div>
                            </div>

                            <div class="five wide column">
                                <div class="ui center aligned container">
                                    <a href="" target=_blank>
                                        <img src="../../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="" class="ui rounded" style="width: 150px; height: 150px" >
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="ui attached segment">
                    <div class="ui segment">
                        <div class="ui grid">
                            <div class="eleven wide column">
                                <a href="#" class="ui header">自己紹介</a>
                                <div class="ui inverted selected divider"></div>
                                <p>Chat-GPT是一种基于GPT-3.5架构的大型语言模型，由OpenAI开发。它使用深度学习技术，通过大量的自然语言语料库进行训练，以便可以生成逼真的自然语言响应。
                                    Chat-GPT的主要应用是在自然语言处理领域，它可以用于各种任务，例如问答、文本生成、自动翻译、文本分类等。</p>

                                <div class="ui grid">
                                    <div class="eleven wide column">
                                        <div class="ui horizontal link list">
                                            <div class="item">
                                                <!--&lt;!&ndash;avatar:圆形小图片  springboot需要引用绝对路径-->
                                                <img src="../static/images/2.jpg" alt="#" class="ui avatar image">
                                                <div class="content">
                                                    <a href="#" class="header">BigFish</a>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <i class="calendar icon"></i>2023-04-30
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
                                        <img src="../../static/images/2.jpg"  alt="" class="ui rounded" style="width: 150px; height: 150px" >
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="ui attached segment">
                    <div class="ui segment">
                        <div class="ui grid">
                            <div class="eleven wide column">
                                <a href="#" class="ui header">Chat-GPT简介</a>
                                <div class="ui inverted selected divider"></div>
                                <p>Chat-GPT是一种基于GPT-3.5架构的大型语言模型，由OpenAI开发。它使用深度学习技术，通过大量的自然语言语料库进行训练，以便可以生成逼真的自然语言响应。
                                    Chat-GPT的主要应用是在自然语言处理领域，它可以用于各种任务，例如问答、文本生成、自动翻译、文本分类等。</p>

                                <div class="ui grid">
                                    <div class="eleven wide column">
                                        <div class="ui horizontal link list">
                                            <div class="item">
                                                <!--&lt;!&ndash;avatar:圆形小图片  springboot需要引用绝对路径-->
                                                <img src="../../static/images/2.jpg"  alt="#" class="ui avatar image">
                                                <div class="content">
                                                    <a href="#" class="header">BigFish</a>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <i class="calendar icon"></i>2023-04-30
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
                                        <img src="../../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="" class="ui rounded" style="width: 150px; height: 150px" >
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="ui attached segment">
                    <div class="ui segment">
                        <div class="ui grid">
                            <div class="eleven wide column">
                                <a href="#" class="ui header">Chat-GPT简介</a>
                                <div class="ui inverted selected divider"></div>
                                <p>Chat-GPT是一种基于GPT-3.5架构的大型语言模型，由OpenAI开发。它使用深度学习技术，通过大量的自然语言语料库进行训练，以便可以生成逼真的自然语言响应。
                                    Chat-GPT的主要应用是在自然语言处理领域，它可以用于各种任务，例如问答、文本生成、自动翻译、文本分类等。</p>

                                <div class="ui grid">
                                    <div class="eleven wide column">
                                        <div class="ui horizontal link list">
                                            <div class="item">
                                                <!--&lt;!&ndash;avatar:圆形小图片  springboot需要引用绝对路径-->
                                                <img src="../../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="#" class="ui avatar image">
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
                                        <img src="../../static/images/2.jpg" th:src="@{/images/2.jpg}" alt="" class="ui rounded" style="width: 150px; height: 150px" >
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--下面按键栏-->
                <div class="ui attached segment">
                    <div class="ui middle aligned two column grid">
                        <div class="column">
                            <a href="#" class="ui button icon">上一页</a>
                        </div>
                        <div class="right aligned column">
                            <a href="#" class="ui button icon">下一页</a>
                        </div>
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



<script src = "https://cdn.jsdelivr.net/npm/jquery@3.6/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.js"></script>
</body>

</html>