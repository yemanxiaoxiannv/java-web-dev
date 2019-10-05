package com.bo.listener;

import com.bo.entity.Book;
import com.bo.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author mq_xu
 * @ClassName ContextLoaderListener
 * @Description 上下文加载监听，在服务器启动的时候即刻生效，用来生成用户数据和图书数据
 * @Date 2019/9/27
 * @Version 1.0
 **/

@WebListener
public class ContextLoaderListener implements ServletContextListener {

    /**
     * @Description 容器初始化方法
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1, "111", "698d51a19d8a121ce581499d7b701668", "小宇宙", "aaa.jpg", "汉", LocalDate.of(2001, 7, 28)),
                new User(2, "222", "698d51a19d8a121ce581499d7b701668", "北巷故人", "bbb.jpg", "汉", LocalDate.of(2004, 3, 17)),
                new User(3, "333", "698d51a19d8a121ce581499d7b701668", "南街杏茶", "ccc.jpg", "汉", LocalDate.of(2005, 5, 24))
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(10);
        Book[] books = {
                new Book(1, "国民老公", "1.jpg", "熊梓淇赖雨濛婚后虐恋"),
                new Book(2, "亲爱的味道", "2.jpg", "陆毅郭采洁美食情缘"),
                new Book(3, "迷妹专访", "3.jpg", "全员撒娇，劲爆环节"),
                new Book(4, "使徒行者", "4.jpg", "古天乐开启基站模式"),
                new Book(5, "空降利刃", "5.jpg", "张启被停职调查"),
                new Book(6, "龙牌之谜", "6.jpg", "成龙爆笑打斗"),
                new Book(7, "好声音", "7.jpg", "刘美麟高音，那英认输"),
                new Book(8, "声入人心", "8.jpg", "少年唱《还珠》"),
                new Book(9, "在远方", "9.jpg", "刘烨再现创业风云"),
                new Book(10, "激情岁月", "10.jpg", "中国第一颗原子弹诞生"),
                new Book(11, "外交风云", "11.jpg", "老戏骨齐聚"),
                new Book(12, "飞行少年", "12.jpg", "严屹宽空军青春"),
                new Book(13, "极限17", "13.jpg", "为中国女排加油"),
                new Book(14, "激荡", "14.jpg", "郭晓冬闯荡上海"),
                new Book(15, "中餐厅", "15.jpg", "杨紫自爆原名")

        };
        bookList = Arrays.asList(books);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}
