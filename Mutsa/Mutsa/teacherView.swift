//
//  teacherView.swift
//  Mutsa
//
//  Created by 백대홍 on 11/2/23.
//

import SwiftUI

struct teacherView: View {
    var teachers: [Data] = teacherData
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                List(teachers) { teacher in
                    NavigationLink(destination: teacherDetailView(teacher: teacher)) {
                        teacherCellView(teacher: teacher)
                    }
                }
            }
        }
    }
}

#Preview {
    teacherView()
}
