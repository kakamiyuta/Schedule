package model;

import java.sql.Date;

public class Schedule {
	private String scheduleName;
	private Date startTime;
	private Date endTime;
	private String comment;

	public String getScheduleName(){
		return scheduleName;
	}

	public void setScheduleName(String scheduleName){
		this.scheduleName = scheduleName;
	}

	public Date getStartName(){
		return startTime;
	}

	public void setStartName(Date startTime){
		this.startTime = startTime;
	}

	public Date getEndTime(){
		return endTime;
	}

	public void setEndTime(Date endTime){
		this.endTime = endTime;
	}

	public String getComment(){
		return comment;
	}

	public void setComment(String comment){
		this.comment = comment;
	}

}
