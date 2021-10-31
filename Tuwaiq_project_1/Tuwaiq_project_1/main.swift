//
//  main.swift
//  Tuwaiq_project_1
//
//  Created by نورا on 21/10/2021.
//

import Foundation



var todoLists = List()

//var todoLists = List()
    
var response = 1
//let response = Int(readLine() ?? "") ?? 0

  
   while response != 0 {
       
       
       print("Welcome to Todo program,\n If you want to add list press 1 \n If you want to update list press 2  \n If you want to delete list press 3 \n If you want to review your lists press 4 \n If you want to quit press 0 ", terminator: "")
       print()
       let response = Int(readLine() ?? "") ?? 0
       
       if response == 0 { // exiting
           
           print("Thank you, I hope you like the program")
           break
       }
       
       else if response  == 1 { // adding
           print("What is your list name? ", terminator: "")
           let listName = Utils.readString()
           print("What is your list description? ", terminator: "")
           let listDescription = Utils.readString()
           
           print("what is ur deadline? ", terminator: "")
           print()
           let answerdate = Utils.readString()
           let answerdate2 = todoLists.getDate(answerdate)
           let classtodo = Todo(listName, listDescription, answerdate2)
           todoLists.addListTodo(classtodo)
       }
       
       
       else if response  == 2 { // editing
           
           print("what is the number of that list you want to update?", terminator: "")
           let index = Utils.readInt()
           let idx = index - 1
           print("what is the new list name? ", terminator: "")
           let listName = Utils.readString()
           print("what is the new list description? ", terminator: "")
           let listDescription = Utils.readString()
           
           print("what is the new list deadline date? ", terminator: "")
           let listDate = Utils.readString()
           let date = todoLists.getDate(listDate)
           let updatedList = Todo(listName, listDescription , date)
           
           todoLists.updateTodo(updatedList, idx)
           
       }
       
       else if response  == 3 { // removing
           
               print("what is the number of that list you want to delete?", terminator: "")
               let index = Utils.readInt()
               let idx = index - 1
               print("Done")
               todoLists.removeTodo(idx)
               
               let todoLists = List()
               todoLists.listTodo()
       }
       
       
       else if response == 4 { // printing
           todoLists.listTodo()
       }

       
       else {
           
           print("sorry this option dosn't exit ")

       }
   }


