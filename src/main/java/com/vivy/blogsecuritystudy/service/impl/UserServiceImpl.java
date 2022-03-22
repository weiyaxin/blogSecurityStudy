package com.vivy.blogsecuritystudy.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vivy.blogsecuritystudy.dao.UserDao;
import com.vivy.blogsecuritystudy.entity.User;
import com.vivy.blogsecuritystudy.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserDao, User> implements UserService {
}
