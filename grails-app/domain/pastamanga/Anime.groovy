package pastamanga

import java.util.Formatter.DateTime

class Anime {
	int id
	String name
	String category
	String date
	String description
	
    static constraints = {
		name (blank:false, nullable:false)
		category (blank:false, nullable:false)
		date (blank:true, nullable:true)
		description (blank:false, nullable:false)
    }
}
