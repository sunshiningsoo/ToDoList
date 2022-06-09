//
//  MainListView.swift
//  ToDoList
//
//  Created by 박성수 on 2022/05/26.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var listViewModel:ListViewModel
    
    var body: some View {
        VStack{
                NavigationLink(destination:AddTaskView(listViewModel: listViewModel)){
                    Text("You can add Schedule!")
                }
            
            ForEach(listViewModel.tasksList){ list in
                Text(list.content)
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainListView()
                .environmentObject(ListViewModel())
                .navigationTitle("ToDo")
        }
    }
}
