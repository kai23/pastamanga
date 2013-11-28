package pastamanga

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(UserAnime)
class UserAnimeSpec extends Specification {

	def "add UserAnime"() {
		expect:
			def User01 = new User(username: "UserTest01", password: "test", enabled: true, accountNonExpired: false, credentialsNonExpired:false, accountNonLocked: false, authorities:false) == true
			def Anime01 = new Anime(name: "test01", category: "scar", date_added:"12/06/2013" , description:"description") == true
			def UserAnime01 = new UserAnime(user: User01, anime: Anime01) == true;
		
	}
	
	def "add UserAnime to list"() {
		expect:
			def User01 = new User(username: "UserTest01", password: "test", enabled: true, accountNonExpired: false, credentialsNonExpired:false, accountNonLocked: false, authorities:false) == true
			def Anime01 = new Anime(name: "test01", category: "scar", date_added:"12/06/2013" , description:"description") == true
			def UserAnime01 = new UserAnime(user: User01, anime: Anime01) == true;
			ArrayList userAnimeList = new ArrayList();
			userAnimeList.add(UserAnime01);
			assert userAnimeList.size() == 1;
	}
	
	/*
    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
    }*/
}
