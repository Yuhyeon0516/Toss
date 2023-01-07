//
//  ContentView.swift
//  StockRank-SwiftUI
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import SwiftUI

struct StockRankView: View {
    
    @StateObject var vm = StockRankViewModel()
    
    var body: some View {
        NavigationView {
            List($vm.models) { $item in
                ZStack {
                    NavigationLink {
                        StockDetailView(viewModel: vm, stock: $item)
                    } label: {
                        EmptyView()
                    }
                    StockRankRow(stock: $item)
                }
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
            .preferredColorScheme(.dark)
    }
}
