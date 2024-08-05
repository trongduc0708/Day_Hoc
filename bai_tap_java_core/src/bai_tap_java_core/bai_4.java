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
public class bai_4 {
    public static void main(String[] args) {
        System.out.println("nhap vao 3 so bat ki: ");
        Scanner input = new Scanner(System.in);
        float a = input.nextFloat();
        float b = input.nextFloat();
        float c = input.nextFloat();
        if(a*a==b*b+c*c || a*a+b*b==c*c || a*a + c*c == b*b){
            System.out.println("la 3 canh cua mot tsm giac vuong");
        }else{
            System.out.println("khong la 3 canh cua mot tsm giac vuong");
        }
    }
}
