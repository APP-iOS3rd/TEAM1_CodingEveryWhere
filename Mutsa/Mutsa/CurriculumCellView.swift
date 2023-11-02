//
//  CurriculumCellView..swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct CurriculumCellView: View {
    
    @Binding var curriculum: Curriculum
    
    var body: some View {
        VStack(spacing: 20) {
            Text(curriculum.title)
                .font(.headline)
                .foregroundStyle(.white)
                .frame(width: 300)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                ForEach(0..<curriculum.subCurriculum.count, id: \.self) { i in
                    Text(curriculum.subCurriculum[i].subTitle)
                        .font(.headline)
                        .padding(.top, 10)
                        .padding(.bottom, 3)
                    ForEach(0..<curriculum.subCurriculum[i].subDetail.count, id: \.self) { j in
                        Text("\(j+1). \(curriculum.subCurriculum[i].subDetail[j])")
                    }
                }
//                Text("내용")
//                    .font(.subheadline)
//                    .frame(width: 300, height: 450)
//                    .cornerRadius(10)
            }
            .frame(width: 300, height: 450)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                  .stroke(Color.orange, lineWidth: 4)
              )
        }
    }
}

#Preview {
    CurriculumCellView(curriculum: .constant(Curriculum(title: "CS기초", subCurriculum: [
        SubCurriculum(subTitle: "", subDetail: ["플레이그라운드를 통한 코딩의 이해", "기초 자료구조 & 알고리즘 이해", "Git & GitHub 이해 및 실습"])
    ])))
}
