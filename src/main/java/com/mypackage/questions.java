package com.mypackage;

public class questions {
	private int questionid;
	private String question;
	private String difficulty;
	private String module;
	private int semester;
	private String subject;
	private String branch;
	
	public questions() {
		
	}
	public questions(int questionid) {
		this.questionid = questionid;
	}
	
	
	public questions(String question, String difficulty, String module, int semester, String subject,
			String branch) {
		super();
		
		this.question = question;
		this.difficulty = difficulty;
		this.module = module;
		this.semester = semester;
		this.subject = subject;
		this.branch = branch;
	}
	public questions(int questionid, String question, String difficulty, String module, int semester, String subject,
			String branch) {
		// TODO Auto-generated constructor stub
		this(question,difficulty,module,semester,subject,branch);
		this.questionid = questionid;
	}
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	
}
