//
//  Client.swift
//  #7homeWork 2M
//
//  Created by Нурлан on 7/2/23.
//

import Foundation

class Client{
    var name: String
    var sureName: String
    var card:[Card]
    
    init(name: String, sureName: String, card: [Card]) {
        self.name = name
        self.sureName = sureName
        self.card = card
    }
}
