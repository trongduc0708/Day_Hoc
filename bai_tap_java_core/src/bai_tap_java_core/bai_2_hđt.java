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
public class bai_2_hđt {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("nhập n: ");
        int n = sc.nextInt();
        int sum = tinhtong(n);
        System.out.printf("tong cac chu so cua %d la: %d", n, sum);
    }
    public static int tinhtong(int n){
        int sum=0;
        while(n>0){
            sum += n%10;
            n/=10;
    }
        return sum;
    }
}
