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
public class bai_3 {

    public static void main(String[] args) {
        System.out.println("nhap 3 so bat ki: ");
        Scanner input = new Scanner(System.in);
        float a = input.nextFloat();
        float b = input.nextFloat();
        float c = input.nextFloat();
        if (a + b < c || a + c < b || b + c < a) {
            System.out.println("không phải 3 cạnh của tam giác");
        } else {
            System.out.println("là ba cạnh của 1 tam giác");
        }
    }
}