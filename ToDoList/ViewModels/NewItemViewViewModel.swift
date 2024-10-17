//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
}
