//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userID = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userID)
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
//        records are stored in collections and documents
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary()) // we have to pass a dictionary in there
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty 
        else {
            errorMessage = "Please fill in all details."
            return false
        }
        
        guard email.contains("@"), email.contains(".") else {
            return false
        }
        guard password.count >= 6 else {
            errorMessage = "Password length must be starting from 6 characters."
            return false
        }
         
        return true
        
    }
}
