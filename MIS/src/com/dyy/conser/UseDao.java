package com.dyy.conser;

import com.dyy.bean.User;

/** 
* @author BieHongLi 
* @version ����ʱ�䣺2017��2��21�� ����10:38:40 
* ����һ���ӿ����������û���½ע��ķ���
*/
public interface UseDao {

    /***
     * �û���½�ķ�������
     * @param User
     * @return
     */
    public User login(User use);
    
    /***
     * �û�ע��ķ�������
     * @param User
     * @return
     */
    public boolean register(User use);}
