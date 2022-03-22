package com.vivy.blogsecuritystudy.exception;

import com.vivy.blogsecuritystudy.enums.StatusCodeEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;
import static com.vivy.blogsecuritystudy.enums.StatusCodeEnum.FAIL;

@Getter
@AllArgsConstructor
public class MyException extends RuntimeException{

    private Integer code= FAIL.getCode();

    private final String message;

    public MyException(String message){
        this.message=message;
    }

    public MyException(StatusCodeEnum codeEnum){
        this.code=codeEnum.getCode();
        this.message=codeEnum.getDesc();
    }
}
