package pastamanga

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Episode)
class EpisodeSpec extends Specification {

	def "add Episode"() {
		expect:
			def Episode01 = new Episode(name: "EpisodeTest01",nameAnime: "",date: "", description: ""  ) == true
		
	}
	
	def "add Episode to list"() {
		expect:
			def Episode01 = new Episode(name: "EpisodeTest01",nameAnime: "",date: "", description: ""  ) == true
			ArrayList episodeList = new ArrayList();
			episodeList.add(Episode01);
			assert episodeList.size() == 1;
	}
	/*
	def setup() {
	}

	def cleanup() {
	}

	void "test something"() {
	}*/
}
