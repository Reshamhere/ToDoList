//
//  NewItemView.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack {
            Text("New item")
                .font(.system(size: 32))
                .bold()
            Form {
                // Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Due date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButton(title: "Save", background: .pink) {
                    viewModel.save()
                }
                .padding()
            }
        }
    }
}

#Preview {
    NewItemView()
}
