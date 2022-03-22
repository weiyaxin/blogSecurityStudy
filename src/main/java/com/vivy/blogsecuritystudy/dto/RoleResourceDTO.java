package com.vivy.blogsecuritystudy.dto;

import lombok.Data;

import java.util.List;

@Data
public class RoleResourceDTO {

    private Integer id;
    private String url;
    private String method;
    private List<String> roleLabel;

}
