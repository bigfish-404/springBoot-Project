package com.bigfish.blog.handler;
import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

    /*
        例外ハンドリングに関連するもので、通常はコントローラーで発生した例外を処理するために使用されます
    */

@ControllerAdvice//グローバル例外ハンドラを定義するために使用されます、全部例外を一元的に処理します
public class ControllerExceptionHandler {

    //ログを記録するためにLoggerオブジェクトを作成する
    private final Logger logger = LoggerFactory.getLogger(this.getClass());


    @ExceptionHandler(Exception.class) //処理する例外の型を指定し、全て例外の型を処理します
    public ModelAndView exceptionHandler(HttpServletRequest request,Exception e){

        //例外情報をログに記録します、loggerオブジェクトを使用し、リクエストのURLとキャッチされた例外の詳細情報をログに記録します
        logger.error("Request URL : {}, Exception : {}",request.getRequestURL(),e);

        //ModelAndViewオブジェクトを作成した、データとビュー情報をカプセル化します
        ModelAndView mv =  new ModelAndView();
        //リクエストのURLとキャッチされた例外をモデルに追加します
        mv.addObject("url",request.getRequestURL());
        mv.addObject("exception",e);

        //ビューのパスを設定します
        mv.setViewName("error/error");

        //mvオブジェクトを返します
        return mv;
    }
}
