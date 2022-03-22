package com.vivy.blogsecuritystudy.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.vivy.blogsecuritystudy.dto.RoleResourceDTO;
import com.vivy.blogsecuritystudy.entity.Role;

import java.util.List;

public interface RoleService extends IService<Role> {
    /**
     * 根据用户id查角色
     * @param id
     * @return
     */
    List<String> getRolesByUserId(Integer id);

    /**
     * 查询所有非匿名访问的资源
     * @return
     */
    List<RoleResourceDTO> getAllNotAnonymous();
}
