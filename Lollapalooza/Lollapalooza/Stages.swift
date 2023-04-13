//
//  Stages.swift
//  Lollapalooza
//
//  Created by Raquel Ramos on 11/04/23.
//

import Foundation

struct Stages{
    var id = UUID()
    var name: String
    var image: String
}

var stages: [Stages] = [
    Stages(name: "Budweiser Stage", image: "Budweiser"),
    Stages(name: "Adidas Stage", image: "Adidas"),
    Stages(name: "Chevrolet Stage", image: "Onix"),
    Stages(name: "Perry's by Doritos Stage", image: "Perry")
]
