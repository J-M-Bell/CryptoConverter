//
//  CryptoConverterViewModel.swift
//  CryptoConverter
//
//  Created by Justin Bell on 5/20/25.
//

import Foundation

class CryptoConverterViewModel : ObservableObject {
    
    @Published private(set) var listOfCryptos = [ConvertModel<CryptoItemModel>]()
    
    func fetchCryptos() {
        listOfCryptos = [
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD", multiplier: 85064.41)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Ethereum", cryptoCode: "ETH", multiplier: 42.11)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Tether", cryptoCode: "USDT", multiplier: 84366.93)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "BNB", cryptoCode: "BNB", multiplier: 136.14)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "USD Coin", cryptoCode: "USDC", multiplier: 84331.88)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "XRP", cryptoCode: "XRP", multiplier: 35156.80))
        ]
    }
    
    func getCalculation(card: ConvertModel<CryptoItemModel>, amount: Double) -> Double {
        return card.cardContent.calculate(amount: amount)
    }
}
