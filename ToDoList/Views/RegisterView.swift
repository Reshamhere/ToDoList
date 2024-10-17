//
//  RegisterView.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
//        Header
        HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
        
        Form {
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
            
            TLButton(title: "Create Account", background: .green){
//                 attempt registration
            }
        }
        .offset(y: -50)
        
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
