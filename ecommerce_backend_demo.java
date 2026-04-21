import java.sql.*;

public class EcommerceBackendDemo {
    public static void main(String[] args) {
        try {
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/ecommerce",
                "root",
                "password"
            );

            System.out.println("Connected to Database");

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Customers");

            while (rs.next()) {
                System.out.println(rs.getString("name"));
            }

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}