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

<%--    <script type="text/javascript">--%>
<%--        //使用内存中的异步对象，代替浏览器发起请求。异步对象使用js创建和管理的。--%>

<%--        function  doAjax() {--%>
<%--            //1.创建异步对象--%>
<%--            var xmlHttp = new XMLHttpRequest();--%>
<%--            //2.绑定事件--%>
<%--            xmlHttp.onreadystatechange = function () {--%>
<%--                //处理服务器端返回的数据，更新当前页面--%>
<%--                //alert("readyState属性值======" + xmlHttp.readyState + "| status:" + xmlHttp.status)--%>
<%--                if( xmlHttp.readyState == 4 && xmlHttp.status ==200){--%>
<%--                    // alert(xmlHttp.responseText);--%>
<%--                    var data = xmlHttp.responseText;--%>
<%--                    alert(data);--%>
<%--                }--%>
<%--            }--%>

<%--            //3.初始请求数据--%>
<%--            //获取dom对象的value属性值--%>
<%--            var zy = document.getElementById("zy").value;--%>
<%--            var sex = document.getElementById("sex").value;--%>
<%--            var qsq = document.getElementById("qsq").value;--%>
<%--            var tc = document.getElementById("tc").value;--%>
<%--            var nd = document.getElementById("nd").value;--%>

<%--            //bmiPrint?name=李四&w=82&h=1.8--%>
<%--           // var param = "zy="+zy + "&sex="+sex+"&qsq="+qsq+"&tc="+tc+"&nd="+nd;--%>
<%--            //alert("param="+param);--%>
<%--            xmlHttp.open("get","a?"+"zy="+zy + "&sex="+sex+"&qsq="+qsq+"&tc="+tc+"&nd="+nd,true);--%>

<%--            //4.发起请求--%>
<%--            xmlHttp.send();--%>
<%--        }--%>



<%--    </script>--%>



    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        $(function(){
            $("#btn").click(function () {

                //获取dom的value值
                var zy = $("#zy").val();
                var sex = $("#sex").val();
                var qsq = $("#qsq").val();
                var tc = $("#tc").val();
                var nd = $("#nd").val();
                //发起ajax请求
                $.ajax({

                    url:"a",
                    data:{
                        "zy":zy,
                        "sex":sex,
                        "qsq":qsq,
                        "tc":tc,
                        "nd":nd
                    },
                    dataType:"json",
                    success:function(data){
                        if(1==data.length){
                            $("#tt").val("英雄可以确认为--------->");
                        }else if(data.length>1)
                        {
                            $("#tt").val("英雄可能为------------>");
                        }else if (data.length==0){
                            $("#tt").val("知识库暂时没有这个英雄");
                        }
                        for (var i=0;i<17;i++){
                            if (i<data.length){
                                $("#hname"+i).val(data[i].hname);
                                $("#zy"+i).val(data[i].zy);
                                $("#sex"+i).val(data[i].sex);
                                $("#qsq"+i).val(data[i].qsq);
                                $("#tc"+i).val(data[i].tc);
                                $("#nd"+i).val(data[i].nd);
                            }
                            else{
                                $("#hname"+i).val("");
                                $("#zy"+i).val("");
                                $("#sex"+i).val("");
                                $("#qsq"+i).val("");
                                $("#tc"+i).val("");
                                $("#nd"+i).val("");
                            }
                            // var tabNode=document.createElement("table");
                            // var trNode=tabNode.insertRow();
                            //
                            // var tdNode=trNode.insertCell;
                            //
                            // tabNode.innerHTML="<tr><td>"+data[i].hname+
                            // "</td><td>"+data[i].zy+
                            // "</td><td>"+data[i].sex+
                            // "</td><td>"+data[i].qsq+
                            // "</td><td>"+data[i].tc+
                            // "</td><td>"+data[i].nd+"</td></tr>";

                            // str+="<tr><td>"+data[i].hname+
                            // "</td><td>"+data[i].zy+
                            // "</td><td>"+data[i].sex+
                            // "</td><td>"+data[i].qsq+
                            // "</td><td>"+data[i].tc+
                            // "</td><td>"+data[i].nd+"</td></tr>";





                            //document.write("<input type="text" id="hname1" style="width:60px;">");
                        }
                        //$("#tabletext").html(str);//把拼好的样式填到指定的位置，一个Ajax的表格刷新功能就完成了
                        //$("#zy1").val(data[0].hname);


                        // console.log("初始类型"+typeof data) //string
                        // console.log("数据打印"+data)

                        //var obj = JSON.parse(data);  //json字符串-->JavaScript对象
                        //onsole.log("转换后格式"+typeof obj) //object
                    }

                });
                //$('#table').DataTable().ajax.reload();
            });
        })
        //document.getElementById("table").innerHTML=str;
    </script>
