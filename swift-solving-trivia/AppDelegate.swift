//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    /*
     
     write your function here
     
     */

    func solveTrivia(dictionary: [String:String]) -> String {
        
        var stateToReturn = ""
        
        for (state, capital) in dictionary {
            
            let lowerState = state.lowercaseString.stringByReplacingOccurrencesOfString(" ", withString: "")
            let lowerCapital = capital.lowercaseString.stringByReplacingOccurrencesOfString(" ", withString: "")
            
            let stateCharacters = NSCharacterSet.init(charactersInString: lowerState)
            
            if lowerCapital.rangeOfCharacterFromSet(stateCharacters) == nil{
                stateToReturn = state
                
            }

        }
        
        return stateToReturn
    
    }
}

