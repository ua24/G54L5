//
//  ViewController.swift
//  G54L5
//
//  Created by Ivan Vasilevich on 5/10/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let numbers = ([1, 4, 9] as NSArray)
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString
        let path = documentsPath.appendingPathComponent("Ваш квиток.plist")
        let result = numbers.write(toFile: path, atomically: true)
        print(path)
        if result {
            
        }
        else {
            
        }
        
        let arr = NSArray(contentsOfFile: path)
        print(arr ?? "")
        if let numbersArr = arr as? [Int] {
            print(numbersArr)
        }
        checkRunCount()
    }
    
    func checkRunCount() {
        var count = UserDefaults.standard.integer(forKey: kRunCount)
        print("run #\(count)")
        count += 1
        UserDefaults.standard.set(count, forKey: kRunCount)
    }

}

