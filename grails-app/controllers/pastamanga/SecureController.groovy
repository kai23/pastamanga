package pastamanga

import grails.plugins.springsecurity.Secured

class SecureController {

   @Secured(['ROLE_ADMIN', 'ROLE_USER'])
   def index = {
	  render view:'index'
   }
   
}