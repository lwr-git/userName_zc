package controller;

import Dao.Hero;
import Dao.jieko.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class UserFindServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();

        List<Hero> hero = userDao.find();

        //将处理结果添加到请求作用对象域
        request.setAttribute("key",hero);

        //通过请求转发方案，向tomcat申请调用find.jsp
        //同时将request和response交给jsp使用
        request.getRequestDispatcher("/find.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
