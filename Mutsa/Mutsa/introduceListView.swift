//
//  teacherView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct introduceListView: View {
    var body: some View {
        NavigationStack {
            List() {
                Section(header: Text("강사진").font(.title3)) {
                    ForEach(teacherData) { teacher in
                        NavigationLink(destination: teacherDetailView(teacher: teacher)) {
                            teacherCellView(teacher: teacher)
                        }
                    }
                }
                Section(header: Text("멘토단").font(.title3)) {
                    ForEach(mentorData) { mentor in
                        NavigationLink(destination: mentorDetailView(mentor: mentor)) {
                            mentorCellView(mentor: mentor)
                        }
                    }
                }
                
            }.navigationTitle("강사진 및 멘토링 소개")
        }
    }
}

#Preview {
    introduceListView()
}
