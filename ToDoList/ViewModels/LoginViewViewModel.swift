//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return // if we are not able to validate, we're gonna stop
        }
        
//        Try log in
        Auth.auth().signIn(withEmail: email, password: password)
//        Auth.auth() : gives us a reference to firebase authentication
        
        
    }
    
    private func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a vaild email."
            return false
        }
        return true
    }
}
