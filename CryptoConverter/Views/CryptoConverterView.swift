//
//  CryptoConverterView.swift
//  CryptoConverter
//
//  Created by Justin Bell on 5/20/25.
//

import SwiftUI

struct CryptoConverterView: View {
    @State var coinAmount: Double
    @FocusState var isInputActive : Bool
    @ObservedObject var viewModel = CryptoConverterViewModel()
    var body: some View {
        List {
            Section {
                HStack {
                    Text("Bitcoin")
                    TextField("Amount", value: $coinAmount, format: .number)
                        .focused($isInputActive)
                        .border(Color.gray)
                        .keyboardType(.numberPad)
                }
            }
            Section {
                ForEach(viewModel.listOfCryptos) { crypto in
                    CryptoItemView(item: crypto, amount: coinAmount)
                }
            }
        }
        .onAppear {
            viewModel.fetchCryptos()
        }
        .onTapGesture {
            isInputActive = false
        }
    }
}

struct CryptoConverterView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoConverterView(coinAmount: 1)
    }
}

