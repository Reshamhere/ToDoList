//
//  ContentView.swift
//  ToDoList
//
//  Created by Resham on 14/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    
    var body: some View {
//        Navigation view will allow us to show and dismiss registration view if we need to
        
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
            
        } else {
            LoginView()
        }

    } // end of body
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
