//
//  Lists.swift
//  Lists
//
//  Created by نورا on 23/10/2021.
//

import Foundation

class List {
    
    
    var todoLists: [Todo]
    
    init() {
        
        self.todoLists = []
        
    }
    
    
    func addListTodo( _ list: Todo) {
        
        self.todoLists.append(Todo(list))
    }
    
    func listTodo() {
        
        var num = 1
        for list in todoLists {
            
            print("\(num))List name: \(list.name)")
            print("List Description: \(list.description)")
            print("List Deadline: \(list.deadline)")
            
            num += 1
        }
    }
    
    
    
    func updateTodo(_ list:Todo,_ idx:Int) {
        
        if todoLists.indices.contains(0) {
            
            todoLists[idx].name = list.name
            todoLists[idx].description = list.description
            todoLists[idx].deadline = list.deadline
            
        }
    }
    
    
    
    func removeTodo(_ number:Int)
    {
        
        if todoLists.indices.contains(0) {
            
            todoLists.remove(at: number)
            
        }
        
        
    }
    
    
    func getDate(_ date: String) -> Date? {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "dd/MM/yy"
        guard let date = dateFormat.date(from: date)
        else {
            return nil
        }
        return date
    }
    
    
}
