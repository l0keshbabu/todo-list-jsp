package dao;

import java.sql.*;
import java.util.ArrayList;
import dto.Task;

public class DAO {

    private Connection con;

    public DAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/todolistdb",
                "root",
                "1937"
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Register user
    public boolean register(String email, String password) {
        try {
            PreparedStatement ps =
                con.prepareStatement("INSERT INTO users(email,password) VALUES(?,?)");
            ps.setString(1, email);
            ps.setString(2, password);
            return ps.executeUpdate() == 1;
        } catch (Exception e) {
            return false;
        }
    }

    // Login check
    public boolean login(String email, String password) {
        try {
            PreparedStatement ps =
                con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            return false;
        }
    }

    // Add task
    public void addTask(String email, String task) {
        try {
            PreparedStatement ps =
                con.prepareStatement("INSERT INTO tasks(user_email,task) VALUES(?,?)");
            ps.setString(1, email);
            ps.setString(2, task);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // View tasks
    public ArrayList<Task> getTasks(String email) {
        ArrayList<Task> list = new ArrayList<>();
        try {
            PreparedStatement ps =
                con.prepareStatement("SELECT * FROM tasks WHERE user_email=?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Task(
                    rs.getInt("id"),
                    rs.getString("user_email"),
                    rs.getString("task"),
                    rs.getString("status")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

//Get single task by id
public Task getTaskById(int id) {
 Task t = null;
 try {
     PreparedStatement ps =
         con.prepareStatement("SELECT * FROM tasks WHERE id=?");
     ps.setInt(1, id);
     ResultSet rs = ps.executeQuery();

     if (rs.next()) {
         t = new Task(
             rs.getInt("id"),
             rs.getString("user_email"),
             rs.getString("task"),
             rs.getString("status")
         );
     }
 } catch (Exception e) {
     e.printStackTrace();
 }
 return t;
}

//Update task
public void updateTask(int id, String task, String status) {
 try {
     PreparedStatement ps =
         con.prepareStatement(
             "UPDATE tasks SET task=?, status=? WHERE id=?"
         );
     ps.setString(1, task);
     ps.setString(2, status);
     ps.setInt(3, id);
     ps.executeUpdate();
 } catch (Exception e) {
     e.printStackTrace();
 }
}

//Delete task
public void deleteTask(int id) {
 try {
     PreparedStatement ps =
         con.prepareStatement("DELETE FROM tasks WHERE id=?");
     ps.setInt(1, id);
     ps.executeUpdate();
 } catch (Exception e) {
     e.printStackTrace();
 }
}
}

