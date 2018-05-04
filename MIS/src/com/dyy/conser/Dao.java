package com.dyy.conser;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;


/** 
* @author BieHongLi 
* @version ����ʱ�䣺2017��2��21�� ����10:01:14 
* ���ݽ�����dao��
*/
public class Dao {

    private static String driver;//���ݿ�����
    private static String url;//���ݿ�·�����ҵ���Ӧ�����ݿ�
    private static String user;//���ݿ��˺�
    private static String password;//���ݿ�����
    
    static{
        driver="com.mysql.jdbc.Driver";
        url="jdbc:mysql://localhost:3306/web";
        user="root";
        password="111";
    }
    /*private static String driver="com.mysql.jdbc.Driver";
    private static String url="jdbc:mysql:///test";
    private static String user="root";
    private static String password="123456";*/
    
    /***
     * �������ݿ�ķ���
     * @return
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static Connection getCon() throws ClassNotFoundException, SQLException{
        Class.forName(driver);//�������ݿ�����
        System.out.println("���Լ������ݿ�ɹ�");
        Connection con=DriverManager.getConnection(url, user, password);
        System.out.println("�������ݿ����ӳɹ�");
        return con;
    }
    
    /***
     * �ر����ݿ�ķ���
     * @param con
     * @param ps
     * @param rs
     */
    public static void close(Connection con,PreparedStatement ps,ResultSet rs){
        if(rs!=null){//�ر���Դ����������쳣
            try {
                rs.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if(ps!=null){
            try {
                ps.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        if(con!=null){
            try {
                con.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
    
    /***
     * ͬ����ɾ�ĵķ���
     * @param sql
     * @param arr
     * @return
     */
    public static boolean add(String sql){
        Connection con=null;
        PreparedStatement ps=null;
        try {
            con=Dao.getCon();//��һ�� ���������ݿ�Ĳ���
            ps=con.prepareStatement(sql);//�ڶ�����Ԥ����
            //������������ֵ
            int count=ps.executeUpdate();//���Ĳ���ִ��sql���
            if(count>0){
                return true;
            }else{
                return false;
            }
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }
    
    /*public static void main(String[] args) {
        try {
            BaseDao.getCon();
            System.out.println("�������ݿ����ӳɹ�");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }*/
    
    public static boolean select(String sql) {
    	boolean flag=false;
    	Connection con=null;
        PreparedStatement ps=null;
        try {
            con=Dao.getCon();//��һ�� ���������ݿ�Ĳ���
            ps=con.prepareStatement(sql);//�ڶ�����Ԥ����
            //������������ֵ
            ResultSet row=ps.executeQuery();
    	if(row.next()) {
    		flag= true;}
        else {
    	flag= false;
        }
    }catch(Exception e) {
    	e.printStackTrace();
    	}return flag;
    }  
}