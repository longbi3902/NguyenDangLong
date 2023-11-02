package tesst;
import dao.userDAO;
import entity.User;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Admin
 */
public class test {
    public static void main(String[] args){
        userDAO dao = new userDAO();
        List<User> list = dao.findAll();
        for(User o: list){
            System.out.println(o);
      
        }
        String email = "long8and@gmail.com";
        String pass = "12345678";
        User account  = new userDAO().findByUsernameAndPassword(email, pass);
        System.out.print(account);
    }
}
