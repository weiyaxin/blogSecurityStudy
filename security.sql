/*
Navicat MySQL Data Transfer

Source Server         : .
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : security

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2022-03-22 22:18:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `order_num` tinyint(1) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('1', '首页', '/', '/home/Home.vue', 'el-icon-myshouye', '2021-01-26 17:06:51', '2021-01-26 17:06:53', '1', null, '0');
INSERT INTO `tb_menu` VALUES ('2', '文章管理', '/article-submenu', 'Layout', 'el-icon-mywenzhang-copy', '2021-01-25 20:43:07', '2021-01-25 20:43:09', '2', null, '0');
INSERT INTO `tb_menu` VALUES ('3', '消息管理', '/message-submenu', 'Layout', 'el-icon-myxiaoxi', '2021-01-25 20:44:17', '2021-01-25 20:44:20', '3', null, '0');
INSERT INTO `tb_menu` VALUES ('4', '系统管理', '/system-submenu', 'Layout', 'el-icon-myshezhi', '2021-01-25 20:45:57', '2021-01-25 20:45:59', '5', null, '0');
INSERT INTO `tb_menu` VALUES ('5', '个人中心', '/setting', '/setting/Setting.vue', 'el-icon-myuser', '2021-01-26 17:22:38', '2021-01-26 17:22:41', '7', null, '0');
INSERT INTO `tb_menu` VALUES ('6', '发布文章', '/articles', '/article/Article.vue', 'el-icon-myfabiaowenzhang', '2021-01-26 14:30:48', '2021-01-26 14:30:51', '1', '2', '0');
INSERT INTO `tb_menu` VALUES ('7', '修改文章', '/articles/*', '/article/Article.vue', 'el-icon-myfabiaowenzhang', '2021-01-26 14:31:32', '2021-01-26 14:31:34', '2', '2', '1');
INSERT INTO `tb_menu` VALUES ('8', '文章列表', '/article-list', '/article/ArticleList.vue', 'el-icon-mywenzhangliebiao', '2021-01-26 14:32:13', '2021-01-26 14:32:16', '3', '2', '0');
INSERT INTO `tb_menu` VALUES ('9', '分类管理', '/categories', '/category/Category.vue', 'el-icon-myfenlei', '2021-01-26 14:33:42', '2021-01-26 14:33:43', '4', '2', '0');
INSERT INTO `tb_menu` VALUES ('10', '标签管理', '/tags', '/tag/Tag.vue', 'el-icon-myicontag', '2021-01-26 14:34:33', '2021-01-26 14:34:36', '5', '2', '0');
INSERT INTO `tb_menu` VALUES ('11', '评论管理', '/comments', '/comment/Comment.vue', 'el-icon-mypinglunzu', '2021-01-26 14:35:31', '2021-01-26 14:35:34', '1', '3', '0');
INSERT INTO `tb_menu` VALUES ('12', '留言管理', '/messages', '/message/Message.vue', 'el-icon-myliuyan', '2021-01-26 14:36:09', '2021-01-26 14:36:13', '2', '3', '0');
INSERT INTO `tb_menu` VALUES ('13', '用户列表', '/users', '/user/User.vue', 'el-icon-myyonghuliebiao', '2021-01-26 14:38:09', '2021-01-26 14:38:12', '1', '202', '0');
INSERT INTO `tb_menu` VALUES ('14', '角色管理', '/roles', '/role/Role.vue', 'el-icon-myjiaoseliebiao', '2021-01-26 14:39:01', '2021-01-26 14:39:03', '2', '213', '0');
INSERT INTO `tb_menu` VALUES ('15', '接口管理', '/resources', '/resource/Resource.vue', 'el-icon-myjiekouguanli', '2021-01-26 14:40:14', '2021-08-07 20:00:28', '2', '213', '0');
INSERT INTO `tb_menu` VALUES ('16', '菜单管理', '/menus', '/menu/Menu.vue', 'el-icon-mycaidan', '2021-01-26 14:40:54', '2021-08-07 10:18:49', '2', '213', '0');
INSERT INTO `tb_menu` VALUES ('17', '友链管理', '/links', '/friendLink/FriendLink.vue', 'el-icon-mydashujukeshihuaico-', '2021-01-26 14:41:35', '2021-01-26 14:41:37', '3', '4', '0');
INSERT INTO `tb_menu` VALUES ('18', '关于我', '/about', '/about/About.vue', 'el-icon-myguanyuwo', '2021-01-26 14:42:05', '2021-01-26 14:42:10', '4', '4', '0');
INSERT INTO `tb_menu` VALUES ('19', '日志管理', '/log-submenu', 'Layout', 'el-icon-myguanyuwo', '2021-01-31 21:33:56', '2021-01-31 21:33:59', '6', null, '0');
INSERT INTO `tb_menu` VALUES ('20', '操作日志', '/operation/log', '/log/Operation.vue', 'el-icon-myguanyuwo', '2021-01-31 15:53:21', '2021-01-31 15:53:25', '1', '19', '0');
INSERT INTO `tb_menu` VALUES ('201', '在线用户', '/online/users', '/user/Online.vue', 'el-icon-myyonghuliebiao', '2021-02-05 14:59:51', '2021-02-05 14:59:53', '7', '202', '0');
INSERT INTO `tb_menu` VALUES ('202', '用户管理', '/users-submenu', 'Layout', 'el-icon-myyonghuliebiao', '2021-02-06 23:44:59', '2021-02-06 23:45:03', '4', null, '0');
INSERT INTO `tb_menu` VALUES ('205', '相册管理', '/album-submenu', 'Layout', 'el-icon-myimage-fill', '2021-08-03 15:10:54', '2021-08-07 20:02:06', '5', null, '0');
INSERT INTO `tb_menu` VALUES ('206', '相册列表', '/albums', '/album/Album.vue', 'el-icon-myzhaopian', '2021-08-03 20:29:19', '2021-08-04 11:45:47', '1', '205', '0');
INSERT INTO `tb_menu` VALUES ('208', '照片管理', '/albums/:albumId', '/album/Photo.vue', 'el-icon-myzhaopian', '2021-08-03 21:37:47', '2021-08-05 10:24:08', '1', '205', '1');
INSERT INTO `tb_menu` VALUES ('209', '页面管理', '/pages', '/page/Page.vue', 'el-icon-myyemianpeizhi', '2021-08-04 11:36:27', '2021-08-07 20:01:26', '2', '4', '0');
INSERT INTO `tb_menu` VALUES ('210', '照片回收站', '/photos/delete', '/album/Delete.vue', 'el-icon-myhuishouzhan', '2021-08-05 13:55:19', null, '3', '205', '1');
INSERT INTO `tb_menu` VALUES ('213', '权限管理', '/permission-submenu', 'Layout', 'el-icon-mydaohanglantubiao_quanxianguanli', '2021-08-07 19:56:55', '2021-08-07 19:59:40', '4', null, '0');
INSERT INTO `tb_menu` VALUES ('214', '网站管理', '/website', '/website/Website.vue', 'el-icon-myxitong', '2021-08-07 20:06:41', null, '1', '4', '0');

-- ----------------------------
-- Table structure for tb_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_resource`;
CREATE TABLE `tb_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `request_method` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_anonymous` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_resource
-- ----------------------------
INSERT INTO `tb_resource` VALUES ('165', '分类模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('166', '博客信息模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('167', '友链模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('168', '文章模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('169', '日志模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('170', '标签模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('171', '照片模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('172', '用户信息模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('173', '用户账号模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('174', '留言模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('175', '相册模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('176', '菜单模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('177', '角色模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('178', '评论模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('179', '资源模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('180', '页面模块', null, null, null, '0', '2021-08-11 21:04:21', null);
INSERT INTO `tb_resource` VALUES ('181', '查看博客信息', '/', 'GET', '166', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:29');
INSERT INTO `tb_resource` VALUES ('182', '查看关于我信息', '/about', 'GET', '166', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:29');
INSERT INTO `tb_resource` VALUES ('183', '查看后台信息', '/admin', 'GET', '166', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('184', '修改关于我信息', '/admin/about', 'PUT', '166', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('185', '查看后台文章', '/admin/articles', 'GET', '168', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('186', '添加或修改文章', '/admin/articles', 'POST', '168', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('187', '恢复或删除文章', '/admin/articles', 'PUT', '168', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('188', '物理删除文章', '/admin/articles', 'DELETE', '168', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('189', '上传文章图片', '/admin/articles/images', 'POST', '168', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('190', '修改文章置顶', '/admin/articles/top', 'PUT', '168', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('191', '根据id查看后台文章', '/admin/articles/*', 'GET', '168', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('192', '查看后台分类列表', '/admin/categories', 'GET', '165', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('193', '添加或修改分类', '/admin/categories', 'POST', '165', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('194', '删除分类', '/admin/categories', 'DELETE', '165', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('195', '搜索文章分类', '/admin/categories/search', 'GET', '165', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('196', '查询后台评论', '/admin/comments', 'GET', '178', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('197', '删除评论', '/admin/comments', 'DELETE', '178', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('198', '审核评论', '/admin/comments/review', 'PUT', '178', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('199', '查看后台友链列表', '/admin/links', 'GET', '167', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('200', '保存或修改友链', '/admin/links', 'POST', '167', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('201', '删除友链', '/admin/links', 'DELETE', '167', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('202', '查看菜单列表', '/admin/menus', 'GET', '176', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('203', '新增或修改菜单', '/admin/menus', 'POST', '176', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('204', '删除菜单', '/admin/menus/*', 'DELETE', '176', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('205', '查看后台留言列表', '/admin/messages', 'GET', '174', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('206', '删除留言', '/admin/messages', 'DELETE', '174', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('207', '审核留言', '/admin/messages/review', 'PUT', '174', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('208', '查看操作日志', '/admin/operation/logs', 'GET', '169', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('209', '删除操作日志', '/admin/operation/logs', 'DELETE', '169', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('210', '获取页面列表', '/admin/pages', 'GET', '180', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('211', '保存或更新页面', '/admin/pages', 'POST', '180', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('212', '删除页面', '/admin/pages/*', 'DELETE', '180', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('213', '根据相册id获取照片列表', '/admin/photos', 'GET', '171', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('214', '保存照片', '/admin/photos', 'POST', '171', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('215', '更新照片信息', '/admin/photos', 'PUT', '171', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('216', '删除照片', '/admin/photos', 'DELETE', '171', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('217', '移动照片相册', '/admin/photos/album', 'PUT', '171', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('218', '查看后台相册列表', '/admin/photos/albums', 'GET', '175', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('219', '保存或更新相册', '/admin/photos/albums', 'POST', '175', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('220', '上传相册封面', '/admin/photos/albums/cover', 'POST', '175', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('221', '获取后台相册列表信息', '/admin/photos/albums/info', 'GET', '175', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('222', '根据id删除相册', '/admin/photos/albums/*', 'DELETE', '175', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('223', '根据id获取后台相册信息', '/admin/photos/albums/*/info', 'GET', '175', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('224', '更新照片删除状态', '/admin/photos/delete', 'PUT', '171', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('225', '查看资源列表', '/admin/resources', 'GET', '179', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('226', '新增或修改资源', '/admin/resources', 'POST', '179', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('227', '导入swagger接口', '/admin/resources/import/swagger', 'GET', '179', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('228', '删除资源', '/admin/resources/*', 'DELETE', '179', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('229', '保存或更新角色', '/admin/role', 'POST', '177', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('230', '查看角色菜单选项', '/admin/role/menus', 'GET', '176', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('231', '查看角色资源选项', '/admin/role/resources', 'GET', '179', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('232', '查询角色列表', '/admin/roles', 'GET', '177', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('233', '删除角色', '/admin/roles', 'DELETE', '177', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('234', '查询后台标签列表', '/admin/tags', 'GET', '170', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('235', '添加或修改标签', '/admin/tags', 'POST', '170', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('236', '删除标签', '/admin/tags', 'DELETE', '170', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('237', '搜索文章标签', '/admin/tags/search', 'GET', '170', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('238', '查看当前用户菜单', '/admin/user/menus', 'GET', '176', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('239', '查询后台用户列表', '/admin/users', 'GET', '173', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('240', '修改用户禁用状态', '/admin/users/disable', 'PUT', '172', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('241', '查看在线用户', '/admin/users/online', 'GET', '172', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('242', '修改管理员密码', '/admin/users/password', 'PUT', '173', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('243', '查询用户角色选项', '/admin/users/role', 'GET', '177', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('244', '修改用户角色', '/admin/users/role', 'PUT', '172', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('245', '下线用户', '/admin/users/*/online', 'DELETE', '172', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('246', '获取网站配置', '/admin/website/config', 'GET', '166', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('247', '更新网站配置', '/admin/website/config', 'PUT', '166', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('248', '根据相册id查看照片列表', '/albums/*/photos', 'GET', '171', '1', '2021-08-11 21:04:22', '2021-08-11 21:06:35');
INSERT INTO `tb_resource` VALUES ('249', '查看首页文章', '/articles', 'GET', '168', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:45');
INSERT INTO `tb_resource` VALUES ('250', '查看文章归档', '/articles/archives', 'GET', '168', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:47');
INSERT INTO `tb_resource` VALUES ('251', '根据条件查询文章', '/articles/condition', 'GET', '168', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:47');
INSERT INTO `tb_resource` VALUES ('252', '搜索文章', '/articles/search', 'GET', '168', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:48');
INSERT INTO `tb_resource` VALUES ('253', '根据id查看文章', '/articles/*', 'GET', '168', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:49');
INSERT INTO `tb_resource` VALUES ('254', '点赞文章', '/articles/*/like', 'POST', '168', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('255', '查看分类列表', '/categories', 'GET', '165', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:26');
INSERT INTO `tb_resource` VALUES ('256', '查询评论', '/comments', 'GET', '178', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:33');
INSERT INTO `tb_resource` VALUES ('257', '添加评论', '/comments', 'POST', '178', '0', '2021-08-11 21:04:22', '2021-08-11 21:10:05');
INSERT INTO `tb_resource` VALUES ('258', '评论点赞', '/comments/*/like', 'POST', '178', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('259', '查询评论下的回复', '/comments/*/replies', 'GET', '178', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:30');
INSERT INTO `tb_resource` VALUES ('260', '查看友链列表', '/links', 'GET', '167', '1', '2021-08-11 21:04:22', '2021-08-11 21:05:41');
INSERT INTO `tb_resource` VALUES ('261', '查看留言列表', '/messages', 'GET', '174', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:14');
INSERT INTO `tb_resource` VALUES ('262', '添加留言', '/messages', 'POST', '174', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:15');
INSERT INTO `tb_resource` VALUES ('263', '获取相册列表', '/photos/albums', 'GET', '175', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:20');
INSERT INTO `tb_resource` VALUES ('264', '用户注册', '/register', 'POST', '173', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:01');
INSERT INTO `tb_resource` VALUES ('265', '查询标签列表', '/tags', 'GET', '170', '1', '2021-08-11 21:04:22', '2021-08-11 21:06:30');
INSERT INTO `tb_resource` VALUES ('267', '更新用户头像', '/users/avatar', 'POST', '172', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('268', '发送邮箱验证码', '/users/code', 'GET', '173', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:02');
INSERT INTO `tb_resource` VALUES ('269', '绑定用户邮箱', '/users/email', 'POST', '172', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('270', '更新用户信息', '/users/info', 'PUT', '172', '0', '2021-08-11 21:04:22', null);
INSERT INTO `tb_resource` VALUES ('271', 'qq登录', '/users/oauth/qq', 'POST', '173', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:06');
INSERT INTO `tb_resource` VALUES ('272', '微博登录', '/users/oauth/weibo', 'POST', '173', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:06');
INSERT INTO `tb_resource` VALUES ('273', '修改密码', '/users/password', 'PUT', '173', '1', '2021-08-11 21:04:22', '2021-08-11 21:07:09');
INSERT INTO `tb_resource` VALUES ('275', '上传访客信息', '/report', 'POST', '166', '1', '2021-08-24 11:24:08', '2021-08-24 11:24:10');
INSERT INTO `tb_resource` VALUES ('276', '获取用户区域分布', '/admin/users/area', 'GET', '173', '0', '2021-08-24 11:24:33', null);

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_label` varchar(255) DEFAULT NULL,
  `is_disable` tinyint(1) DEFAULT NULL,
  `creaet_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '管理员', 'admin', '0', '2021-11-05 15:05:59', '2021-11-05 15:06:02');
INSERT INTO `tb_role` VALUES ('2', '用户', 'user', '0', '2021-11-05 15:06:04', '2021-11-05 15:06:06');
INSERT INTO `tb_role` VALUES ('3', '测试', 'test', '0', '2021-11-05 15:06:08', '2021-11-05 15:06:10');

-- ----------------------------
-- Table structure for tb_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_menu`;
CREATE TABLE `tb_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2310 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_menu
-- ----------------------------
INSERT INTO `tb_role_menu` VALUES ('2252', '1', '1');
INSERT INTO `tb_role_menu` VALUES ('2253', '1', '2');
INSERT INTO `tb_role_menu` VALUES ('2254', '1', '6');
INSERT INTO `tb_role_menu` VALUES ('2255', '1', '7');
INSERT INTO `tb_role_menu` VALUES ('2256', '1', '8');
INSERT INTO `tb_role_menu` VALUES ('2257', '1', '9');
INSERT INTO `tb_role_menu` VALUES ('2258', '1', '10');
INSERT INTO `tb_role_menu` VALUES ('2259', '1', '3');
INSERT INTO `tb_role_menu` VALUES ('2260', '1', '11');
INSERT INTO `tb_role_menu` VALUES ('2261', '1', '12');
INSERT INTO `tb_role_menu` VALUES ('2262', '1', '202');
INSERT INTO `tb_role_menu` VALUES ('2263', '1', '13');
INSERT INTO `tb_role_menu` VALUES ('2264', '1', '201');
INSERT INTO `tb_role_menu` VALUES ('2265', '1', '213');
INSERT INTO `tb_role_menu` VALUES ('2266', '1', '14');
INSERT INTO `tb_role_menu` VALUES ('2267', '1', '15');
INSERT INTO `tb_role_menu` VALUES ('2268', '1', '16');
INSERT INTO `tb_role_menu` VALUES ('2269', '1', '4');
INSERT INTO `tb_role_menu` VALUES ('2270', '1', '214');
INSERT INTO `tb_role_menu` VALUES ('2271', '1', '209');
INSERT INTO `tb_role_menu` VALUES ('2272', '1', '17');
INSERT INTO `tb_role_menu` VALUES ('2273', '1', '18');
INSERT INTO `tb_role_menu` VALUES ('2274', '1', '205');
INSERT INTO `tb_role_menu` VALUES ('2275', '1', '206');
INSERT INTO `tb_role_menu` VALUES ('2276', '1', '208');
INSERT INTO `tb_role_menu` VALUES ('2277', '1', '210');
INSERT INTO `tb_role_menu` VALUES ('2278', '1', '19');
INSERT INTO `tb_role_menu` VALUES ('2279', '1', '20');
INSERT INTO `tb_role_menu` VALUES ('2280', '1', '5');
INSERT INTO `tb_role_menu` VALUES ('2281', '3', '1');
INSERT INTO `tb_role_menu` VALUES ('2282', '3', '2');
INSERT INTO `tb_role_menu` VALUES ('2283', '3', '6');
INSERT INTO `tb_role_menu` VALUES ('2284', '3', '7');
INSERT INTO `tb_role_menu` VALUES ('2285', '3', '8');
INSERT INTO `tb_role_menu` VALUES ('2286', '3', '9');
INSERT INTO `tb_role_menu` VALUES ('2287', '3', '10');
INSERT INTO `tb_role_menu` VALUES ('2288', '3', '3');
INSERT INTO `tb_role_menu` VALUES ('2289', '3', '11');
INSERT INTO `tb_role_menu` VALUES ('2290', '3', '12');
INSERT INTO `tb_role_menu` VALUES ('2291', '3', '202');
INSERT INTO `tb_role_menu` VALUES ('2292', '3', '13');
INSERT INTO `tb_role_menu` VALUES ('2293', '3', '201');
INSERT INTO `tb_role_menu` VALUES ('2294', '3', '213');
INSERT INTO `tb_role_menu` VALUES ('2295', '3', '14');
INSERT INTO `tb_role_menu` VALUES ('2296', '3', '15');
INSERT INTO `tb_role_menu` VALUES ('2297', '3', '16');
INSERT INTO `tb_role_menu` VALUES ('2298', '3', '4');
INSERT INTO `tb_role_menu` VALUES ('2299', '3', '214');
INSERT INTO `tb_role_menu` VALUES ('2300', '3', '209');
INSERT INTO `tb_role_menu` VALUES ('2301', '3', '17');
INSERT INTO `tb_role_menu` VALUES ('2302', '3', '18');
INSERT INTO `tb_role_menu` VALUES ('2303', '3', '205');
INSERT INTO `tb_role_menu` VALUES ('2304', '3', '206');
INSERT INTO `tb_role_menu` VALUES ('2305', '3', '208');
INSERT INTO `tb_role_menu` VALUES ('2306', '3', '210');
INSERT INTO `tb_role_menu` VALUES ('2307', '3', '19');
INSERT INTO `tb_role_menu` VALUES ('2308', '3', '20');
INSERT INTO `tb_role_menu` VALUES ('2309', '3', '5');

-- ----------------------------
-- Table structure for tb_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_resource`;
CREATE TABLE `tb_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4193 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_resource
-- ----------------------------
INSERT INTO `tb_role_resource` VALUES ('4011', '2', '254');
INSERT INTO `tb_role_resource` VALUES ('4012', '2', '267');
INSERT INTO `tb_role_resource` VALUES ('4013', '2', '269');
INSERT INTO `tb_role_resource` VALUES ('4014', '2', '270');
INSERT INTO `tb_role_resource` VALUES ('4015', '2', '257');
INSERT INTO `tb_role_resource` VALUES ('4016', '2', '258');
INSERT INTO `tb_role_resource` VALUES ('4076', '1', '165');
INSERT INTO `tb_role_resource` VALUES ('4077', '1', '192');
INSERT INTO `tb_role_resource` VALUES ('4078', '1', '193');
INSERT INTO `tb_role_resource` VALUES ('4079', '1', '194');
INSERT INTO `tb_role_resource` VALUES ('4080', '1', '195');
INSERT INTO `tb_role_resource` VALUES ('4081', '1', '166');
INSERT INTO `tb_role_resource` VALUES ('4082', '1', '183');
INSERT INTO `tb_role_resource` VALUES ('4083', '1', '184');
INSERT INTO `tb_role_resource` VALUES ('4084', '1', '246');
INSERT INTO `tb_role_resource` VALUES ('4085', '1', '247');
INSERT INTO `tb_role_resource` VALUES ('4086', '1', '167');
INSERT INTO `tb_role_resource` VALUES ('4087', '1', '199');
INSERT INTO `tb_role_resource` VALUES ('4088', '1', '200');
INSERT INTO `tb_role_resource` VALUES ('4089', '1', '201');
INSERT INTO `tb_role_resource` VALUES ('4090', '1', '168');
INSERT INTO `tb_role_resource` VALUES ('4091', '1', '185');
INSERT INTO `tb_role_resource` VALUES ('4092', '1', '186');
INSERT INTO `tb_role_resource` VALUES ('4093', '1', '187');
INSERT INTO `tb_role_resource` VALUES ('4094', '1', '188');
INSERT INTO `tb_role_resource` VALUES ('4095', '1', '189');
INSERT INTO `tb_role_resource` VALUES ('4096', '1', '190');
INSERT INTO `tb_role_resource` VALUES ('4097', '1', '191');
INSERT INTO `tb_role_resource` VALUES ('4098', '1', '254');
INSERT INTO `tb_role_resource` VALUES ('4099', '1', '169');
INSERT INTO `tb_role_resource` VALUES ('4100', '1', '208');
INSERT INTO `tb_role_resource` VALUES ('4101', '1', '209');
INSERT INTO `tb_role_resource` VALUES ('4102', '1', '170');
INSERT INTO `tb_role_resource` VALUES ('4103', '1', '234');
INSERT INTO `tb_role_resource` VALUES ('4104', '1', '235');
INSERT INTO `tb_role_resource` VALUES ('4105', '1', '236');
INSERT INTO `tb_role_resource` VALUES ('4106', '1', '237');
INSERT INTO `tb_role_resource` VALUES ('4107', '1', '171');
INSERT INTO `tb_role_resource` VALUES ('4108', '1', '213');
INSERT INTO `tb_role_resource` VALUES ('4109', '1', '214');
INSERT INTO `tb_role_resource` VALUES ('4110', '1', '215');
INSERT INTO `tb_role_resource` VALUES ('4111', '1', '216');
INSERT INTO `tb_role_resource` VALUES ('4112', '1', '217');
INSERT INTO `tb_role_resource` VALUES ('4113', '1', '224');
INSERT INTO `tb_role_resource` VALUES ('4114', '1', '172');
INSERT INTO `tb_role_resource` VALUES ('4115', '1', '240');
INSERT INTO `tb_role_resource` VALUES ('4116', '1', '241');
INSERT INTO `tb_role_resource` VALUES ('4117', '1', '244');
INSERT INTO `tb_role_resource` VALUES ('4118', '1', '245');
INSERT INTO `tb_role_resource` VALUES ('4119', '1', '267');
INSERT INTO `tb_role_resource` VALUES ('4120', '1', '269');
INSERT INTO `tb_role_resource` VALUES ('4121', '1', '270');
INSERT INTO `tb_role_resource` VALUES ('4122', '1', '173');
INSERT INTO `tb_role_resource` VALUES ('4123', '1', '239');
INSERT INTO `tb_role_resource` VALUES ('4124', '1', '242');
INSERT INTO `tb_role_resource` VALUES ('4125', '1', '276');
INSERT INTO `tb_role_resource` VALUES ('4126', '1', '174');
INSERT INTO `tb_role_resource` VALUES ('4127', '1', '205');
INSERT INTO `tb_role_resource` VALUES ('4128', '1', '206');
INSERT INTO `tb_role_resource` VALUES ('4129', '1', '207');
INSERT INTO `tb_role_resource` VALUES ('4130', '1', '175');
INSERT INTO `tb_role_resource` VALUES ('4131', '1', '218');
INSERT INTO `tb_role_resource` VALUES ('4132', '1', '219');
INSERT INTO `tb_role_resource` VALUES ('4133', '1', '220');
INSERT INTO `tb_role_resource` VALUES ('4134', '1', '221');
INSERT INTO `tb_role_resource` VALUES ('4135', '1', '222');
INSERT INTO `tb_role_resource` VALUES ('4136', '1', '223');
INSERT INTO `tb_role_resource` VALUES ('4137', '1', '176');
INSERT INTO `tb_role_resource` VALUES ('4138', '1', '202');
INSERT INTO `tb_role_resource` VALUES ('4139', '1', '203');
INSERT INTO `tb_role_resource` VALUES ('4140', '1', '204');
INSERT INTO `tb_role_resource` VALUES ('4141', '1', '230');
INSERT INTO `tb_role_resource` VALUES ('4142', '1', '238');
INSERT INTO `tb_role_resource` VALUES ('4143', '1', '177');
INSERT INTO `tb_role_resource` VALUES ('4144', '1', '229');
INSERT INTO `tb_role_resource` VALUES ('4145', '1', '232');
INSERT INTO `tb_role_resource` VALUES ('4146', '1', '233');
INSERT INTO `tb_role_resource` VALUES ('4147', '1', '243');
INSERT INTO `tb_role_resource` VALUES ('4148', '1', '178');
INSERT INTO `tb_role_resource` VALUES ('4149', '1', '196');
INSERT INTO `tb_role_resource` VALUES ('4150', '1', '197');
INSERT INTO `tb_role_resource` VALUES ('4151', '1', '198');
INSERT INTO `tb_role_resource` VALUES ('4152', '1', '257');
INSERT INTO `tb_role_resource` VALUES ('4153', '1', '258');
INSERT INTO `tb_role_resource` VALUES ('4154', '1', '179');
INSERT INTO `tb_role_resource` VALUES ('4155', '1', '225');
INSERT INTO `tb_role_resource` VALUES ('4156', '1', '226');
INSERT INTO `tb_role_resource` VALUES ('4157', '1', '227');
INSERT INTO `tb_role_resource` VALUES ('4158', '1', '228');
INSERT INTO `tb_role_resource` VALUES ('4159', '1', '231');
INSERT INTO `tb_role_resource` VALUES ('4160', '1', '180');
INSERT INTO `tb_role_resource` VALUES ('4161', '1', '210');
INSERT INTO `tb_role_resource` VALUES ('4162', '1', '211');
INSERT INTO `tb_role_resource` VALUES ('4163', '1', '212');
INSERT INTO `tb_role_resource` VALUES ('4164', '3', '192');
INSERT INTO `tb_role_resource` VALUES ('4165', '3', '195');
INSERT INTO `tb_role_resource` VALUES ('4166', '3', '183');
INSERT INTO `tb_role_resource` VALUES ('4167', '3', '246');
INSERT INTO `tb_role_resource` VALUES ('4168', '3', '199');
INSERT INTO `tb_role_resource` VALUES ('4169', '3', '185');
INSERT INTO `tb_role_resource` VALUES ('4170', '3', '191');
INSERT INTO `tb_role_resource` VALUES ('4171', '3', '254');
INSERT INTO `tb_role_resource` VALUES ('4172', '3', '208');
INSERT INTO `tb_role_resource` VALUES ('4173', '3', '234');
INSERT INTO `tb_role_resource` VALUES ('4174', '3', '237');
INSERT INTO `tb_role_resource` VALUES ('4175', '3', '213');
INSERT INTO `tb_role_resource` VALUES ('4176', '3', '241');
INSERT INTO `tb_role_resource` VALUES ('4177', '3', '239');
INSERT INTO `tb_role_resource` VALUES ('4178', '3', '276');
INSERT INTO `tb_role_resource` VALUES ('4179', '3', '205');
INSERT INTO `tb_role_resource` VALUES ('4180', '3', '218');
INSERT INTO `tb_role_resource` VALUES ('4181', '3', '223');
INSERT INTO `tb_role_resource` VALUES ('4182', '3', '202');
INSERT INTO `tb_role_resource` VALUES ('4183', '3', '230');
INSERT INTO `tb_role_resource` VALUES ('4184', '3', '238');
INSERT INTO `tb_role_resource` VALUES ('4185', '3', '232');
INSERT INTO `tb_role_resource` VALUES ('4186', '3', '243');
INSERT INTO `tb_role_resource` VALUES ('4187', '3', '196');
INSERT INTO `tb_role_resource` VALUES ('4188', '3', '257');
INSERT INTO `tb_role_resource` VALUES ('4189', '3', '258');
INSERT INTO `tb_role_resource` VALUES ('4190', '3', '225');
INSERT INTO `tb_role_resource` VALUES ('4191', '3', '231');
INSERT INTO `tb_role_resource` VALUES ('4192', '3', '210');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_disable` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'lgg', '$2a$10$AkxkZaqcxEXdiNE1nrgW1.ms3aS9C5ImXMf8swkWUJuFGMqDl.TPW', '0', '2021-11-05 15:06:25', '2021-11-05 15:06:28');
INSERT INTO `tb_user` VALUES ('2', 'vivy', '$2a$10$AkxkZaqcxEXdiNE1nrgW1.ms3aS9C5ImXMf8swkWUJuFGMqDl.TPW', '0', '2021-11-05 15:06:30', '2021-11-05 15:06:32');

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '1', '1');
INSERT INTO `tb_user_role` VALUES ('2', '1', '2');
INSERT INTO `tb_user_role` VALUES ('3', '2', '2');
