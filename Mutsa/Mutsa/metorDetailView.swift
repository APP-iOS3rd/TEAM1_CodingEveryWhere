//
//  metorDetailView.swift
//  Mutsa
//
//  Created by 백대홍 on 11/2/23.
//

import SwiftUI

struct metorDetailView: View {
    var teacher: Data
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(spacing: 20) {
                    Image(teacher.image)
                        .resizable()
                        .frame(width: .infinity, height: 240)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                    
                    VStack(alignment: .leading, spacing:20) {
                        HStack {
                            Text("• \(teacher.name)")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("\(teacher.introduce)님")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        Text("\(teacher.introduce)님 자세히 알아보기!")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.secondary)
                        
                        Divider()
                        Text("소개")
                            .font(.title3)
                            .bold()
                        
                        Text("안녕하세요~")
                            .font(.headline)
                        
                        Divider()
                        Text("연혁")
                            .font(.title3)
                            .bold()
                        
                        Text("• 현) 데이터시각화 전문 스타트업 N사 CTO \n• 전) 네이버 부스트캠프 iOS 앱 개발 강사\n• 전) SK 플래닛 iOS 앱 개발\n• 전) 네오위즈 iOS 앱 개발")
                            .font(.headline)
                        
                        Divider()
                        
                        Text("Github & blog")
                            .font(.title3)
                            .bold()
                        
                        List {
                            Section(header:  HStack {
                                Image("YouTube")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                Text("Github")
                            }) {
                                
                                HStack(alignment: .center) {
                                    NavigationLink(destination:MyWebview(urlToLoad: "https://techit.education/school/kdt-ios-4th")) {
                                        //                                        Image("YouTube")
//                                        .resizable()
//                                        .frame(width: 60, height: 40)
                                    }
                                }
                            }
                        }
                    }.padding()
                }
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    metorDetailView(teacher: Data(name: "박종욱", moge: "🧑‍🎓", image: "박종욱 강사님", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"))
}
