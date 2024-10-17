//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import Foundation

// View Model for list of items view
// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
