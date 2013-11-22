import pastamanga.Role
import pastamanga.User
import pastamanga.UserRole

class BootStrap {

    def init = { servletContext ->

      def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

      def testUser = new User(username: 'test', password: 'test', enabled:true)
      testUser.save(flush: true)

      UserRole.create testUser, adminRole, true

     // assert User.count() == 2
     // assert Role.count() == 2
     // assert UserRole.count() == 1
   }
    def destroy = {
    }
}
