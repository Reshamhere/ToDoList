//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
