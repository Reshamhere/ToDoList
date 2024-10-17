//
//  ContentViewViewModel.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import FirebaseAuth
import Foundation

class ContentViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    // we want to observe from firebase when the current user changes
    
    private var handler: AuthStateDidChangeListenerHandle?
    // by default it will be nil so we make it optional
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            // assigning to this published property updates to view, we do wanna do it on the main thread i.e., main queue
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
