//
//  budgetClass.swift
//  boatDuck
//
//  Created by Scholar on 6/28/23.
//

import Foundation

class Budget{
    var food = 0.0
    var trspt = 0.0
    var accm = 0.0
    var actv = 0.0
    var total = 0.0
    
    init(ntotal : Double){
        food = ntotal * 0.2
        trspt = ntotal * 0.45
        accm = ntotal * 0.15
        actv = ntotal * 0.2
        total = ntotal
    }
}

