package com.bigfish.blog.po;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "t_input")
public class Input {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    //标题
    private String title;
    //preview
    private String preview;
    //内容
    private String content;
    //标记
    private String flag;
    //首图
    private String firstPicture;
    //评论开启
    private boolean commentAble;
    //创建时间
    private String  createTime;
    //更新时间
    private String  updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public String  getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getPreview() {
        return preview;
    }


    public void setPreview(String preview) {
        this.preview = preview;
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
