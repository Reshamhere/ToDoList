//
//  LoginView.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack {
//            Header
                HeaderView()
                
//            Login Form
                Form {
                    TextField("Email address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Email address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
//                    Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Log in")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                
//            Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 70)
                
                Spacer()
                
            }
            .ignoresSafeArea()
        } // end of navigation view

    } // end of body
} // end of struct

#Preview {
    LoginView()
}
