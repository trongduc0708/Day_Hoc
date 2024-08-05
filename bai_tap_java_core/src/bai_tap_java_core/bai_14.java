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
public class bai_14 {
    public static void main(String[] args) {
        System.out.println("nhap n: ");
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int [] songuyen = new int[n];
        for(int i=0; i<n;i++){
            System.out.println("nhap so nguyen thu"+ (i+1)+ " :");
            songuyen[i] = input.nextInt();
        }
        System.out.println("mang ban dau la: ");
        for(int i=0;i<n;i++){
            System.out.println(songuyen[i] +"   ");
        }
        System.out.println("mang sau khi dao nguoc la: ");
        int a=0;
        for(int i=0;i<n/2;i++){
            a=songuyen[i];
            songuyen[i]=songuyen[n-i-1];
            songuyen[n-i-1]=a;
        }
        for(int i=0;i<n;i++){
            System.out.println(songuyen[i] +  "   ");
        }
    }
}
