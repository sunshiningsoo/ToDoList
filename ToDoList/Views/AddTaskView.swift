//
//  AddTaskView.swift
//  ToDoList
//
//  Created by 박성수 on 2022/06/07.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.presentationMode) var presentation
    @ObservedObject var listViewModel:ListViewModel
    @State var toDoText: String = ""
    
    var body: some View {
        VStack {
            TextField("Tap to write!", text: $toDoText)
                .padding()
            
            Button(action: {
                listViewModel.addItem(content: toDoText)
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("Tap to Save!")
            })
        }
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView(listViewModel: ListViewModel())
    }
}
