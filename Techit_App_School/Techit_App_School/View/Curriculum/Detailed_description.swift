//
//  Detailed_description.swift
//  SwiftUIBasic
//
//  Created by 정정욱 on 11/2/23.
//

import SwiftUI



struct Detailed_description: View {
    @State var title : [String] = ["CS 기초", "Swift 문법 기초", "앱 개발 심화", "UI/UX 기초"]
    @State var description : [String] = [
      """
      1. 플레이그라운드를 통한 코딩의 이해
      2. 기초 자료구조 & 알고리즘 이해
      3. Git & GitHub 이해 및 실습
      """,
      """
      1. 데이터 타입, 변수, 상수
      2. 연산자와 제어 흐름
      3. 함수, 메서드, 클로저
      4. 구조체와 객체 지향 기초
      5. 프로토콜
      6. 배열과 딕셔너리 컬렉션
      7. 옵셔널
      """,
            """
            UIKit
                1. UIKit 프레임워크 이해
                2. Storyboard 기반 UIKit
                3. UIKit 기반 상세 데모
             
            SwiftUI
                1. SwiftUI View 이해
                2. SwiftUI 스택과 프레임
                3. 스택 정렬과 정렬 가이드
                4. SwiftUI 기반 상세 데모
             
            Firebase
                1. 로그인 인증 구현
                2. Realtime Database와 Cloud Firestore의 DocumentDB 연동
                3. Cloud Storage로 파일 공유
            """,
              """
        타이포그래피 기초
            1. 타입에 대한 이해
            2. 조형 원리에 따른 텍스트 운용 방법
         
        색채학
            1. 색채 체계 원리
            2. 배색 및 색상 사용 원리
         
        UX 기초
            1. UX디자인 기초개념
            2. 사용자 인터페이스와 사용성 이해
            3. 사용자 경험 향상을 위한 요소 이해
            4. 올바른 사용자 인터랙션의 구성 요소
        
        HIG(Human Interface Guideline)
            1. 애플 HIG 이해
            2. 앱스토어 등록 반려 사유 검토
        """
    ]
   
    let count: Int
    
    // init 함수 생성
    init(count: Int) {
        self.count = count
    }
    
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            // circle 원형
            Text("\(title[count])").font(.title)
                .foregroundColor(.white)
                .font(.headline)
                .frame(width: 300)
                .padding()
                .background(Color.orange)
                .cornerRadius(10)
            ZStack{
                // circle 원형
                Text("\(description[count])").font(.subheadline)
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

struct Detailed_description_Previews: PreviewProvider {
    static var previews: some View {
        Detailed_description(count: 3)
    }
}
