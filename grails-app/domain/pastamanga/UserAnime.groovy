package pastamanga

import org.apache.commons.lang.builder.HashCodeBuilder

class UserAnime implements Serializable {
	
	User user
	Anime anime

    static constraints = {
    }
	
	boolean equals(other) {
		if (!(other instanceof UserAnime)) {
			return false
		}

		other.user?.id == user?.id &&
			other.Anime?.id == Anime?.id
	}
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (anime) builder.append(anime.id)
		builder.toHashCode()
	}

	static UserAnime get(long userId, int animeId) {
		find 'from UserAnime where user.id=:userId and anime.id=:animeId',
			[userId: userId, animeId: animeId]
	}
	
	static ArrayList<UserAnime> get(Long userId) {
		
		UserAnime.findAll("from UserAnime where user.id=:userId",
			[userId: userId])
	}

	static UserAnime create(User user, Anime anime, boolean flush = false) {
		new UserAnime(user: user, anime: anime).save(flush: flush, insert: true)
	}

	static boolean remove(User user, Anime anime, boolean flush = false) {
		UserAnime instance = UserAnime.findByUserAndAnime(user, anime)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(User user) {
		executeUpdate 'DELETE FROM UserAnime WHERE user=:user', [user: user]
	}

	static void removeAll(Anime anime) {
		executeUpdate 'DELETE FROM UserAnime WHERE anime=:anime', [anime: anime]
	}

	static mapping = {
		id composite: ['anime', 'user']
		version false
	}
	
}
