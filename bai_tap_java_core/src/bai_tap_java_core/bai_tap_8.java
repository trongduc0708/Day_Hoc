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
public class bai_tap_8 {
    public static void main(String[] args) {
        System.out.println("nhap n: ");
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        for(int i=1;i<=20;i++){
            System.out.println(n + " x " + i + "=");
            System.out.println(n*i);
        }
    }
}
