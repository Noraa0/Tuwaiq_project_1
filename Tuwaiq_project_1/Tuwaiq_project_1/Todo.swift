//
//  Todo.swift
//  Todo
//
//  Created by نورا on 22/10/2021.
//

import Foundation

class Todo {
    
    var name: String
    var description: String
    var deadline: Date?


    
    
    init(_ name:String ,_ description:String,  _ deadline:Date? ) {
        
        self.name = name
        self.description = description
        self.deadline = deadline
        
    }
    
    init (_ list: Todo){
        self.name = list.name
        self.description = list.description
        self.deadline = list.deadline
    }
    


}
