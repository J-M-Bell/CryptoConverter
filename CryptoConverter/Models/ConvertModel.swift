//
//  ConvertModel.swift
//  CryptoConverter
//
//  Created by Justin Bell on 5/20/25.
//

import Foundation

struct ConvertModel<SomeType> : Identifiable {
    let id = UUID()
    var isFront : Bool = true
    var cardContent : SomeType
}

struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multiplier : Double
}

struct CryptoItemModel {
    let cryptoName : String
    let cryptoCode : String
    let multiplier : Double
    
    func calculate(amount: Double) -> Double {
        return amount * multiplier
    }
}
