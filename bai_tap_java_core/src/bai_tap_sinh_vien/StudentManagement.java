/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bai_tap_sinh_vien;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author Admin
 */
public class StudentManagement {
    private static ArrayList<Student> students = new ArrayList<>();
    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        while (true) {
            showMenu();
            int choice = Integer.parseInt(scanner.nextLine());

            switch (choice) {
                case 1:
                    addStudent();
                    break;
                case 2:
                    displayStudents();
                    break;
                case 3:
                    updateStudent();
                    break;
                case 4:
                    deleteStudent();
                    break;
                case 5:
                    searchStudent();
                    break;
                case 6:
                    System.out.println("Exiting...");
                    System.exit(0);
                default:
                    System.out.println("Invalid choice. Please try again.");
            }
        }
    }

    private static void showMenu() {
        System.out.println("----- Student Management Menu -----");
        System.out.println("1. Add Student");
        System.out.println("2. Display Students");
        System.out.println("3. Update Student");
        System.out.println("4. Delete Student");
        System.out.println("5. Search Student");
        System.out.println("6. Exit");
        System.out.print("Enter your choice: ");
    }

    private static void addStudent() {
        System.out.print("Enter student ID: ");
        int id = Integer.parseInt(scanner.nextLine());
        System.out.print("Enter student name: ");
        String name = scanner.nextLine();
        System.out.print("Enter student age: ");
        int age = Integer.parseInt(scanner.nextLine());
        System.out.print("Enter student address: ");
        String address = scanner.nextLine();
        System.out.print("Enter student GPA: ");
        double gpa = Double.parseDouble(scanner.nextLine());

        Student student = new Student(id, name, age, address, gpa);
        students.add(student);
        System.out.println("Student added successfully.");
    }

    private static void displayStudents() {
        if (students.isEmpty()) {
            System.out.println("No students available.");
        } else {
            for (Student student : students) {
                System.out.println(student);
            }
        }
    }

    private static void updateStudent() {
        System.out.print("Enter student ID to update: ");
        int id = Integer.parseInt(scanner.nextLine());
        Student student = findStudentById(id);

        if (student != null) {
            System.out.print("Enter new name (leave empty to keep current): ");
            String name = scanner.nextLine();
            if (!name.isEmpty()) student.setName(name);

            System.out.print("Enter new age (leave empty to keep current): ");
            String ageInput = scanner.nextLine();
            if (!ageInput.isEmpty()) student.setAge(Integer.parseInt(ageInput));

            System.out.print("Enter new address (leave empty to keep current): ");
            String address = scanner.nextLine();
            if (!address.isEmpty()) student.setAddress(address);

            System.out.print("Enter new GPA (leave empty to keep current): ");
            String gpaInput = scanner.nextLine();
            if (!gpaInput.isEmpty()) student.setGpa(Double.parseDouble(gpaInput));

            System.out.println("Student updated successfully.");
        } else {
            System.out.println("Student not found.");
        }
    }

    private static void deleteStudent() {
        System.out.print("Enter student ID to delete: ");
        int id = Integer.parseInt(scanner.nextLine());
        Student student = findStudentById(id);

        if (student != null) {
            students.remove(student);
            System.out.println("Student deleted successfully.");
        } else {
            System.out.println("Student not found.");
        }
    }

    private static void searchStudent() {
        System.out.print("Enter student ID to search: ");
        int id = Integer.parseInt(scanner.nextLine());
        Student student = findStudentById(id);

        if (student != null) {
            System.out.println(student);
        } else {
            System.out.println("Student not found.");
        }
    }

    private static Student findStudentById(int id) {
        for (Student student : students) {
            if (student.getId() == id) {
                return student;
            }
        }
        return null;
    }
}
