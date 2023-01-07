//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import Foundation


final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
