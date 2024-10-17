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
            // signed in
            ToDoListView()
        } else {
            LoginView()
        }

    }
}

#Preview {
    ContentView()
}
