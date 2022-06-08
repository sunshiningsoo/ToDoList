//
//  AddTaskView.swift
//  ToDoList
//
//  Created by 박성수 on 2022/06/07.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.presentationMode) var presentation
    @State private var toDoText: String = ""
    
    var body: some View {
        VStack {
            TextField("Tap to write!", text: $toDoText)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("Tap to Save!")
            })
        }
        
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
