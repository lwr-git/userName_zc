package controller;

import Dao.Hero;
import Dao.jieko.UserDao;
import com.fasterxml.jackson.databind.ObjectMapper;
//import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class naServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        String json = "{}";
        String hname = request.getParameter("hname");

        List<Hero> hero = userDao.ntuili(hname);

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
