//
//  CryptoItemView.swift
//  CryptoConverter
//
//  Created by Justin Bell on 5/20/25.
//

import SwiftUI

struct CryptoItemView: View {
    var item : ConvertModel<CryptoItemModel>
    var amount : Double
    
    var body: some View {
        HStack {
            Text("\(item.cardContent.cryptoName) (\(item.cardContent.cryptoCode))")
            Spacer()
            Text("$\(item.cardContent.calculate(amount: amount), specifier: "%.2f")")
        }
    }
}
