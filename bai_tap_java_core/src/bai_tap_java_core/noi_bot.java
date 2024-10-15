package bai_tap_java_core;

import java.util.Scanner;

public class noi_bot {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("nhap so phan tu trong mang: ");
        int n = sc.nextInt();
        int[] a = new int[5];
        System.out.println("nhap phan tu ");
        for (int i = 0; i < n; i++) {
            a[i] = sc.nextInt();
        }
        bubblesort(a, n);
        System.out.println("mang sau khi sap xep la: ");
        for (int i = 0; i < n; i++) {
            System.out.print(a[i] + " ");
        }
    }

    public static void bubblesort(int[] a, int n) {
        int c;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n - 1 - i; j++) {

                if (a[j] > a[j + 1]) {
                    c = a[j];
                    a[j] = a[j + 1];
                    a[j + 1] = c;
                }
            }
        }
    }
}
