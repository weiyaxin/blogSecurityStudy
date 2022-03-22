package com.vivy.blogsecuritystudy.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.vivy.blogsecuritystudy.dao.RoleDao;
import com.vivy.blogsecuritystudy.dto.RoleResourceDTO;
import com.vivy.blogsecuritystudy.entity.Role;
import com.vivy.blogsecuritystudy.service.RoleService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl extends ServiceImpl<RoleDao, Role> implements RoleService {

    @Override
    public List<String> getRolesByUserId(Integer id) {
        return baseMapper.getRolesByUserId(id);
    }

    @Override
    public List<RoleResourceDTO> getAllNotAnonymous() {
        return baseMapper.getAllNotAnonymous();
    }
}
