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
public class bai_12 {
    public static void main(String[] args) {
        System.out.println("nhap n: ");
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int[] songuyen = new int[n];
        for(int i=0;i<n;i++){
            System.out.println("nhap so nguyen thu "+ (i+1)+ " :");
            songuyen[i] = input.nextInt();
        }
        int max=0;
        for(int i=0;i<n;i++){
            if(songuyen[i]>max){
                max = songuyen[i];
            }
        }
            System.out.println("max la: "+ max);
    }
}
