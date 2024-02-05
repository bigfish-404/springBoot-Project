package com.bigfish.blog.po;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "t_input")
public class Input {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    //标题
    private String title;
    //内容
    private String content;
    //标记
    private String flag;
    //首图
    private String firstPicture;
    //评论开启
    private boolean commentAble;
    //创建时间
    @Temporal(TemporalType.TIMESTAMP)
    private Date createTime;
    //更新时间
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getFirstPicture() {
        return firstPicture;
    }

    public void setFirstPicture(String firstPicture) {
        this.firstPicture = firstPicture;
    }

    public boolean isCommentAble() {
        return commentAble;
    }

    public void setCommentAble(boolean commentAble) {
        this.commentAble = commentAble;
    }

    @PrePersist
    protected void onCreate() {
        createTime = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        updateTime = new Date();
    }

    @Override
    public String toString() {
        return "Input{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", flag='" + flag + '\'' +
                ", firstPicture='" + firstPicture + '\'' +
                ", commentAble=" + commentAble +
                ", published=" +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
