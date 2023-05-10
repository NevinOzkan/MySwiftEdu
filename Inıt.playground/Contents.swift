import UIKit

class User {
    var firstName:String
    var lastName:String
    var email:String
    
    init(firstName:String, lastName:String, email:String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}

let user = User(firstName: "John", lastName: "Deep", email: "john.deep@example.com")
