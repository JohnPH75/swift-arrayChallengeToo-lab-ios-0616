//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    func addNameToDeliLine(name: String) -> String {
        
        switch name {
            
        case "Billy Crystal":
            deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
            
        case "Meg Ryan":
            deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
            
        default:
            deliLine.append(name)
        }
        
        switch deliLine.count {
            
        case 1:
            return "Welcome \(name), you're first in line!"
            
        default:
            return "Welcome \(name), you're number \(deliLine.count) in line."
        }
    }
    
    func nowServing() -> String {
        
        var lineGreeting : String = ""
        
        if deliLine.count == 0 {
            
            lineGreeting = "There is no-one to be served."
        }
        else {
            
            lineGreeting = "Now serving \(deliLine[0])!"
        }
        
        deliLine.removeAtIndex(0)
        
        
        return lineGreeting
    }
    
    func deliLineDescription() -> String {
        
        var lineGreeting2 : String = ""
        
        if deliLine.count == 0 {
            
            lineGreeting2 = "The line is currently empty."
        }
            
        else {
            
            lineGreeting2 = "The line is:\n"
            
            for (index, name) in deliLine.enumerate() {
                
                lineGreeting2 += "\(index+1) \(name)\n"
            }
        }
        
            return lineGreeting2
    }
    
    // Create your methods here
    

}

