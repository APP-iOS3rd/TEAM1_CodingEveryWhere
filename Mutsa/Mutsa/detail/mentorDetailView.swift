//
//  mentorDetailView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct mentorDetailView: View {
    var mentor: MentorData
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(spacing: 20) {
                    Image(mentor.image)
                        .resizable()
                        .frame(width: .infinity, height: 240)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)

                    VStack(alignment: .leading, spacing:20) {
                        HStack {
                            Text("• \(mentor.name)")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("\(mentor.position)님")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                        }

                        Text("\(mentor.position)님 자세히 알아보기!")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.secondary)

                        Divider()
                        Text("소개")
                            .font(.title3)
                            .bold()

                        Text(mentor.oneSentence)
                            .font(.headline)

                        Divider()
                        Text("연혁")
                            .font(.title3)
                            .bold()

                        Text(mentor.history)
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
                                    NavigationLink(destination:MyWebview(urlToLoad: mentor.gitUrl)) {
                                            Image("blogIcon")
                                                .resizable()
                                                .frame(width: 60, height: 40)
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
    mentorDetailView(mentor:  MentorData(name: "박철현", image: "박철현", position: "Mentor", oneSentence: "여러분과 개발의 즐거움을 함께할 수 있었으면 합니다.", history: "• 프리랜서 iOS 개발자\n • 롯데카드, 컬리 등에서 근무\n", gitUrl: "https://github.com/blueprajna", blogUrl: ""))
}
