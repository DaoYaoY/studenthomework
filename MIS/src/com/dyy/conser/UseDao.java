package com.dyy.conser;

import com.dyy.bean.User;

/** 
* @author BieHongLi 
* @version 创建时间：2017年2月21日 上午10:38:40 
* 创建一个接口用于声明用户登陆注册的方法
*/
public interface UseDao {

    /***
     * 用户登陆的方法声明
     * @param User
     * @return
     */
    public User login(User use);
    
    /***
     * 用户注册的方法声明
     * @param User
     * @return
     */
    public boolean register(User use);}
