package controller;

import Dao.Hero;
import Dao.jieko.UserDao;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class UserAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Hero hero = new Hero();
        UserDao userDao = new UserDao();
        int result = 0;
        PrintWriter out =null;//输出流

        String hname,sex,zy,qsq,tc,nd;
        hname = request.getParameter("hName");
        sex = request.getParameter("sex");
        zy = request.getParameter("zy");
        qsq = request.getParameter("qsq");
        tc = request.getParameter("tc");
        nd = request.getParameter("nd");

        hero.setHname(hname);
        hero.setSex(sex);
        hero.setZy(zy);
        hero.setQsq(qsq);
        hero.setTc(tc);
        hero.setNd(nd);

        result = userDao.zc(hero);
        //把处理结果以二进制形式写入响应体中
        response.setContentType("text/html;charset=utf-8");
        out = response.getWriter();
        if (result == 1){
            out.print("<font style='color:red;font-size:40'>信息添加成功</font>");
        }else{
            out.print("<font style='color:red;font-size:40'>添加失败</font>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
