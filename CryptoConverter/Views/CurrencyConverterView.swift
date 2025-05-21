//
//  CurrencyConverterView.swift
//  CryptoConverter
//
//  Created by Justin Bell on 5/20/25.
//

import SwiftUI

struct CurrencyConverterView: View {
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    @State var navigated = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(viewModel.listOfCards) { card in
                        CurrencyItemView(card: card)
                            .onTapGesture {
                                viewModel.flip(card: card)
                            }
                    }
                }
            }
            .onAppear {
                viewModel.fetchCards()
            }
            .navigationBarTitle("Currency Converter")
        }
    }
}

struct CurrencyConverterView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyConverterView()
    }
}
