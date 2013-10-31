package pastamanga

class Episode {
	int id
	private String name
	private String nameAnime
	private String date
	private String description

	public Episode(String name, String nameAnime, String date,
			String description) {
		super();
		this.name = name;
		this.nameAnime = nameAnime;
		this.date = date;
		this.description = description;
        id++;
	}

	
	
    static constraints = {
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameAnime() {
		return nameAnime;
	}

	public void setNameAnime(String nameAnime) {
		this.nameAnime = nameAnime;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
