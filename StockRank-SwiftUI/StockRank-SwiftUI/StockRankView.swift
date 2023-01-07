//
//  ContentView.swift
//  StockRank-SwiftUI
//
//  Created by Yuhyeon Kim on 2023/01/07.
//

import SwiftUI

struct StockRankView: View {
    @State var list = StockModel.list
    
    var body: some View {
        
        List(list) { item in
            StockRankRow(stock: item)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowSeparator(.hidden)
                .frame(height: 80)
        }
        .listStyle(.plain)
        .background(.black)

// ScrollView는 재사용성이 떨어짐
//        ScrollView {
//            ForEach(list, id:\.self) { stock in
//                StockRankRow(stock: stock)
//                    .frame(height: 80)
//            }
//        }
//        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
    }
}
