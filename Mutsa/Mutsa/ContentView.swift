//
//  ContentView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            introduceListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("강사 및 멘토")
                }.tag(1)
            
            MainView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("이전 기수 활동")
                }.tag(2)
            
            GitView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("커리큘럼")
                }.tag(3)
        }
    }
}

#Preview {
    ContentView()
}
