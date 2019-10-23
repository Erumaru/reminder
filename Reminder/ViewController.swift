//
//  ViewController.swift
//  Reminder
//
//  Created by erumaru on 10/23/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dog = Dog(name: "Шарик")
    let human = Human(name: "Абзал")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Собака с хозяином
        dog.owner = human
        dog.eat()
        
        // Собака без хозяина(
        dog.owner = nil
        dog.eat()
    }
}

class Human: Owner {
    let name: String
    let someFood = [Food(name: "Мясо"), Food(name: "Рыба")]
    func giveFood() -> [Food] {
        return someFood
    }
    
    init(name: String) {
        self.name = name
    }
}

class Food {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

protocol Owner: class {
    var name: String { get }
    func giveFood() -> [Food]
}

class Dog {
    let name: String
    weak var owner: Owner?
    
    func eat() {
        guard let owner = owner else {
            print("\(name), у тебя нет хозяина(")
            
            return
        }
        
        let food = owner.giveFood()
        
        print("\(name), у тебя есть хозяин \(owner.name), он дал тебе:")
        food.forEach {
            print($0.name)
        }
    }
    
    init(name: String) {
        self.name = name
    }
}
