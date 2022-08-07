//
//  ViewController.swift
//  UnitTests_1
//
//  Created by test on 07.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private(set) var volume = 0
    
    func setVolume(value: Int){
        volume = min(max(0, value), 100)
    }
    
    func charactersCompare(stringOne: String, stringTwo: String) -> Bool {
        return Set(stringOne) == Set(stringTwo)
    }
}

