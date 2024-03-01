package com.bigfish.blog.interceptor;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configurable
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // LoginInterceptorを追加し、特定のパスへのアクセスにインターセプトを適用します
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/jsp/**")        // "/admin/"で始まるすべてのパスに対してインターセプトを適用
                .excludePathPatterns("/admin");       // "/admin"へのアクセスは除外
        WebMvcConfigurer.super.addInterceptors(registry);
    }
}

