package controller;

import Dao.Hero;
import Dao.jieko.UserDao;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class aServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        String json = "{}";
        String zy = request.getParameter("zy");
        String sex  = request.getParameter("sex");
        String qsq = request.getParameter("qsq");
        String tc = request.getParameter("tc");
        String nd = request.getParameter("nd");


        List<Hero> hero = userDao.tuili(zy,sex,qsq,tc,nd);

        ObjectMapper om  = new ObjectMapper();
        json =  om.writeValueAsString(hero);

        response.setContentType("application/json;charset=utf-8");
        PrintWriter pw  = response.getWriter();

        pw.println(json);
        pw.flush();
        pw.close();

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
