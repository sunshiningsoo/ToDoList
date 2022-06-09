//
//  ListViewModel.swift
//  ToDoList
//
//  Created by 박성수 on 2022/06/09.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var tasksList: [TaskModel] = [] {
        didSet{
            saveItem()
        }
    }
    var itemsKey: String = "task_list"
    
    init() {
        getItems()
    }
    
    func getItems(){
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedList = try? JSONDecoder().decode([TaskModel].self, from: data)
                
        else{ return }
        
        self.tasksList = savedList
    }
    
    func addItem(content: String){
        self.tasksList.append(TaskModel(content: content))
    }
    
    func saveItem(){
        if let encodeData = try? JSONEncoder().encode(tasksList){
            UserDefaults.standard.set(encodeData, forKey: itemsKey)
        }
    }
}
