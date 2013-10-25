package pastamanga

class User {
  String name
  String email

    static constraints = {
  name (blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+") 
  email (email:true)
    }
  
  String toString(){
    return name; 
  }
}
