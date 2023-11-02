//
//  PreAndProject.swift
//  SwiftUIBasic
//
//  Created by 정정욱 on 11/2/23.
//

import SwiftUI

struct Curriculum: Identifiable {
    var id = UUID()
    var title: String
    var detail: Array<String>
}


struct ListnavExample1View: View {
    
    @State var preLearning: [Curriculum] = [
        Curriculum(title: "'iOS 개발자로 살아남기' LIVE 강의",detail:  ["개발 직무 이해", "iOS 개발자 특징, 전망, 실무 이해", "Apple 기술과 생태계 이해", "부트캠프 출신 신입으로 취업하는 법", "정규과정 시작 전, 공부하면 좋을 내용"]),
        Curriculum(title: "'현업 개발자의 Xcode 꿀팁 대방출' LIVE 강의", detail: ["iOS 개발자 필수 도구 Xcode 이해", "단축키를 포함한 약 30가지의 실무 꿀팁"])
    ]
    
    @State var project: [Curriculum] = [
        Curriculum(title: "마크다운 언어를 이용한 웹 이력서 개발", detail: ["프로그램 기본 구조 이해", "GitHub를 통한 협업 역량"]),
        Curriculum(title: "iOS API를 활용한 콘손형 앱 개발", detail: ["앱 구현 역량", "백엔드 개발 환경 구축 역량"]),
        Curriculum(title: "위치 기반의 API와 SwfitUI를 활용한 앱 서비스 개발", detail: ["SwiftUI에 대한 숙련도 상승", "상용화 수준의 앱 구현 역량"]),
        Curriculum(title: "Firebase 이커머스 앱 만들고 배퍼까지", detail: ["코드 최적화 역량", "서비스 확장에 따른 구현 역량"])
    ]
    @available(iOS 15.0, *)
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                List {
                    Section {
                        ForEach(0..<preLearning.count, id: \.self) {i in
                            NavigationLink {
                                preLearningView(curriculum: $preLearning[i])
                            } label: {
                                Text(preLearning[i].title)
                            }
                        }
                    } header: {
                        Text("PRE-LEARNING")
                            .font(.headline)
                            .foregroundStyle(.black)
                    }
                    .listRowBackground(Color.orange)
                    
                    Section {
                        ForEach(0..<project.count, id: \.self) { i in
                            NavigationLink {
                                preLearningView(curriculum: $project[i])
                            } label: {
                                Text(project[i].title)
                            }
                        }
                    } header: {
                        Text("PRJECT")
                            .font(.headline)
                            .foregroundStyle(.black)
                    }
                    .listRowBackground(Color.orange)
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct preLearningView: View {
    
    @Binding var curriculum: Curriculum
    
    var body: some View {
        Text(curriculum.title)
            .font(.headline)
        List(curriculum.detail, id: \.self) { detail in
                Text(detail)
        }
    }
}

struct projectView: View {
    
    var body: some View {
        Text("next view")
    }
}

#Preview {
    ListnavExample1View()
}
