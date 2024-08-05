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
public class bai_13 {
    public static void main(String[] args) {
        System.out.println("nhap n: ");
        int [] songuyen;
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        songuyen = new int[n];
        for(int i=0;i<n;i++){
            System.out.println("nhap so nguyen thu: "+ (i+1)+ " :");
            songuyen[i] = input.nextInt();
        }
        int min=0;
        for(int i=0;i<n;i++){
            if(songuyen [i] < min){
                min = songuyen [i];
            }
        }
        System.out.println("min cua n so nguyen la: "+ min);
    }
}
