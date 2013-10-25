package pastamanga

import java.util.Formatter.DateTime

class Anime {
	int id
	String name
	String category
	String date
	String description
	
	
	
	
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
		name (blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
		name (blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
		name (blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
		name (blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+")
    }
}
