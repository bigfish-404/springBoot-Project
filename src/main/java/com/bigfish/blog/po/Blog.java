package com.bigfish.blog.po;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//`@Entity` 注解表示这个类是一个实体，将被映射到数据库表。
@Entity
//`@Table` 注解指定了这个实体将被映射到数据库中的哪个表。
@Table(name = "t_blog")
public class Blog {
    //`@Id` 注解表示 `id` 字段是表的主键。`
    @Id
    //@GeneratedValue` 注解指定当插入新行时，主键的值将由数据库自动生成。
    //strategy = GenerationType.IDENTITY` 表示使用自增列方式生成主键值，这种方式通常在 MySQL 中使用。
    // 在其他数据库中，可能需要使用其他的主键生成策略，如序列（SEQUENCE）或表（TABLE）方式。
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    //标题
    private String title;
    //内容
    private String content;
    //首图
    private String firstPicture;
    //标记
    private String flag;
    //浏览次数
    private Integer view;
    //赞赏开启
    private boolean appreciation;
    //版权开启
    private boolean shareStatement;
    //评论开启
    private boolean commentAble;
    //发布
    private boolean published;
    //是否推荐
    private boolean recommend;
    //创建时间
    @Temporal(TemporalType.TIMESTAMP)
    private Date createTime;
    //更新时间
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateTime;

    //`@ManyToOne` 注解表示 `type` 属性与分类实体之间是多对一的关系，即一个博客实体只能属于一个分类实体。在数据库中，这个关系通常通过外键实现。
    @ManyToOne
    private Type type;

    // `@ManyToMany` 注解表示 `tags` 属性与标签实体之间是多对多的关系，即一个博客实体可以拥有多个标签实体， 而一个标签实体也可以被多个博客实体共享。
    // `cascade = {CascadeType.PERSIST}` 意味着当博客实体被持久化时，相关的标签实体也会被自动持久化，以确保这些实体之间的关系正确保存到数据库中。
    @ManyToMany(cascade = {CascadeType.PERSIST})
    private List<Tag> tags = new ArrayList<>();

    @ManyToOne
    private User user;

    @OneToMany(mappedBy = "blog")
    private List<Comment> comments =new ArrayList<>();

    public Blog() {
    }

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

    public String getFirstPicture() {
        return firstPicture;
    }

    public void setFirstPicture(String firstPicture) {
        this.firstPicture = firstPicture;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public Integer getView() {
        return view;
    }

    public void setView(Integer view) {
        this.view = view;
    }

    public boolean isAppreciation() {
        return appreciation;
    }

    public void setAppreciation(boolean appreciation) {
        this.appreciation = appreciation;
    }

    public boolean isShareStatement() {
        return shareStatement;
    }

    public void setShareStatement(boolean shareStatement) {
        this.shareStatement = shareStatement;
    }

    public boolean isCommentAble() {
        return commentAble;
    }

    public void setCommentAble(boolean commentAble) {
        this.commentAble = commentAble;
    }

    public boolean isPublished() {
        return published;
    }

    public void setPublished(boolean published) {
        this.published = published;
    }

    public boolean isRecommend() {
        return recommend;
    }

    public void setRecommend(boolean recommend) {
        this.recommend = recommend;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public List<Tag> getTags() {
        return tags;
    }

    public void setTags(List<Tag> tags) {
        this.tags = tags;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", firstPicture='" + firstPicture + '\'' +
                ", flag='" + flag + '\'' +
                ", view=" + view +
                ", appreciation=" + appreciation +
                ", shareStatement=" + shareStatement +
                ", commentAble=" + commentAble +
                ", published=" + published +
                ", recommend=" + recommend +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