<%--    //resp是json对象--%>
<%--    //alert(resp["hName"]);--%>
<%--    //alert(resp.results[0].hName);--%>
<%--    // $("#zy1").val(resp.hName);--%>
<%--    // $("#sex1").val(resp.sex);--%>
<%--    // $("#qsq1").val(resp.qsq);--%>
<%--    //$("#zy1").val(resp.hName);--%>
<%--    // $(resp).each(function (i,obj) {--%>
<%--    //     //var hName = resp.hName;--%>
<%--    //     //$("#zy1").value(n);--%>
<%--    //     //alert("i="+i+"n="+obj);--%>
<%--    //     //alert(n,resp.hName);--%>
<%--    //     $("#zy1").val(resp.hName);--%>
<%--    // })--%>
</head>
&nbsp;&nbsp;职业 &nbsp;&nbsp;&nbsp;&nbsp;性别   &nbsp;  强势期 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 特长 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;难度<br />
<select id="zy">
    <option value="%">不限</option>
    <option value="法师%">法师</option>
    <option value="射手%">射手</option>
    <option value="刺客%">刺客</option>
    <option value="坦克%">坦克</option>
    <option value="战士%">战士</option>
</select>

<select id="sex">
    <option value="%">不限</option>
    <option value="男%">男</option>
    <option value="女%">女</option>
</select>
<select id="qsq">
    <option value="%">不限</option>
    <option value="前期%">前期</option>
    <option value="中期%">中期</option>
    <option value="后期%">后期</option>
    <option value="均衡%">均衡</option>
</select>
<select id="tc">
    <option value="%">不限</option>
    <option value="先手%">先手</option>
    <option value="突进%">突进</option>
    <option value="团控%">团控</option>
    <option value="持续输出%">持续输出</option>
    <option value="远程消耗%">远程消耗</option>
    <option value="控制%">控制</option>
    <option value="团队增益%">团队增益</option>
    <option value="爆发%">爆发</option>
</select>
<select id="nd">
    <option value="%">不限</option>
    <option value="10%">10</option>
    <option value="9%">9</option>
    <option value="8%">8</option>
    <option value="7%">7</option>
    <option value="6%">6</option>
    <option value="5%">5</option>
    <option value="4%">4</option>
    <option value="3%">3</option>
    <option value="2%">2</option>
    <option value="1">1</option>
</select>
<input type="button" value="推理"  id="btn" >
<input type="text"  id="tt">
<table border="2" align="right" id="table">
    <tr>
        <td>名字</td>
        <td>职业</td>
        <td>性别</td>
        <td>强势期</td>
        <td>特长</td>
        <td>难度</td>
    </tr>
<%--    <tbody id="tabletext">--%>


