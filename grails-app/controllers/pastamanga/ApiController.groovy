package pastamanga


import groovyx.net.http.HTTPBuilder
//import groovyx.net.http.ContentType // this doesn't import ContentType
//import groovyx.net.http.Method // this doesn't import Method
import groovyx.net.http.RESTClient
import groovyx.net.http.HttpResponseDecorator

// ContentType static import
import static groovyx.net.http.ContentType.*
// Method static import
import static groovyx.net.http.Method.*

class ApiController {

	def index() {
		def http = new HTTPBuilder( 'http://myanimelist.net' )

		http.auth.basic "Kai23","hcyzq3b9"
		http.request( GET, XML ) { req ->
			uri.path = '/api/anime/search.xml'
			uri.query = [q: 'bleach' ]
			response.success = { resp, xml ->
				resultats = new XmlSlurper().parse(xml)
				def animeList = new ArrayList<Anime>();
				resultats.resultat.each{ node ->
					anime = new Anime()
					anime.identity = node.id
					animeList.add(anime)
				}
				animeList.each { aniCu
					println aniCu.id			
				}
			}
		}
	}
}
