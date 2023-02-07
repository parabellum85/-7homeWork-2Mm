//
//  Bank.swift
//  #7homeWork 2M
//
//  Created by Нурлан on 7/2/23.
//

import Foundation

class Bank{
    func sending(from: Client, to: Client){
        print("Выберите банк")

        for (index,item)in from.card.enumerated(){
            print("\(index), \(item.bankName)")
        }
        let readline = Int(readLine()!)!
        let cards = from.card[readline]
        print("Выберите - \(cards.bankName)")
        print("Укажите номер карты")
        let cardNumber = readLine()!
        var toCard: Card?
        var toClientName = ""
        for i in [to] {
            for cards in i.card{
                if cards.numCard == cardNumber{
                    toCard = cards
                    toClientName = "\(i.name),\(i.sureName)"
                    break
                }
            }
        }
        if let toCard = toCard{
            print("Получатель \(toClientName)")
            print("Укажите номер карты")
            let amount = Int(readLine()!)!
            if amount > cards.bill{
                print("Не достаточно средств")
            } else{
                cards.bill -= amount
                toCard.bill += amount
                print("\(amount) перевод выполнен успешно!")
            }
        }else{
            print("Карта не найдена")
        }
    }
}
