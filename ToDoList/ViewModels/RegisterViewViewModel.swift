//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            guard let userID = result?.user.uid else {
                return
            }
//            1.07.29rf6
        }
        
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard email.contains("@"), email.contains(".") else {
            return false
        }
        guard password.count >= 6 else {
            return false
        }
         
        return true
        
    }
}
