//
//  MainTab.swift
//  SwiftUIBasic
//
//  Created by 정정욱 on 11/2/23.
//


import SwiftUI

struct MainTabBasic: View {
    // property
    @State var initPageNumber: Int = 0
    
    var body: some View {
        // selection: TabView 가 어디 페이지를 가리키는지 설정하는것
        TabView(selection: $initPageNumber) {
            CurriculumView()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("커리큘럼")
                }
                .tag(0) // 0번 화면
            
            ListnavExample1View()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("커리큘럼")
                }
                .tag(1) // 0번 화면
            Text("둘러보기 화면")
                .tabItem {
                    Image(systemName: "globe")
                    Text("이전 기수")
                }
                .tag(2)// 1번 화면
            
            Text("프로필 화면")
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("강사진")
                }
                .tag(3)// 2번 화면
        }
        .accentColor(.orange)
    }
}


struct MainTabBasic_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBasic()
    }
}


// HomeView
struct Frequently_Asked: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            // background
            Color.red.edgesIgnoringSafeArea(.top)
            
            // foreground
            VStack (spacing: 20) {
                Text("홈 화면")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2 // 변경시키면 화면 이동됨
                } label: {
                    Text("프로필 화면 이동")
                        .font(.headline)
                        .padding(20)
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }//: VSTACK
        } //: ZSTACK
    }
}
