package pastamanga

import static org.springframework.http.HttpStatus.*
import grails.plugins.springsecurity.*
import grails.plugins.springsecurity.Secured

class SecureController {

   @Secured(['ROLE_ADMIN', 'ROLE_USER'])
   def index = {
	  render view:'user/showAnime'
   }
   
}