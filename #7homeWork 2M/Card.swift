//
//  Card.swift
//  #7homeWork 2M
//
//  Created by Нурлан on 7/2/23.
//

import Foundation

class Card {
    var bankName: String
    var numCard: String
    var bill: Int
    
    init(bankName: String, numCard: String, bill: Int) {
        self.bankName = bankName
        self.numCard = numCard
        self.bill = bill
    }
}
