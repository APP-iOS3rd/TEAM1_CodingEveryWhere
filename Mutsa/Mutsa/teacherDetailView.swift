//
//  detailView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct teacherDetailView: View {
    var teacher: TeacherData
    var body: some View {
        Text("Hello, World!")
    }
}

//#Preview {
//    teacherDetailView(teacher: )
//}

//struct teacherDetailView: View {
//    var teacher: TeacherData
//    var body: some View {
//        ScrollView {
//            VStack(spacing: 20) {
//                Image(teacher.image)
//                    .resizable()
//                    .frame(width: .infinity, height: 240)
//                    .aspectRatio(contentMode: .fit)
//                    .cornerRadius(10)
//
//                VStack(alignment: .leading, spacing:20) {
//                    HStack {
//                        Text("• (teacher.name)")
//                            .font(.largeTitle)
//                            .fontWeight(.heavy)
//                        Text("(teacher.introduce)님")
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//
//                        Spacer()
//                    }
//
//                    Text("(teacher.introduce)님 자세히 알아보기!")
//                        .font(.title3)
//                        .bold()
//                        .foregroundColor(.secondary)
//                    Divider()
//
//
//                }.padding()
//
//            }
//            .ignoresSafeArea()
//        }
//
//    }
//}

//    #Preview {
//        teacherDetailView(teacher: Data(name: "박종욱", moge: ":student:", image: "박종욱 강사님", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"))
//    }
