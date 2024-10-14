import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Connect_SQL {
    private static final String URL = "jdbc:mysql://localhost:3306/testdb"; 
    private static final String USER = "root"; 
    private static final String PASSWORD = ""; 

    public static void main(String[] args) {
        // Tạo khung chính
        JFrame frame = new JFrame("MySQL Swing App");
        frame.setSize(400, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new GridLayout(3, 2));

        // Tạo các thành phần GUI
        JLabel nameLabel = new JLabel("Họ và tên:");
        JTextField nameField = new JTextField();
        
        JLabel emailLabel = new JLabel("Email:");
        JTextField emailField = new JTextField();

        JButton submitButton = new JButton("Thêm người dùng");
        JLabel messageLabel = new JLabel("");

        // Thêm hành động cho nút
        submitButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String name = nameField.getText();
                String email = emailField.getText();
                
                if (addUser(name, email)) {
                    messageLabel.setText("Người dùng đã được thêm thành công!");
                } else {
                    messageLabel.setText("Đã xảy ra lỗi!");
                }
            }
        });

        // Thêm các thành phần vào khung
        frame.add(nameLabel);
        frame.add(nameField);
        frame.add(emailLabel);
        frame.add(emailField);
        frame.add(submitButton);
        frame.add(messageLabel);

        // Hiển thị khung
        frame.setVisible(true);
    }

    // Hàm thêm người dùng vào cơ sở dữ liệu
    private static boolean addUser(String name, String email) {
        String query = "INSERT INTO users (name, email) VALUES (?, ?)";
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement pst = con.prepareStatement(query)) {
            
            pst.setString(1, name);
            pst.setString(2, email);
            pst.executeUpdate();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
