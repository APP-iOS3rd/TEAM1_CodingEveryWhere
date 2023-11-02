//
//  SwiftUIView.swift
//  test
//
//  Created by 강치우 on 11/2/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                MainView()
            } label: {
                HStack(spacing: 3) {
                    Text("앱스쿨")
                        .font(.subheadline)
                        .foregroundStyle(.purple)
                    
                    Text("구경하기")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.orange)
                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
