package pastamanga

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestFor(UserRole)
class UserRoleSpec extends Specification {

	def "add UserRole"() {
		expect:
			def User01 = new User(username: "UserTest01", password: "test", enabled: true, accountNonExpired: false, credentialsNonExpired:false, accountNonLocked: false, authorities:false) == true
			def Role01 = new Role(authority: 'ROLE_USER') == true
			def UserRole01 = new UserRole(user: User01,role: Role01 ) == true
		
	}
	
	def "add UserRole to list"() {
		expect:
			def User01 = new User(username: "UserTest01", password: "test", enabled: true, accountNonExpired: false, credentialsNonExpired:false, accountNonLocked: false, authorities:false) == true
			def Role01 = new Role(authority: 'ROLE_USER') == true
			def UserRole01 = new UserRole(user: User01,role: Role01 ) == true
			ArrayList userAnimeList = new ArrayList();
			userAnimeList.add(UserRole01);
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
