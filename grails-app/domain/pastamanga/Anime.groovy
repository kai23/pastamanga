package pastamanga


class Anime {
	int id
	String name
	String category
	String date_added
	String description
	
    static constraints = {
		name (blank:false, nullable:false)
		category (blank:false, nullable:false)
		date_added (blank:true, nullable:true)
		description (blank:false, nullable:false)
    }



	@Override
	public String toString() {
		return "Anime [name=" + name + ", category=" + category + ", date="
				+ date_added + ", description=" + description + "]";
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Anime other = (Anime) obj;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
		if (date_added == null) {
			if (other.date_added != null)
				return false;
		} else if (!date_added.equals(other.date_added))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}
	
	
}

