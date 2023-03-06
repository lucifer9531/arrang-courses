package com.lucifer.utils;

/**
 * @author: lucifer
 * @apiNote: 关于缓存的Key集合
 */
public interface CacheKey {

    /**
     * 用户
     */
    String USER_ID = "user::id:";
    /**
     * 菜单
     */
    String MENU_ID = "menu::id:";
    String MENU_USER = "menu::user:";
    /**
     * 角色授权
     */
    String ROLE_AUTH = "role::auth:";
    /**
     * 角色信息
     */
    String ROLE_ID = "role::id:";
    /**
     * 数据字典
     */
    String DICT_NAME = "dict::name:";
}