<%--    </tbody>--%>
    <tr>
        <td><input type="text" id="hname0" style="width:60px;"></td>
        <td><input type="text" id="zy0" style="width:60px;"></td>
        <td><input type="text" id="sex0" style="width:60px;"></td>
        <td><input type="text" id="qsq0" style="width:60px;"></td>
        <td><input type="text" id="tc0" style="width:60px;"></td>
        <td><input type="text" id="nd0" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname1" style="width:60px;"></td>
        <td><input type="text" id="zy1" style="width:60px;"></td>
        <td><input type="text" id="sex1" style="width:60px;"></td>
        <td><input type="text" id="qsq1" style="width:60px;"></td>
        <td><input type="text" id="tc1" style="width:60px;"></td>
        <td><input type="text" id="nd1" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname2" style="width:60px;"></td>
        <td><input type="text" id="zy2" style="width:60px;"></td>
        <td><input type="text" id="sex2" style="width:60px;"></td>
        <td><input type="text" id="qsq2" style="width:60px;"></td>
        <td><input type="text" id="tc2" style="width:60px;"></td>
        <td><input type="text" id="nd2" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname3" style="width:60px;"></td>
        <td><input type="text" id="zy3" style="width:60px;"></td>
        <td><input type="text" id="sex3" style="width:60px;"></td>
        <td><input type="text" id="qsq3" style="width:60px;"></td>
        <td><input type="text" id="tc3" style="width:60px;"></td>
        <td><input type="text" id="nd3" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname4" style="width:60px;"></td>
        <td><input type="text" id="zy4" style="width:60px;"></td>
        <td><input type="text" id="sex4" style="width:60px;"></td>
        <td><input type="text" id="qsq4" style="width:60px;"></td>
        <td><input type="text" id="tc4" style="width:60px;"></td>
        <td><input type="text" id="nd4" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname5" style="width:60px;"></td>
        <td><input type="text" id="zy5" style="width:60px;"></td>
        <td><input type="text" id="sex5" style="width:60px;"></td>
        <td><input type="text" id="qsq5" style="width:60px;"></td>
        <td><input type="text" id="tc5" style="width:60px;"></td>
        <td><input type="text" id="nd5" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname6" style="width:60px;"></td>
        <td><input type="text" id="zy6" style="width:60px;"></td>
        <td><input type="text" id="sex6" style="width:60px;"></td>
        <td><input type="text" id="qsq6" style="width:60px;"></td>
        <td><input type="text" id="tc6" style="width:60px;"></td>
        <td><input type="text" id="nd6" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname7" style="width:60px;"></td>
        <td><input type="text" id="zy7" style="width:60px;"></td>
        <td><input type="text" id="sex7" style="width:60px;"></td>
        <td><input type="text" id="qsq7" style="width:60px;"></td>
        <td><input type="text" id="tc7" style="width:60px;"></td>
        <td><input type="text" id="nd7" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname8" style="width:60px;"></td>
        <td><input type="text" id="zy8" style="width:60px;"></td>
        <td><input type="text" id="sex8" style="width:60px;"></td>
        <td><input type="text" id="qsq8" style="width:60px;"></td>
        <td><input type="text" id="tc8" style="width:60px;"></td>
        <td><input type="text" id="nd8" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname9" style="width:60px;"></td>
        <td><input type="text" id="zy9" style="width:60px;"></td>
        <td><input type="text" id="sex9" style="width:60px;"></td>
        <td><input type="text" id="qsq9" style="width:60px;"></td>
        <td><input type="text" id="tc9" style="width:60px;"></td>
        <td><input type="text" id="nd9" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname10" style="width:60px;"></td>
        <td><input type="text" id="zy10" style="width:60px;"></td>
        <td><input type="text" id="sex10" style="width:60px;"></td>
        <td><input type="text" id="qsq10" style="width:60px;"></td>
        <td><input type="text" id="tc10" style="width:60px;"></td>
        <td><input type="text" id="nd10" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname11" style="width:60px;"></td>
        <td><input type="text" id="zy11" style="width:60px;"></td>
        <td><input type="text" id="sex11" style="width:60px;"></td>
        <td><input type="text" id="qsq11" style="width:60px;"></td>
        <td><input type="text" id="tc11" style="width:60px;"></td>
        <td><input type="text" id="nd11" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname12" style="width:60px;"></td>
        <td><input type="text" id="zy12" style="width:60px;"></td>
        <td><input type="text" id="sex12" style="width:60px;"></td>
        <td><input type="text" id="qsq12" style="width:60px;"></td>
        <td><input type="text" id="tc12" style="width:60px;"></td>
        <td><input type="text" id="nd12" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname13" style="width:60px;"></td>
        <td><input type="text" id="zy13" style="width:60px;"></td>
        <td><input type="text" id="sex13" style="width:60px;"></td>
        <td><input type="text" id="qsq13" style="width:60px;"></td>
        <td><input type="text" id="tc13" style="width:60px;"></td>
        <td><input type="text" id="nd13" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname14" style="width:60px;"></td>
        <td><input type="text" id="zy14" style="width:60px;"></td>
        <td><input type="text" id="sex14" style="width:60px;"></td>
        <td><input type="text" id="qsq14" style="width:60px;"></td>
        <td><input type="text" id="tc14" style="width:60px;"></td>
        <td><input type="text" id="nd14" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname15" style="width:60px;"></td>
        <td><input type="text" id="zy15" style="width:60px;"></td>
        <td><input type="text" id="sex15" style="width:60px;"></td>
        <td><input type="text" id="qsq15" style="width:60px;"></td>
        <td><input type="text" id="tc15" style="width:60px;"></td>
        <td><input type="text" id="nd15" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname16" style="width:60px;"></td>
        <td><input type="text" id="zy16" style="width:60px;"></td>
        <td><input type="text" id="sex16" style="width:60px;"></td>
        <td><input type="text" id="qsq16" style="width:60px;"></td>
        <td><input type="text" id="tc16" style="width:60px;"></td>
        <td><input type="text" id="nd16" style="width:60px;"></td>
    </tr>
    <tr>
        <td><input type="text" id="hname17" style="width:60px;"></td>
        <td><input type="text" id="zy17" style="width:60px;"></td>
        <td><input type="text" id="sex17" style="width:60px;"></td>
        <td><input type="text" id="qsq17" style="width:60px;"></td>
        <td><input type="text" id="tc17" style="width:60px;"></td>
        <td><input type="text" id="nd17" style="width:60px;"></td>
    </tr>


</table>

</body>
</html>