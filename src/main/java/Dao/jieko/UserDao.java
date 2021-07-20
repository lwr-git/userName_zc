//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package Dao.jieko;

import Dao.Hero;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public UserDao() {
    }

    public int zc(Hero hero) {
        Connection conn = null;
        PreparedStatement sql = null;
        int re = 0;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xe", "pkq", "Root123456!");
            sql = conn.prepareStatement("insert into hero (HNAME, SEX, ZY, QSQ, TC, ND) values (?,?,?,?,?,?)");
            sql.setString(1, hero.getHname());
            sql.setString(2, hero.getSex());
            sql.setString(3, hero.getZy());
            sql.setString(4, hero.getQsq());
            sql.setString(5, hero.getTc());
            sql.setString(6, hero.getNd());
            re = sql.executeUpdate();
        } catch (Exception var18) {
            var18.printStackTrace();
        } finally {
            if (sql != null) {
                try {
                    sql.close();
                } catch (SQLException var17) {
                    var17.printStackTrace();
                }

                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException var16) {
                        var16.printStackTrace();
                    }
                }
            }

        }

        return re;
    }

    public List<Hero> find() {
        Connection conn = null;
        PreparedStatement sql = null;
        ResultSet re = null;
        new Hero();
        ArrayList heroList = new ArrayList();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xe", "pkq", "Root123456!");
            sql = conn.prepareStatement("select * from hero");
            re = sql.executeQuery();

            while(re.next()) {
                Hero hero = new Hero();
                hero.setHname(re.getString("hname"));
                hero.setSex(re.getString("sex"));
                hero.setZy(re.getString("zy"));
                hero.setQsq(re.getString("qsq"));
                hero.setTc(re.getString("tc"));
                hero.setNd(re.getString("nd"));
                hero.setHid(re.getInt("hid"));
                heroList.add(hero);
            }
        } catch (ClassNotFoundException var27) {
            var27.printStackTrace();
        } catch (SQLException var28) {
            var28.printStackTrace();
        } finally {
            if (re != null) {
                try {
                    re.close();
                } catch (SQLException var26) {
                    var26.printStackTrace();
                }

                if (sql != null) {
                    try {
                        sql.close();
                    } catch (SQLException var25) {
                        var25.printStackTrace();
                    }
                }

                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException var24) {
                        var24.printStackTrace();
                    }
                }
            }

        }

        return heroList;
    }

    public boolean DeleteUser(String hid) {
        Connection conn = null;
        PreparedStatement sql = null;
        int re = 0;
        new Hero();


        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xe", "pkq", "Root123456!");
            sql = conn.prepareStatement("delete from hero where hid =?");
            sql.setInt(1, Integer.valueOf(hid));
            re = sql.executeUpdate();
            if (re <= 0) {
                return false;
            }


        } catch (ClassNotFoundException var25) {
            var25.printStackTrace();
            return false;
        } catch (SQLException var26) {
            var26.printStackTrace();
            return false;
        } finally {
            if (sql != null) {
                try {
                    sql.close();
                } catch (SQLException var24) {
                    var24.printStackTrace();
                }

                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException var23) {
                        var23.printStackTrace();
                    }
                }
            }

        }

        return true;
    }

    public List<Hero> tuili(String zy, String sex, String qsq, String tc, String nd) {
        Connection conn = null;
        PreparedStatement sql = null;
        ResultSet re = null;
        new Hero();
        ArrayList heroList = new ArrayList();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xe", "pkq", "Root123456!");
            sql = conn.prepareStatement("select * from hero where zy like ? and sex like ? and qsq like ? and tc like ? and nd like ?");
            sql.setString(1, zy);
            sql.setString(2, sex);
            sql.setString(3, qsq);
            sql.setString(4, tc);
            sql.setString(5, nd);
            re = sql.executeQuery();

            while(re.next()) {
                Hero hero = new Hero();
                hero.setHname(re.getString("hname"));
                hero.setSex(re.getString("sex"));
                hero.setZy(re.getString("zy"));
                hero.setQsq(re.getString("qsq"));
                hero.setTc(re.getString("tc"));
                hero.setNd(re.getString("nd"));
                hero.setHid(re.getInt("hid"));
                heroList.add(hero);
            }
        } catch (ClassNotFoundException var32) {
            var32.printStackTrace();
        } catch (SQLException var33) {
            var33.printStackTrace();
        } finally {
            if (re != null) {
                try {
                    re.close();
                } catch (SQLException var31) {
                    var31.printStackTrace();
                }

                if (sql != null) {
                    try {
                        sql.close();
                    } catch (SQLException var30) {
                        var30.printStackTrace();
                    }
                }

                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException var29) {
                        var29.printStackTrace();
                    }
                }
            }

        }

        return heroList;
    }

    public List<Hero> ntuili(String hname) {
        Connection conn = null;
        PreparedStatement sql = null;
        ResultSet re = null;
        new Hero();
        ArrayList heroList = new ArrayList();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xe", "pkq", "Root123456!");
            sql = conn.prepareStatement("select * from hero where hname=?");
            sql.setString(1, hname);
            re = sql.executeQuery();

            while(re.next()) {
                Hero hero = new Hero();
                hero.setHname(re.getString("hname"));
                hero.setSex(re.getString("sex"));
                hero.setZy(re.getString("zy"));
                hero.setQsq(re.getString("qsq"));
                hero.setTc(re.getString("tc"));
                hero.setNd(re.getString("nd"));
                hero.setHid(re.getInt("hid"));
                heroList.add(hero);
            }
        } catch (ClassNotFoundException var28) {
            var28.printStackTrace();
        } catch (SQLException var29) {
            var29.printStackTrace();
        } finally {
            if (re != null) {
                try {
                    re.close();
                } catch (SQLException var27) {
                    var27.printStackTrace();
                }

                if (sql != null) {
                    try {
                        sql.close();
                    } catch (SQLException var26) {
                        var26.printStackTrace();
                    }
                }

                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException var25) {
                        var25.printStackTrace();
                    }
                }
            }

        }

        return heroList;
    }
}
