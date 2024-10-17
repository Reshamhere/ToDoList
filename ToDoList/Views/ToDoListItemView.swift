//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
    
    let item: TodoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.system(size: 22))
                    .bold()
                    
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
                
            }
            
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.square.fill" : "square")
                    .font(.system(size: 25))
                    .foregroundColor(.red)
            }
            
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123",
                                 title: "Get milk",
                                 dueDate: Date().timeIntervalSince1970,
                                 createdDate: Date().timeIntervalSince1970,
                                 isDone: true
                                )
    )
}
