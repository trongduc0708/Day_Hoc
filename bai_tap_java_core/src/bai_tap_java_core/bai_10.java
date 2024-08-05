/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bai_tap_java_core;

import java.util.Scanner;

/**
 *
 * @author luong
 */
public class bai_10 {

    public static void main(String[] args) {
        String[] MSV = new String[5];
        Scanner input = new Scanner(System.in);
        for (int i = 1; i <= 5; i++) {
            System.out.println("nhap ma sv thu " + i + ":");
            MSV[i] = input.nextLine();
        }
        for (int i = 1; i <= 5; i++) {
            if (!MSV[i].matches("B170[1-9]{4}")) {
                System.out.println("ma sinh vien thu: " + i + "sai dinh dang");
            }
        }
    }
}
