//
//  ContentView.swift
//  Mutsa
//
//  Created by 백대홍 on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            teacherView()
                .tabItem { Image(systemName: "house") }
        }
    }
}

#Preview {
    ContentView()
}



/**
 이름, 직책, 이모지, 사진, 이력, 한줄소개
 */
