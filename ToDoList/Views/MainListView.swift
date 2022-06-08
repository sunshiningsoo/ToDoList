//
//  MainListView.swift
//  ToDoList
//
//  Created by 박성수 on 2022/05/26.
//

import SwiftUI

struct MainListView: View {
    var body: some View {
        VStack{
                NavigationLink(destination:AddTaskView()){
                    Text("You can add Schedule!")
                }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainListView()
                .navigationTitle("ToDo")
        }
    }
}
