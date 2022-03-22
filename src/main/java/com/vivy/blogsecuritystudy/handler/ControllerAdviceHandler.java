package com.vivy.blogsecuritystudy.handler;

import com.vivy.blogsecuritystudy.exception.MyException;
import com.vivy.blogsecuritystudy.vo.Result;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.Objects;

import static com.vivy.blogsecuritystudy.enums.StatusCodeEnum.SYSTEM_ERROR;
import static com.vivy.blogsecuritystudy.enums.StatusCodeEnum.VALID_ERROR;

@RestControllerAdvice
public class ControllerAdviceHandler {

    @ExceptionHandler(MyException.class)
    public Result<?> error(MyException e){
        return Result.fail(e.getCode(),e.getMessage());
    }

    @ExceptionHandler(Exception.class)
    public Result<?> error(Exception e){
        return Result.fail(SYSTEM_ERROR.getCode(),SYSTEM_ERROR.getDesc());
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Result<?>error(MethodArgumentNotValidException e){
        return Result.fail(VALID_ERROR.getCode(), Objects.requireNonNull(e.getBindingResult().getFieldError()).getDefaultMessage());
    }
}
