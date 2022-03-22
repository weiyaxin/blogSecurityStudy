package com.vivy.blogsecuritystudy.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vivy.blogsecuritystudy.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao extends BaseMapper<User> {
}
