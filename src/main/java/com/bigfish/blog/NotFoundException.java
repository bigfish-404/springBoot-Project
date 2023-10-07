package com.bigfish.blog;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;
  /*
    例外が発生した場合のHTTP応答ステータスコードを指定しています
   */

//@ResponseStatusは例外クラスに対してHTTP応答ステータスコードとその他のHTTP応答情報を設定するために使用されます
@ResponseStatus(HttpStatus.NOT_FOUND)
public class NotFoundException extends RuntimeException{

    //NotFoundExceptionという例外が発生すると、HTTP応答のステータスコードが404（NOT_FOUND）を設定されます
    public NotFoundException() {
    }

    public NotFoundException(String message) {
        super(message);
    }
}
