<%@ page import="com.bigfish.blog.po.Input" %>
<%@ page import="java.util.Optional" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name = "viewport" content="with = device - width, initial - scale = 1.0">
    <title>Blog</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.css">
    <link rel="stylesheet" href="../static/css/me.css" th:href="@{/css/me.css}" >
</head>
<body>

<!--メニュー-->
<nav class="ui inverted attached segment">
    <div class="ui container">
        <div class="ui inverted secondary menu">
            <h2 class="ui teal header item">BigFish</h2>
            <a href="/index" class="item"><i class="icon home"></i>ホームページ</a>
            <a href="/backstage" class="item"><i class="icon idea"></i>分類</a>
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
<div class="m-container-small m-padded-tb">
    <div class="ui container">
        <div class="ui top attached segment">
            <div class="ui mini horizontal link list">
                <%

                    Optional<Input> articleMessage = (Optional<Input>) request.getAttribute("articleMessage");

                    if (articleMessage != null && !articleMessage.isEmpty()){
                        Input articles =  articleMessage.get();
                %>
                <div class="item">
                    <img src="../static/images/2.jpg"  alt="" class="ui avatar image">
                    <div class="content"><a href="#" class="header">BigFish</a> </div>
                </div>
            </div>
        </div>
        <div class="ui center aligned attached segment">
            <img src="<%= articles.getFirstPicture() %>"  class="ui rounded images" style="width: 400px" >

        </div>
        <div class="ui  attached segment">
            <div class="ui right aligned basic segment">
                <div class="ui basic orange label"><%= articles.getFlag() %></div>
            </div>
            <h2 class="ui center aligned header"><%= articles.getTitle() %></h2>
            <br>
            <div class="m-margin-tb"><%= articles.getContent() %></div>
            <br>
            <br>
            <br>

        </div>
        <div class="ui attached positive message">
            <div class="ui middle aligned grid">
                <div class="eleven wide column">
                    <h4>作者：BigFish</h4>
                    <h4><%= articles.getUpdateTime() %></h4>
                </div>
                <%

                    }
                %>
                <div class="five wide column">
                    <a>
                        <img src="../static/images/WeChat.jpg"  th:src="@{/images/WeChat.jpg}" class="ui rounded right floated images" alt="" style="width: 120px">
                    </a>
                </div>
            </div>
        </div>
        <div class="ui attached bottom segment">
            <div class="ui minimal comments">
                <h3 class="ui dividing header">Comments</h3>
                <div class="comment">
                    <a class="avatar">
                        <img src="../static/images/3.jpg" th:src="@{/images/3.jpg}" class="ui avatar image">
                    </a>
                    <div class="content">
                        <a class="author">Matt</a>
                        <div class="metadata">
                            <span class="date">Today at 5:42PM</span>
                        </div>
                        <div class="text">
                            How artistic!
                        </div>
                        <div class="actions">
                            <a class="reply">Reply</a>
                        </div>
                    </div>
                </div>
                <div class="comment">
                    <a class="avatar">
                        <img src="../static/images/3.jpg" th:src="@{/images/3.jpg}" class="ui avatar image">
                    </a>
                    <div class="content">
                        <a class="author">Elliot Fu</a>
                        <div class="metadata">
                            <span class="date">Yesterday at 12:30AM</span>
                        </div>
                        <div class="text">
                            <p>This has been very useful for my research. Thanks as well!</p>
                        </div>
                        <div class="actions">
                            <a class="reply">Reply</a>
                        </div>
                    </div>
                    <div class="comments">
                        <div class="comment">
                            <a class="avatar">
                                <img src="../static/images/3.jpg" th:src="@{/images/3.jpg}" class="ui avatar image">
                            </a>
                            <div class="content">
                                <a class="author">Jenny Hess</a>
                                <div class="metadata">
                                    <span class="date">Just now</span>
                                </div>
                                <div class="text">
                                    Elliot you are always so right :)
                                </div>
                                <div class="actions">
                                    <a class="reply">Reply</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="comment">
                    <a class="avatar">
                        <img src="../static/images/3.jpg" th:src="@{/images/3.jpg}" class="ui avatar image">
                    </a>
                    <div class="content">
                        <a class="author">Joe Henderson</a>
                        <div class="metadata">
                            <span class="date">5 days ago</span>
                        </div>
                        <div class="text">
                            Dude, this is awesome. Thanks so much
                        </div>
                        <div class="actions">
                            <a class="reply">Reply</a>
                        </div>
                    </div>
                </div>
                <form class="ui reply form">
                    <div class="field">
                        <textarea></textarea>
                    </div>
                    <div class="ui blue labeled submit icon button">
                        <i class="icon edit"></i> Add Reply
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--footer-->
<footer class="ui inverted vertical segment m-padded-tb-massive">
    <div class="ui center aligned container">
        <div class="ui inverted divided grid">
            <div class="four wide column ">
                <div class="item">
                    <img src="../static/images/WeChat.jpg" class="ui rounded image " alt="" style="width: 180px">
                </div>
            </div>
            <div class="four wide column">
                <h4 class="ui inverted header m-opacity-mini">最新情報</h4>
                <div class="ui inverted link list">
                    <a href="#" class="item">User Story</a>
                    <a href="#" class="item">ITについて</a>
                    <a href="#" class="item">自己紹介</a>
                </div>
            </div>
            <div class="seven wide column">
                <h4 class="ui inverted header">SNS情報</h4>
                <div class="ui inverted link list">
                    <a href="#" class="item">https://github.com/bigfish-404/springBoot-Project</a>
                </div>
            </div>
        </div>
    </div>
</footer>



<script src = "https://cdn.jsdelivr.net/npm/jquery@3.6/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.5.0/dist/semantic.min.js"></script>
</body>

</html>