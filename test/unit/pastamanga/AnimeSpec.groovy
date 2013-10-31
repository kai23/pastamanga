package pastamanga

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Anime)
class AnimeSpec extends Specification {

	def "add Anime"() {
	 expect:
	  def Anime01 = new Anime(name: "test01", category: "scar", date:"12/06/2013" , description:"description") == true
	 
   }
	def "add Anime to list"() {
		expect:
		 def Anime01 = new Anime(name: "test01", category: "scar", date:"12/06/2013" , description:"description") == true
		ArrayList animeList = new ArrayList();
		animeList.add(Anime01);
		assert animeList.size() == 1;	
	  }
	/*
	def setup() {
	}

	def cleanup() {
	}

	void "test something"() {
		def testAnime01 = new Anime();
	}*/
}
