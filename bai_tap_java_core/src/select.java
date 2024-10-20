
import DTO.tai_khoan;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


public class select {
    
     private static final String URL = "jdbc:mysql://localhost:3306/testdb"; 
    private static final String USER = "root"; 
    private static final String PASSWORD = ""; 
    public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Kết nối đến cơ sở dữ liệu
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Kết nối thành công!");
            String sql = "select user, pass, trangthai, diachi from user where user_name = ? and pass = ? and trangthai = ?";
            preparedStatement.setString(1,"admin");
            preparedStatement.setInt(2, 15215);
            preparedStatement.setBoolean(3, true);
            resultSet = statement.executeQuery(sql);
            List<tai_khoan> mList = new ArrayList<>();
            while (resultSet.next()) {
                String user = resultSet.getString("user");
                String pass = resultSet.getString("pass");
                System.out.println("user:" + user);
                tai_khoan tai_khoan = new tai_khoan();
                tai_khoan.setUser(user);
                tai_khoan.setPass(pass);
                
                mList.add(tai_khoan);
            }
            Gson gson = new Gson();
            String json = gson.toJson(mList);
            System.out.println("json:" + json);
        }catch(Exception x){
            
        }
    }
}
//    String selectSQL = "SELECT * FROM users WHERE user = ? AND password = ?";
//            preparedStatement = connection.prepareStatement(selectSQL);
//
//            // Set the parameters
//            String use = "user_example";  // Replace with actual user value
//            String passs = "pass_example";  // Replace with actual password value
//            preparedStatement.setString(1, use);
//            preparedStatement.setString(2, passs);
//
//            // Thực thi truy vấn
//            resultSet = preparedStatement.executeQuery();
