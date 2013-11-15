package pastamanga

import grails.plugins.springsecurity.Secured

class SecureController {

   @Secured(['ROLE_ADMIN'])
   def index = {
	  render view:'/index'
   }
   
}