package com.mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
 

public class PaperDAO {
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;
     
public PaperDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }
     
    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","msr","123");
        }
    }
     
    protected void disconnect() throws SQLException {
        if (jdbcConnection != null &&!jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }
     
    public boolean insertQuestion(questions question) throws SQLException {
        String sql = "INSERT INTO questions (question,difficulty,module,semester,subject,branch) VALUES (?, ?, ?, ?, ?, ?)";
        connect();
         
        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
        statement.setString(1, question.getQuestion());
        statement.setString(2, question.getDifficulty());
        statement.setString(3, question.getModule());
        statement.setInt(4, question.getSemester());
        statement.setString(5, question.getSubject());
        statement.setString(6, question.getBranch());
         
        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        disconnect();
        return rowInserted;
    }


     
    public List<questions> listAllquestions() throws SQLException {
        List<questions> listquestions = new ArrayList<>();
         
        String sql = "SELECT * FROM questions";
         
        connect();
         
        Statement statement = jdbcConnection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
         
        while (resultSet.next()) {
            int questionid = resultSet.getInt("questionid");
            String question = resultSet.getString("question");
            String difficulty = resultSet.getString("difficulty");
            String module = resultSet.getString("module");    
            int semester = resultSet.getInt("semester");
            String subject = resultSet.getString("subject"); 
            String branch = resultSet.getString("branch"); 
            questions que = new questions(questionid, question, difficulty, module, semester, subject, branch);
            listquestions.add(que);
        }
         
        resultSet.close();
        statement.close();
         
        disconnect();
         
        return listquestions;
    }

	
	public static List<questions> view(String bat, int sem, String sub){
		List<questions> list=new ArrayList<questions>();
		try{
			Connection con=DB.getCon();
			String sql = "select * from questions where semester = ? and subject = ? and branch = ?";
	        PreparedStatement statement = con.prepareStatement(sql);
	        statement.setInt(1, sem);
	        statement.setString(2, sub);
	        statement.setString(3, bat);
			statement.executeUpdate();
			ResultSet rs=statement.executeQuery();
			while(rs.next()){
				questions question=new questions();
				question.setQuestionid(rs.getInt("questionid"));
				question.setQuestion(rs.getString("question"));
				question.setDifficulty(rs.getString("difficulty"));
				question.setModule(rs.getString("module"));
				question.setSemester(rs.getInt("semester"));
				question.setSubject(rs.getString("subject"));
				question.setBranch(rs.getString("branch"));
				
				list.add(question);
			}
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return list;
	}

	public static int delete(String parameter) {
		int status=0;
		try{
			Connection con=DB.getCon();
			PreparedStatement ps=con.prepareStatement("delete from questions where questionid=?");
			ps.setString(1,parameter);
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){System.out.println(e);}
		
		return status;
		
	}
	
     
	
	  public boolean deleteQuestion(questions que) throws SQLException { 
		  String sql = "DELETE FROM questions where questionid = ?";
	  
		  connect();
	  
	  PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	  statement.setInt(1, que.getQuestionid());
	  
	  
	  
	  boolean rowDeleted = statement.executeUpdate() > 0; statement.close();
	  disconnect();
	  return rowDeleted;
	  
	  }
	  
	
	  public boolean update(questions que) throws SQLException {
		  String sql = "UPDATE questions SET question = ?, difficulty = ?, module = ?, semester = ?, subject = ?, branch = ?";
		  sql += " WHERE questionid = ?";
	  connect();
	  
	  PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	  statement.setString(1, que.getQuestion());
	  statement.setString(2, que.getDifficulty());
	  statement.setString(3, que.getModule());
	  statement.setInt(4, que.getSemester());
	  statement.setString(5, que.getSubject());
	  statement.setString(6, que.getBranch());
	  statement.setInt(7, que.getQuestionid());
	  
	  boolean rowUpdated = statement.executeUpdate() > 0; statement.close();
	  disconnect(); 
	  return rowUpdated; }

	

	public static questions viewById(int questionid) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * public static List<questions> questions() { List<questions> list=new
	 * ArrayList<questions>(); try{ Connection con=DB.getCon(); PreparedStatement
	 * ps=con.
	 * prepareStatement("SELECT branch,COUNT(*) AS Occurrence FROM questions GROUP BY branch HAVING COUNT(*)>1;"
	 * ); ResultSet rs=ps.executeQuery(); while(rs.next()){ questions question=new
	 * questions();
	 * 
	 * 
	 * 
	 * question.setBranch(rs.getString("branch"));
	 * 
	 * list.add(question); } con.close();
	 * 
	 * }catch(Exception e){System.out.println(e);}
	 * 
	 * return list; }
	 */
	
	public boolean addadmin(AdminBean newadmin)throws SQLException {
		 String sql = "INSERT INTO admin (email, password,fullname) VALUES (?, ?, ?)";
	        connect();
	         
	        PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	        statement.setString(1, newadmin.getEmail());
	        statement.setString(2, newadmin.getPassword());
	        statement.setString(3, newadmin.getName());
	        
	         
	        boolean rowInserted = statement.executeUpdate() > 0;
	        statement.close();
	        disconnect();
	        return rowInserted;
		
	
		// TODO Auto-generated method stub
		
	}

	
	 
	 
     
	
	/*
	 * public questions getQuestions(int id) throws SQLException { questions que =
	 * null; String sql = "SELECT * FROM questions WHERE book_id = ?";
	 * 
	 * connect();
	 * 
	 * PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	 * statement.setInt(1, id);
	 * 
	 * ResultSet resultSet = statement.executeQuery();
	 * 
	 * if (resultSet.next()) { String title = resultSet.getString("title"); String
	 * author = resultSet.getString("author"); float price =
	 * resultSet.getFloat("price");
	 * 
	 * book = new Book(id, title, author, price); }
	 * 
	 * resultSet.close(); statement.close();
	 * 
	 * return book; }
	 */
	 
}

