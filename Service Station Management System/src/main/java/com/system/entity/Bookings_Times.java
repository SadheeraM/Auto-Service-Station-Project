package com.system.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "booking_times")
public class Bookings_Times {

	// define fields
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@Column(name = "time_period")
	private String Time_Period;

	@Column(name = "start_time")
	private String Start_Time;
	
	@Column(name = "end_time")
	private String End_Time;

	

	// define constructors
	
	public Bookings_Times() {

	}



	public Bookings_Times(Integer id, String time_Period, String start_Time, String end_Time) {
		
		this.id = id;
		Time_Period = time_Period;
		Start_Time = start_Time;
		End_Time = end_Time;
	}



	public Bookings_Times(String time_Period, String start_Time, String end_Time) {
		
		Time_Period = time_Period;
		Start_Time = start_Time;
		End_Time = end_Time;
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getTime_Period() {
		return Time_Period;
	}



	public void setTime_Period(String time_Period) {
		Time_Period = time_Period;
	}



	public String getStart_Time() {
		return Start_Time;
	}



	public void setStart_Time(String start_Time) {
		Start_Time = start_Time;
	}



	public String getEnd_Time() {
		return End_Time;
	}



	public void setEnd_Time(String end_Time) {
		End_Time = end_Time;
	}



	@Override
	public String toString() {
		return "Bookings_Times [id=" + id + ", Time_Period=" + Time_Period + ", Start_Time=" + Start_Time
				+ ", End_Time=" + End_Time + "]";
	}


}	

	

	

	




