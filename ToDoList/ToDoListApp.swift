//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by 박성수 on 2022/05/26.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainListView()
                    .navigationTitle("ToDo")
                    .environmentObject(listViewModel)
            }
        }
    }
}
