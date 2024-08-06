package bai_tap_java_core;
import java.util.Scanner;

public class test
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        // Hiển thị menu cho người dùng chọn
        System.out.println("Chọn chức năng:");
        System.out.println("1. Đảo ngược mảng");
        System.out.println("2. Tìm phần tử nhỏ nhất");
        System.out.print("Nhập lựa chọn của bạn (1 hoặc 2): ");
        int choice = sc.nextInt();

        // Xử lý dựa trên sự chọn của người dùng
        switch (choice) {
            case 1:
                reverseArray(sc);
                break;
            case 2:
                findMinValue(sc);
                break;
            default:
                System.out.println("Lựa chọn không hợp lệ.");
                break;
        }
    }

    // Hàm đảo ngược mảng
    public static void reverseArray(Scanner sc) {
        System.out.println("Nhập vào n:");
        int n = sc.nextInt();
        int[] soNguyen = new int[n];

        for (int i = 0; i < n; i++) {
            System.out.println("Nhập vào số nguyên:");
            soNguyen[i] = sc.nextInt();
        }

        // In ra mảng ban đầu
        System.out.println("Mảng trước khi đảo ngược: ");
        for (int i = 0; i < n; i++) {
            System.out.print(soNguyen[i] + " ");
        }

        // Đảo ngược mảng
        for (int i = 0; i < n / 2; i++) {
            int temp = soNguyen[i];
            soNguyen[i] = soNguyen[n - i - 1];
            soNguyen[n - i - 1] = temp;
        }

        // In ra mảng sau khi đảo ngược
        System.out.println("\nMảng sau khi đảo ngược: ");
        for (int i = 0; i < n; i++) {
            System.out.print(soNguyen[i] + " ");
        }
        System.out.println();
    }

    // Hàm tìm phần tử nhỏ nhất
    public static void findMinValue(Scanner sc) {
        System.out.println("Nhập vào n:");
        int n = sc.nextInt();
        int[] soNguyen = new int[n];
        int min;

        for (int i = 0; i < n; i++) {
            System.out.println("Nhập vào số nguyên:");
            soNguyen[i] = sc.nextInt();
        }

        // Tìm phần tử nhỏ nhất
        min = soNguyen[0];
        for (int i = 1; i < n; i++) {
            if (soNguyen[i] < min) {
                min = soNguyen[i];
            }
        }

        System.out.println("Phần tử có giá trị nhỏ nhất là: " + min);
    }
}
