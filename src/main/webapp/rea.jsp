<%--
  Created by IntelliJ IDEA.
  User: LWR
  Date: 2021/7/5
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title></title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        $(function(){
            $("#btn2").click(function () {

                //获取dom的value值
                var hanme = $("#hname").val();
                //发起ajax请求
                $.ajax({
                    url:"na",
                    data:{
                        "hname":hanme
                    },
                    dataType:"json",
                    success:function(data){//{window.location.href='/myweb/user/delete?Hid='};
                        if(window.confirm('职业是否为'+data[0].zy))
                        {
                            if(window.confirm('性别是否为'+data[0].sex))
                            {
                                if(window.confirm('强势期是否为'+data[0].qsq))
                                {
                                    if(window.confirm('特长是否为'+data[0].tc))
                                    {
                                        if(window.confirm('难度等级是否为'+data[0].nd))
                                        {
                                            for (var i=0;i<data.length;i++){
                                                $("#hname"+i).val(data[i].hname);
                                                $("#zy"+i).val(data[i].zy);
                                                $("#sex"+i).val(data[i].sex);
                                                $("#qsq"+i).val(data[i].qsq);
                                                $("#tc"+i).val(data[i].tc);
                                                $("#nd"+i).val(data[i].nd);
                                            }
                                        $("#i").val("是"+data[0].hname);
                                        }else{$("#i").val("不是"+data[0].hname);}
                                    }else{$("#i").val("不是"+data[0].hname);}
                                }else{$("#i").val("不是"+data[0].hname);}
                            }else{$("#i").val("不是"+data[0].hname);}
                        }else{$("#i").val("不是"+data[0].hname);}

                    }

                });

            });
        })

    </script>
</head>
名字<br />
<input type="text" id="hname">
<input type="button" value="推理"  id="btn2" >

<table border="2" align="right" id="table">
    <tr>
        <td>名字</td>
        <td>职业</td>
        <td>性别</td>
        <td>强势期</td>
        <td>特长</td>
        <td>难度</td>
    </tr>
    <tr>
        <td><input type="text" id="hname0" style="width:60px;"></td>
        <td><input type="text" id="zy0" style="width:60px;"></td>
        <td><input type="text" id="sex0" style="width:60px;"></td>
        <td><input type="text" id="qsq0" style="width:60px;"></td>
        <td><input type="text" id="tc0" style="width:60px;"></td>
        <td><input type="text" id="nd0" style="width:60px;"></td>
    </tr>
</table>
<input type="text" id="i">
</body>
</html>