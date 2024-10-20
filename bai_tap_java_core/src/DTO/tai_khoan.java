/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

// đọc lại khái niệm list , list array , json , json nhieu phan tử , cách khai báo biến trong java .
// đọc khái niêm constructor(có tham số và không có tham số) , get và set
public class tai_khoan {
    public String user ;
    public String pass ;
    public String trangthai ;
    public String diachi ;

    public tai_khoan() {
    }

    public tai_khoan(String user, String pass, String trangthai, String diachi) {
        this.user = user;
        this.pass = pass;
        this.trangthai = trangthai;
        this.diachi = diachi;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
    
}
