package com.vivy.blogsecuritystudy.controller;

import com.vivy.blogsecuritystudy.dao.RoleDao;
import com.vivy.blogsecuritystudy.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @Autowired
    private RoleDao roleDao;

    @GetMapping("articles")
    public Result articles(){
        return Result.ok("articles");
    }

    @GetMapping("listResourceRoles")
    public Result listResourceRoles(){
        return Result.ok("listResourceRoles");
    }

    @GetMapping("/admin/articles")
    public Result adminArticles(){
        return Result.ok("adminArticles");
    }

    @PostMapping("/admin/articles")
    public Result saveOrUpdateArticle(){
        return Result.ok("saveOrUpdateArticle");
    }

}
