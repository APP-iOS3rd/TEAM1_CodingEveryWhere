//
//  curriculum.swift
//  SwiftUIBasic
//
//  Created by 정정욱 on 11/2/23.
//


import SwiftUI




struct CurriculumView: View {
    // property
    @State var fruits: [String] = [
        "STEP 01 : 프로그래밍 기초", "STEP 02 : 앱 개발 기초", "STEP 03 : 앱 개발 심화", "STEP 04 : UI/UX 기초"
    ]
    
    @State var questions : [String] = [
        "Q.[지원 및 선발] 지원자격이 있나요?",
        "Q.[지원 및 선발] 국민내일배움카드가 없어도 지원할 수 있나요?",
        "Q.[지원 및 선발] 국민내일배움카드는 어떻게 발급 받나요?",
        "Q.[지원 및 선발] 훈련장려금을 받을 수 있나요?",
        "Q.[지원 및 선발] HRD-Net에서 언제 신청할 수 있나요?",
        "Q.[지원 및 선발] 지원과 선발 절차는 어떻게 되나요?",
        "Q.[지원 및 선발] 전공에 관계없이 지원 가능한가요?",
        "Q.[지원 및 선발] 지원서 제출 후 수정 가능한가요?",
        
    ]
    
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
    
    struct Curriculum: Identifiable {
        var id = UUID()
        var title: String
        var detail: Array<String>
    }
    
    
    struct preLearningView: View {
        
        @Binding var curriculum: Curriculum
        
        var body: some View {
            //            Text(curriculum.title)
            //                .font(.headline)
            //            List(curriculum.detail, id: \.self) { detail in
            //                Text(detail)
            //            }
            VStack(spacing: 20) {
                // circle 원형
                Text(curriculum.title).font(.headline)
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(width: 300)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                

                ZStack{
                    // circle 원형
                    ForEach(0..<curriculum.detail.count){ index in
                        
                        Text("\(curriculum.detail[index])").font(.subheadline)
                            .frame(width: 300, height: 450) // 도형의 크기를 지정
                            .padding()
                            .background(
                                Color.white
                            )
                            .padding()
                            .background(
                                Color.orange
                            )
                            .cornerRadius(10)
                        
                    }
                    
                }
            }
            
        }
    }
    
    // woogie
    var body: some View {
        NavigationView {
            List {
                Section {
                    // content
                    ForEach(0..<fruits.endIndex){ index in
                        HStack{
                            NavigationLink {
                                // destination : 목적지 -> 어디로 페이지 이동할꺼냐
                                Detailed_description(count: index)
                            } label: {
                                Text("\(fruits[index])")
                                    .font(.body)
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                            }
                        }
                        
                    }
                    .listRowBackground(Color.orange) // 리스트 배경색 지정
                } header: {
                    Text("커리큘럼")
                        .font(.headline)
                        .foregroundColor(.black)
                } // : Section
                
//                Section {
//                    // content
//                    ForEach(questions, id: \.self) { meat in
//                        Text(meat)
//                            .font(.caption)
//                    }
//                } header: {
//                    Text("자주 하는 질문")
//                        .font(.headline)
//                        .foregroundColor(.black)
//                } // : Section
//                
                
                // 인선님
                
                Section {
                    ForEach(0..<preLearning.count, id: \.self) {i in
                        NavigationLink {
                            preLearningView(curriculum: $preLearning[i])
                        } label: {
                            
                            Text(preLearning[i].title)
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                    }
                } header: {
                    Text("PRE-LEARNING")
                        .font(.headline)
                        .foregroundStyle(.black)
                }
                .listRowBackground(Color.white)
                
                
                
                Section {
                    ForEach(0..<project.count, id: \.self) { i in
                        NavigationLink {
                            preLearningView(curriculum: $project[i])
                        } label: {
                            Text(project[i].title)
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                    }
                } header: {
                    Text("PRJECT")
                        .font(.headline)
                        .foregroundStyle(.black)
                }
                .listRowBackground(Color.orange)
                
                
                
                
                
            }
            
        } // : List
        .navigationTitle("커리큘럼")
        .navigationBarTitleDisplayMode(.inline)
        
    } // :Navigation
    
 
    
} // :Body



struct CurriculumView_Previews: PreviewProvider {
    static var previews: some View {
        CurriculumView()
    }
}
