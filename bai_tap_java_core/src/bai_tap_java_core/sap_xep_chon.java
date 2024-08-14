
package bai_tap_java_core;

import java.util.Scanner;
public class sap_xep_chon {
    void sort(int arr[] ){
        int n= arr.length;
        for(int i=0;i<n;i++){
            int min_i=i;
            for(int j=i+1;j<n;j++){
                if(arr[j]<arr[min_i]){
                    min_i = j;
                    int temp = arr[min_i];
                    arr[min_i] = arr[i];
                    arr[i]= temp;
            }
        }
    }
        
}
    void xuat_mang(int arr[]){
        int n= arr.length;
        for(int i=0;i<n;i++){
            System.out.printf(arr[i] + "  ");
        }
    }
    public static void main(String args[]){
        Scanner sc = new Scanner(System.in);
        System.out.println("nhap so phan tu co trong mang: ");
        int n = sc.nextInt();
        int [] arr = new int[n];
        System.out.println("nhap phan tu vao mang: ");
        for(int i=0;i<n;i++){
            arr[i] = sc.nextInt();
        }
        sap_xep_chon sx = new sap_xep_chon();
        sx.sort(arr);
        sx.xuat_mang(arr);
    }
}
