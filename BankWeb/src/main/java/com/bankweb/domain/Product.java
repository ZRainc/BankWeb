package com.bankweb.domain;

public class Product {
	
	private int id;
	private String name;
	private String information;
	private int type_id;
	private int label_id;
	
	public int getId(){
		return id;
	}
	
	public void setId(int id){
		this.id = id;
	}
	
	public String getName(){
		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	public String getInformation(){
		return information;
	}
	
	public void setInformation(String information){
		this.information = information;
	}
	
	public int getType_id(){
		return type_id;
	}
	
	public void setType_id(int type_id){
		this.type_id = type_id;
	}
	
	public int getLabel_id(){
		return label_id;
	}
	
	public void setLabel_id(int label_id){
		this.label_id = label_id;
	}
}
