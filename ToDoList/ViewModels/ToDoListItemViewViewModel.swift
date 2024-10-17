//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

// View Model for single to do list item view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: TodoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
}
