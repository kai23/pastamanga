package pastamanga

class Episode {
	String name
	String nameAnime
	String date
	String description
	
	static constraints = {
		name (blank:false, nullable:false)
		nameAnime (blank:true, nullable:true)
		date (blank:true, nullable:true)
		description (blank:true, nullable:true)
	}
}
