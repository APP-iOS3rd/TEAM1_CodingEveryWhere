//
//  ContentView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            introduceListView()
                .tabItem { Image(systemName: "house") }
        }
    }
}

#Preview {
    ContentView()
}
