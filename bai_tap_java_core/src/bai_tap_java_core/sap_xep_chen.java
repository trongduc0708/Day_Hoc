package bai_tap_java_core;

import java.util.Scanner;

public class sap_xep_chen {

    void sort(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n; i++) {
            int j = i - 1;
            int key = arr[i];
            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j = j - 1;
            }
            arr[j+1] = key;
        }
    }

    void xuat_mang(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n; i++) {
            System.out.printf(arr[i] + " ");
        }
    }    

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("nhap so phan tu co trong mang: ");
        int n = sc.nextInt();
        int[] arr = new int[n];
        System.out.println("nhap phan tu mang: ");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }        
        sap_xep_chen sx = new sap_xep_chen();
        sx.sort(arr);
        sx.xuat_mang(arr);
    }
}
