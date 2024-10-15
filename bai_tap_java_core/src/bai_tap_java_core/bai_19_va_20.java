package bai_tap_java_core;

import java.util.Scanner;


/**
 *
 * @author luong
 */
public class bai_19_va_20 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("chon bai can hien thi: ");
        System.out.println("bai 19");
        System.out.println("bai 20");
        System.out.println("nhap su lua chon cua ban (19 hoac 20) : ");
        int bai = sc.nextInt();
        sc.nextLine();
        switch (bai) {
            case 19:
                bai_19(sc);
                break;
            case 20:
                bai_20(sc);
                break;
            case 21:
                System.out.println("Thoat chuong trinh");
                break;
            default:
                System.out.println("khong hop le");
        }

    }

    public static void bai_19(Scanner sc) {
        int solan = 0;
        System.out.println("nhap chuoi: ");
        String chuoi = sc.nextLine();
        char mangkitu[] = chuoi.toCharArray();
        int m = mangkitu.length;
        for (int i = 0; i < mangkitu.length; i++) {
            if ('a' == mangkitu[i]) {
                solan++;
            }
        }
        System.out.println(solan);
    }

    public static void bai_20(Scanner sc) {
        System.out.println("nhap chuoi: ");
        String chuoi = sc.nextLine();
        if (chuoi.matches("^[A-Z][^\\s]{0,18}\\d$")) {
            System.out.println("Duyệt");
        } else {
            System.out.println("Không duyệt");
        }
    }
}
