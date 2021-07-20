<%@ page import="java.util.List" %>
<%@ page import="Dao.Hero" %><%--
  Created by IntelliJ IDEA.
  User: LWR
  Date: 2021/6/30
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    //从作用域对象中得到servlet存在里面的集合
    List<Hero> list = (List) request.getAttribute("key");
%>
<!--将处理结果写入响应体-->
<table border="2" align="center">
    <tr>
        <td>名字</td>
        <td>职业</td>
        <td>性别</td>
        <td>强势期</td>
        <td>特长</td>
        <td>难度</td>
    </tr>
    <%
        for(Hero hero : list){
    %>
    <tr>
        <td><%=hero.getHname()%></td>
        <td><%=hero.getZy()%></td>
        <td><%=hero.getSex()%></td>
        <td><%=hero.getQsq()%></td>
        <td><%=hero.getTc()%></td>
        <td><%=hero.getNd()%></td>
        <td><a href="javascript: if(window.confirm('是否删除？')){window.location.href='/myweb/user/delete?Hid=<%=hero.getHid()%>'}" >删除</a></td>
        <%--<td><a href='/myweb/user/delete?Hid=<%=hero.getHid()%>'>删除用户</a></td>--%>
    </tr>
    <%
        }
    %>
     <%--<a href="javascript: if(window.confirm('是否删除？')){window.location.href='/myweb/user/delete?Hid=${hero.Hid}'}" >删除</a>--%>
</table>