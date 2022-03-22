package com.vivy.blogsecuritystudy.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.vivy.blogsecuritystudy.dto.UserDetailsDTO;
import com.vivy.blogsecuritystudy.entity.User;
import com.vivy.blogsecuritystudy.exception.MyException;
import com.vivy.blogsecuritystudy.service.RoleService;
import com.vivy.blogsecuritystudy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        if (StringUtils.isBlank(s)){
            throw new MyException("用户名不能为空");
        }
        User user = userService.getOne(new QueryWrapper<User>().eq("username", s));
        if (user == null) {
            throw new MyException("用户不存在");
        }
        List<String>roles=roleService.getRolesByUserId(user.getId());
        return UserDetailsDTO.builder().id(user.getId()).username(user.getUsername()).password(user.getPassword()).isDisable(user.isDisable()).roles(roles).build();
    }
}
