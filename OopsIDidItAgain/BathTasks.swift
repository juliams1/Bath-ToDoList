//
//  BathTasks.swift
//  OopsIDidItAgain
//
//  Created by user247327 on 23/09/23.
//

import Foundation

struct Bathtask : Identifiable {
    let id = UUID()
    var title : String
    var isCompleted = false
}

extension Bathtask {
    static let Bathtasks = [
        Bathtask(title:"Uma orelha, outra orelha"),
        Bathtask(title:"Lava testa, bochecha"),
        Bathtask(title:"Lava o queixo, lava a coxa"),
        Bathtask(title:"Meu pé, meu querido pé"),
    ]
}
