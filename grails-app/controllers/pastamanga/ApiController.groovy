package pastamanga

// ContentType static import
import static groovyx.net.http.ContentType.*
// Method static import
import static groovyx.net.http.Method.*

import groovyx.net.http.HTTPBuilder



class ApiController {

	def index() {
		def http = new HTTPBuilder( 'http://myanimelist.net' )
		def resp = http.get(path:'/api/anime/search.xml', query:[q: 'bleach' ], contentType:TEXT, headers:[Accept : 'application/xml'])
		def xml = resp.getText()
		
		def animeList = new ArrayList<Anime>()
		def slurp = new XmlSlurper().parseText(xml)
		def anime = slurp."entry"
		anime.each {
			def animeClass = new Anime()
			animeClass.id = Long.parseLong(it."id".text())
			animeList.add(animeClass)			
		}
		animeList.each {
			println it.id
		}
		render anime.text() 
	}
}
