//
//  CoinRowView.swift
//  cryptOS
//
//  Created by Turan, Kaan on 2.03.2023.
//

import SwiftUI

struct CoinRowView: View {
    let showHoldings: Bool
    let coin: CoinModel
    var body: some View {
        HStack(spacing: 10) {
           leftColumn
            if showHoldings {
               centerColumn
            }
            rightColumn
        }
        .font(.subheadline)
    }
    
}
extension CoinRowView {
    private var leftColumn: some View {
        HStack {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .bold()
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            Spacer()
        }
    }
    private var centerColumn: some View {
        VStack {
            Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
                .bold()
            Text(coin.currentHoldings?.asNumberString() ?? "0")
        }
        .foregroundColor(Color.theme.accent)
    }
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(Color.theme.accent)
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundColor(
                    coin.priceChange24H ?? 0 >= 0 ?
                    Color.theme.green :
                        Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CoinRowView(showHoldings: true, coin: dev.sampleCoin)
        }
            .previewLayout(.sizeThatFits)
    }
}
