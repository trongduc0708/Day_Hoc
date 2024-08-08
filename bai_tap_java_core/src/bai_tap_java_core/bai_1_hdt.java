package bai_tap_java_core;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class bai_1_hdt {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("nhap n: ");
        int n = sc.nextInt();
        List<Integer> listnumbers = phantichsonguyen(n);
        System.out.printf("ket qua: %d = ", n);
        int size = listnumbers.size();
        for (int i = 0; i < size - 1; i++) {
            System.out.print(listnumbers.get(i) + " x ");
        }
        System.out.print(listnumbers.get(size - 1)); // Đảm bảo index hợp lệ
    }

    public static List<Integer> phantichsonguyen(int n) {
        int i = 2;
        List<Integer> listnumbers = new ArrayList<Integer>();
        while (n > 1) {
            if (n % i == 0) {
                n = n / i;
                listnumbers.add(i);
            } else {
                i++;
            }
        }
        if (listnumbers.isEmpty()) {
            listnumbers.add(n);
        }
        return listnumbers;
    }
}
