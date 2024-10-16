//
//  LoginView.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
//            Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
//            Login Form
                Form {
                    TextField("Email address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    
                    TLButton(title: "Log in", background: .blue){
//                        attempt log in
                    }
                    
                }
                .offset(y: -50)
                
//            Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 80)
                
                Spacer()
                
            }
            .ignoresSafeArea()
        } // end of navigation view

    } // end of body
} // end of struct

#Preview {
    LoginView()
}
