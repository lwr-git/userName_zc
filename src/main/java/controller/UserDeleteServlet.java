package controller;

import Dao.Hero;
import Dao.jieko.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class UserDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hid;
        UserDao userDao = new UserDao();
        //DeleteUser deleteUser = new DeleteUser();
//        UserN user = new UserN();
        Hero hero = new Hero();
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        hid = request.getParameter("Hid");
        boolean i = userDao.DeleteUser(hid);

        if (i==true){
            out.print("<font style='color:red;font-size:40'>英雄信息删除成功</font>");
        }else{
            out.print("<font style='color:red;font-size:40'>英雄信息删除失败</font>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
