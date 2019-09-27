package com.web;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/**
 * @author xx-cai
 * @ClassName IndexServlet
 * @Description TODO
 * @Date 2019/9/27
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Book[] books ={
                new Book("国民老公","1.jpg","熊梓淇赖雨濛婚后虐恋"),
                new Book("亲爱的味道","2.jpg","陆毅郭采洁美食情缘"),
                new Book("迷妹专访","3.jpg","全员撒娇，劲爆环节"),
                new Book("使徒行者","4.jpg","古天乐开启基站模式"),
                new Book("空降利刃","5.jpg","张启被停职调查"),
                new Book("龙牌之谜","6.jpg","成龙爆笑打斗"),
                new Book("好声音","7.jpg","刘美麟高音，那英认输"),
                new Book("声入人心","8.jpg","少年唱《还珠》"),
                new Book("在远方","9.jpg","刘烨再现创业风云"),
                new Book("激情岁月","10.jpg","中国第一颗原子弹诞生"),
                new Book("外交风云","11.jpg","老戏骨齐聚"),
                new Book("飞行少年","12.jpg","严屹宽空军青春"),
                new Book("极限17","13.jpg","为中国女排加油"),
                new Book("激荡","14.jpg","郭晓冬闯荡上海"),
                new Book("中餐厅","15.jpg","杨紫自爆原名")
        };
        List<Book> bookList = Arrays.asList(books);
        req.setAttribute("bookList",bookList);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}

