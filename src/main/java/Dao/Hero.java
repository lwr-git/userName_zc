//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package Dao;

public class Hero {
    private String hname;
    private String sex;
    private String zy;
    private String qsq;
    private String tc;
    private String nd;
    private Integer hid;

    public Hero() {
    }

    public Hero(String hname, String sex, String zy, String qsq, String tc, String nd, Integer hid) {
        this.hname = hname;
        this.sex = sex;
        this.zy = zy;
        this.qsq = qsq;
        this.tc = tc;
        this.nd = nd;
        this.hid = hid;
    }

    public String toString() {
        return "Hero{hname='" + this.hname + '\'' + ", sex='" + this.sex + '\'' + ", zy='" + this.zy + '\'' + ", qsq='" + this.qsq + '\'' + ", tc='" + this.tc + '\'' + ", nd='" + this.nd + '\'' + ", hid=" + this.hid + '}';
    }

    public String getHname() {
        return this.hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getSex() {
        return this.sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getZy() {
        return this.zy;
    }

    public void setZy(String zy) {
        this.zy = zy;
    }

    public String getQsq() {
        return this.qsq;
    }

    public void setQsq(String qsq) {
        this.qsq = qsq;
    }

    public String getTc() {
        return this.tc;
    }

    public void setTc(String tc) {
        this.tc = tc;
    }

    public String getNd() {
        return this.nd;
    }

    public void setNd(String nd) {
        this.nd = nd;
    }

    public Integer getHid() {
        return this.hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }
}
