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
		def resp = http.get(path:'/api/anime/search.xml', query:[q: 'bleach' ], contentType:TEXT, headers:[Accept : 'application/xml'])
		xml = resp.getText()
		
		render xml 
	}
}
