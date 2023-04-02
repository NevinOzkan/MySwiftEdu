//
//  main.swift
//  ProtocolSwiftProject
//
//  Created by Nevin Özkan on 3.04.2023.
//

import Foundation

protocol Running {
    
}

class Animal {
    func running() {
        print("running")
    }
}

class Dog : Animal {
    
}

let barley = Dog()
barley.running()

class Cat : Animal {
    
}

let cat = Cat()
cat.running()

class Turtle : Animal {
    
}

let leonardo = Turtle()


struct Bird : Running {
    func myRun() {
        print("running")
    }
}

let tweety = Bird()
tweety.myRun()
