//
//  ClassStructEnumViewController.swift
//  Reminder
//
//  Created by erumaru on 10/23/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit


class ClassStructEnumViewController: UIViewController {
    
    let operations: [String : Operation] = [
        "*" : .binaryOperation { $0 * $1 },
        "%" : .unaryOperation { $0 * $0 },
        "5" : .constant(value: 5)
    ]
    let first = 5
    let second = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(IntEnum.one.rawValue)
        print(StringEnum.one.rawValue)
        
        let someCase = operations["*"]!
        switch someCase {
        case .binaryOperation(let function):
            print(function(self.first, self.second))
        case .unaryOperation(let function):
            print(function(self.first))
        case .constant(let value):
            print(value)
        }
    }
}

class SuperPerson {
    
}

class Person2: SuperPerson {
    
}

protocol SuperDog {
    
}

struct Dog2: SuperDog {
    
}

enum IntEnum: Int {
    case one
    case two
}

enum StringEnum: String {
    case one = "123"
    case two = "312"
}

enum Operation {
    case constant(value: Int)
    case unaryOperation(function: (Int) -> Int)
    case binaryOperation(function: (Int, Int) -> Int)
}
