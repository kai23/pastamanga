package pastamanga

import java.util.Formatter.DateTime

class Anime {
	int id
	String name
	String category
	String date
	String description
	
	public Anime(String name,String category,String date,String description){
		super();
		id ++;
		this.name = name;
		this.category = category;
		this.date = date;
		this.description = description;	
	}
	
	
	//Name
	void setName(String name){
		this.name = name;
	}
	String getName(){
		return name;
	}
	
	//Category
	void setCategory(String category){
		this.category = category;
	}
	String getCategory(){
		return category;
	}
	
	//Date
	void setDate(String date){
		this.date = date;
	}
	String getDate(){
		if(!date.isEmpty() && date != null){
			return "Date is unknown!";
		}
		return date;
	}
	
	//description
	void setDescription(String description){
		this.description = description;
	}
	String getDescription(){
		return description;
	}
	
	
    static constraints = {
		name (blank:false, nullable:false)
		category (blank:false, nullable:false)
		date (blank:true, nullable:true)
		description (blank:false, nullable:false)
    }
}
