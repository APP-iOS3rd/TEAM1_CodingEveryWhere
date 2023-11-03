//
//  CurriculumView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct CurriculumView: View {
    
    @State var pre = preLearning
    @State var main = mainCurriculum
    @State var pr = project
    
    var body: some View {
        NavigationStack{
            List {
                Section {
                    ForEach(0..<preLearning.count, id: \.self) { i in
                        NavigationLink {
                            CurriculumCellView(curriculum: $pre[i])
                        } label: {
                            VStack(alignment: .leading){
                                Text("[Live 강의]")
                                    .font(.footnote)
                                    .foregroundStyle(.gray)
                                    .padding(.bottom, 1)
                                Text(preLearning[i].title)
                            }
                        }
                    }
                    
                    
                } header: {
                    Text("PRE-LEARNING")
                        .font(.title2)
                        .foregroundStyle(.black)
                }
                
                Section {
                    ForEach(0..<mainCurriculum.count, id: \.self) { i in
                        NavigationLink {
                            CurriculumCellView(curriculum: $main[i])
                        } label: {
                            VStack(alignment: .leading) {
                                Text("[STEP \(i)]")
                                    .font(.footnote)
                                    .foregroundStyle(.gray)
                                    .padding(.bottom, 1)
                                Text(mainCurriculum[i].title)
                            }
                        }
                    }
                } header: {
                    Text("MAIN CURRICULUM")
                        .font(.title2)
                        .foregroundStyle(.black)
                }
                
                Section {
                    ForEach(0..<project.count, id: \.self) { i in
                        NavigationLink {
                            CurriculumCellView(curriculum: $pr[i])
                        } label: {
                            VStack(alignment: .leading) {
                                Text("[PROJECT \(i)]")
                                    .font(.footnote)
                                    .foregroundStyle(.gray)
                                    .padding(.bottom, 1)
                                Text(project[i].title)
                            }
                        }
                    }
                } header: {
                    Text("PROJECT")
                        .font(.title2)
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    CurriculumView()
}
