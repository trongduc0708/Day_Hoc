import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MyFirstSwingApp {
    public static void main(String[] args) {
        // Tạo một cửa sổ mới
        JFrame frame = new JFrame("Ứng dụng Swing đầu tiên");
        frame.setSize(400, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // Tạo một nhãn
        JLabel label = new JLabel("Xin chào, thế giới!");
        label.setBounds(150, 50, 200, 30);
        
        // Tạo một nút
        JButton button = new JButton("Nhấn vào đây");
        button.setBounds(150, 100, 150, 30);
        
        // Thêm sự kiện cho nút
        button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                label.setText("Bạn đã nhấn nút!");
            }
        });
        
        // Thêm nhãn và nút vào cửa sổ
        frame.add(label);
        frame.add(button);
        // Thiết lập layout
        frame.setLayout(null);
        // Hiển thị cửa sổ
        frame.setVisible(true);
    }
}
