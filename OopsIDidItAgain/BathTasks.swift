//
//  BathTasks.swift
//  OopsIDidItAgain
//
//  Created by user247327 on 23/09/23.
//

import Foundation

struct Bathtask : Identifiable {
    let id = UUID()
    let message:String
    var isCompleted = false
}

extension Bathtask {
    static let Bathtasks = [
        Bathtask(message:"Uma orelha, outra orelha"),
        Bathtask(message:"Lava testa, bochecha"),
        Bathtask(message:"Lava o queixo, lava a coxa"),
        Bathtask(message:"Meu pé, meu querido pé"),
        Bathtask(message:"Nariz, meu pescoço"),
        Bathtask(message:"O meu tórax e o meu bumbum"),
        Bathtask(message:"E também o fazedor de xixi"),
    ]
}
