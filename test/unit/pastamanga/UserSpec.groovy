package pastamanga

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec extends Specification {

	def "add User"() {
		expect:
			def User01 = new User(username: "UserTest01", password: "test", enabled: true, accountNonExpired: false, credentialsNonExpired:false, accountNonLocked: false, authorities:false) == true
		
	}
	
	def "add User to list"() {
		expect:
			def User01 = new User(username: "UserTest01", password: "test", enabled: true, accountNonExpired: false, credentialsNonExpired:false, accountNonLocked: false, authorities:false) == true
			ArrayList userList = new ArrayList();
			userList.add(User01);
			assert userList.size() == 1;
	}
	
	/*   
    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
    }*/
}
