//
//  LaunchView.swift
//  CryptoConverter
//
//  Created by Justin Bell on 5/20/25.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: CurrencyConverterView()) {
                    Text("World Currency Exchange")
                }
                NavigationLink(destination: CryptoConverterView(coinAmount: 1)) {
                    Text("Crypto Exchange")
                }
            }
            .navigationTitle(Text("Conversion App"))
        }
    }
}

#Preview {
    LaunchView()
}
