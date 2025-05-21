//
//  CurrencyItemView.swift
//  CryptoConverter
//
//  Created by Justin Bell on 5/20/25.
//

import SwiftUI

struct CurrencyItemView: View {
    var card : ConvertModel<CurrencyItemModel>
    
    var body: some View {
        ZStack {
            if card.isFront {
                FrontCurrencyItemView(card: card.cardContent)
            }
            else {
                BackCurrencyItemView(card: card.cardContent)
            }
        }
    }
}

struct FrontCurrencyItemView: View {
    var card : CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.countryFlag)
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}

struct BackCurrencyItemView: View {
    var card : CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}

struct CurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyItemView(card: ConvertModel(cardContent: CurrencyItemModel(currencyName: "", currencyCode: "", countryFlag: "", multiplier: 1)))
    }
}
