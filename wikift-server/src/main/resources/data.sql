-- 路由初始化数据
INSERT INTO role (r_id, r_name, r_description) VALUES (1, 'USER', 'User Role - 拥有普通用户权限');
INSERT INTO role (r_id, r_name, r_description) VALUES (2, 'ADMIN', 'Admin Role - 拥有平台所有权限');
-- 用户初始化数据,密码默认123456
INSERT INTO users (u_id, u_username, u_password)
VALUES (1, 'user', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');
INSERT INTO users (u_id, u_username, u_password)
VALUES (2, 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');
-- 用户与路由关系初始化数据
INSERT INTO users_role_relation (urr_user_id, urr_role_id) VALUES (1, 1);
INSERT INTO users_role_relation (urr_user_id, urr_role_id) VALUES (2, 1);
INSERT INTO users_role_relation (urr_user_id, urr_role_id) VALUES (2, 2);
-- 用户组初始化数据
INSERT INTO groups (g_id, g_name, g_description, g_enabled) VALUES (1, 'wikift_users', 'Wikift User Group', TRUE);
INSERT INTO groups (g_id, g_name, g_description, g_enabled) VALUES (2, 'wikift_admins', 'Wikift Admin Group', TRUE);
-- 用户与用户组关系初始化数据
INSERT INTO users_groups_relation (ugr_user_id, ugr_group_id) VALUES (1, 1);
INSERT INTO users_groups_relation (ugr_user_id, ugr_group_id) VALUES (2, 2);
