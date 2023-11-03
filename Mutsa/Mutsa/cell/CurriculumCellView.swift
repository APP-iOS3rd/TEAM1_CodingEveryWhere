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
                    ForEach(curriculum.subCurriculums) { subCurriculum in
                        if subCurriculum.subTitle != "" {
                            Text(subCurriculum.subTitle)
                                .font(.title3)
                                .bold()
                                .padding(.top, 15)
                                .padding(.bottom, 2)
                        }
                        ForEach(subCurriculum.subDetails, id: \.self) { detail in
                            Text("• \(detail)")
                                .padding(.bottom, 3)
                        }
                    }
                }
                Spacer()

            }
            .navigationTitle(curriculum.title)
            .padding()
        }

    }
}

