package com.vivy.blogsecuritystudy.handler;

import com.vivy.blogsecuritystudy.dto.UserDetailsDTO;
import com.vivy.blogsecuritystudy.vo.Result;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 登录成功
 */
@Component
public class MyAuthenticationSuccessHandler implements AuthenticationSuccessHandler {


    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        UserDetailsDTO dto = (UserDetailsDTO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        httpServletResponse.setContentType("application/json;charset=utf-8");
        httpServletResponse.getWriter().print(Result.ok(dto));
    }
}
