
import java.util.Scanner;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author luong
 */
public class bai_6 {
    public static void main(String[] args) {
        System.out.println("nhap so nguyen n: ");
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        if (n <= 0) {
            System.out.println("nhap lai n: ");
        } else {
                int tong = 0;
            System.out.println("tong cua cac so chan tu 0 den n la: ");
            for (int i = 0; i <= n; i=i+2){
                 tong = tong + i;
            }
            System.out.println(tong);
        }
    }
}
