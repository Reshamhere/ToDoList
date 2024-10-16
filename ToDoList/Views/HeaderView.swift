//
//  HeaderView.swift
//  ToDoList
//
//  Created by Resham on 16/10/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.pink)
                .rotationEffect(Angle(degrees: 15))
//                    .offset(y: -80)
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                Text("Get Things Done")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 90)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -90)
    }
}

#Preview {
    HeaderView()
}
