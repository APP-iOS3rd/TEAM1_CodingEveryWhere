//
//  CurriculumCellView..swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct CurriculumCellView: View {

    let curriculum: Curriculum

    var body: some View {
        ScrollView(.vertical) {
            HStack {
                VStack(alignment: .leading) {

                    ForEach(0..<curriculum.subCurriculum.count, id: \.self) { i in
                        if curriculum.subCurriculum[i].subTitle != "" {
                            Text(curriculum.subCurriculum[i].subTitle)
                                .font(.title3)
                                .bold()
                                .padding(.top, 10)
                                .padding(.bottom, 3)

                        }
                        ForEach(0..<curriculum.subCurriculum[i].subDetail.count, id: \.self) { j in
                            Text("\(j+1). \(curriculum.subCurriculum[i].subDetail[j])")
                                .padding(5)
                        }
                        Spacer()
                            .frame(height: 20)
                    }
                }
                Spacer()

            }
            .navigationTitle(curriculum.title)
            .padding()
        }

    }
}

