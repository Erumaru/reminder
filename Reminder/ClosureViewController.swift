//
//  ClosureViewController.swift
//  Reminder
//
//  Created by erumaru on 10/23/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class ClosureViewController: UIViewController {

    func superFunction(function: (Int) -> Int) {
        print(function(5))
    }
    
    func function(number: Int) -> Int {
        return number * number
    }
    
    func voidFunc() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        superFunction(function: self.function(number:))
        
        superFunction(function: { number in
            return number * number
        })
        
        superFunction() { number in
            return number * number
        }
        
        superFunction { number in
            return number * number
        }
        
        superFunction {
            return $0 * $0
        }
        
        superFunction { $0 * $0 }
    }
}
