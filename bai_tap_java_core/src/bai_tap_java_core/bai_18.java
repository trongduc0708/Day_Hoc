/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bai_tap_java_core;

/**
 *
 * @author luong
 */
import java.util.Scanner;
public class bai_18 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("nhap chuoi:: ");
        String chuoi = input.nextLine();
        if(chuoi.matches(".*\\d.*")){
            System.out.println("co");
        }else{
            System.out.println("khong");
        }
    }
}
