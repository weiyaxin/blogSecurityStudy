package com.vivy.blogsecuritystudy.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.vivy.blogsecuritystudy.dto.ResourceRoleDTO;
import com.vivy.blogsecuritystudy.dto.RoleResourceDTO;
import com.vivy.blogsecuritystudy.entity.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 角色
 *
 * @author yezhiqiu
 * @date 2021/07/28
 */
@Repository
public interface RoleDao extends BaseMapper<Role> {

    /**
     * 根据用户id查询角色
     * @param id
     * @return
     */
    List<String> getRolesByUserId(@Param("id") Integer id);

    /**
     * 查询路由角色列表
     *
     * @return 角色标签
     */
    List<ResourceRoleDTO> listResourceRoles();

    /**
     * 查询所有非匿名访问的资源
     * @return
     */
    List<RoleResourceDTO> getAllNotAnonymous();
}
