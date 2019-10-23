//
//  OptionalViewController.swift
//  Reminder
//
//  Created by erumaru on 10/23/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class OptionalViewController: UIViewController {
    
    var number: Int = 2
    var optionalNumber: Int? = 3
    var autoUnwrappedNumber: Int! = 3
    var person: Person? = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(multiply(first: number, second: optionalNumber.unsafelyUnwrapped))
        person?.saySomething()
    }
    
    func multiply(first: Int, second: Int) -> Int {
        return first * second
    }
}


class Person {
    func saySomething() {
        print("something")
    }
}
