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
public class bai_17 {
    public static void main(String[] args) {
        boolean khongco = false;
        Scanner input = new Scanner(System.in);
        System.out.println("nhap chuoi : ");
        String chuoi = input.nextLine();
        System.out.println("nhap ki tu: ");
        char kitu = input.nextLine().charAt(0);
        char mangkitu[] = chuoi.toCharArray();
        for(int i=0; i < mangkitu.length; i++){
            if(kitu == mangkitu[i]){
                System.out.println((i+1));
                khongco = true;
            }
        }
        if(khongco == false){
            System.out.println("khong ton tai trong chuoi");
        }
    }
}
