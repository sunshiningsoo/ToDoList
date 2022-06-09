//
//  TaskModel.swift
//  ToDoList
//
//  Created by 박성수 on 2022/06/07.
//

import Foundation

struct TaskModel: Identifiable, Codable {
    var id:UUID
    var content: String
    
    init(id:UUID = UUID(), content: String){
        self.id = id
        self.content = content
    }
}
