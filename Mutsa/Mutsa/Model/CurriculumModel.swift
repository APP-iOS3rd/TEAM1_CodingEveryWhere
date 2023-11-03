//
//  Model.swift
//  Techit_App_New
//
//  Created by 정인선 on 11/2/23.
//

import SwiftUI


struct Curriculum: Identifiable {
    enum Category: String {
        case preLearning = "Pre Learning"
        case mainCurriculum = "Main Curriculum"
        case project = "Project"
    }

    var id = UUID()
    var category: Category
    var title: String
    var subCurriculums: [SubCurriculum]
}

struct SubCurriculum: Identifiable {
    var id = UUID()
    var subTitle: String
    var subDetails: [String]
}

class CurriculumModel: ObservableObject {

    @Published var curriculums: [Curriculum] = [
        Curriculum(category: .mainCurriculum, title: "CS 기초", subCurriculums: [
            SubCurriculum(subTitle: "", subDetails: ["플레이그라운드를 통한 코딩의 이해", "기초 자료구조 & 알고리즘 이해", "Git & GitHub 이해 및 실습"])
        ]),
        Curriculum(category: .mainCurriculum, title: "Swift 문법 기초", subCurriculums: [
            SubCurriculum(subTitle: "", subDetails: ["데이터 타입, 변수, 상수", "연산자와 제어 흐름", "함수, 메서드, 클로저", "구조체와 객체 지향 기초", "프로토콜", "배열과 딕셔너리 컬렉션", "옵셔널"])
        ]),
        Curriculum(category: .mainCurriculum, title: "앱 개발 심화", subCurriculums: [
            SubCurriculum(subTitle: "UIKit", subDetails: ["UIKit 프레임워크 이해", "Storyboard 기반 UIKit", "UIKit 기반 상세 데모"]),
            SubCurriculum(subTitle: "SwiftUI", subDetails: ["SwiftUI View 이해", "SwiftUI 스택과 프레임", "스택 정렬과 정렬 가이드", "SwiftUI 기반 상세 데모"]),
            SubCurriculum(subTitle: "Firebase", subDetails: ["로그인 인증 구현", "Realtime Database와 Cloud Firestore의 \n DocumentDB 연동", "Cloud Storage로 파일 공유"])
        ]),
        Curriculum(category: .mainCurriculum, title: "UI/UX 기초", subCurriculums: [
            SubCurriculum(subTitle: "타이포그래피 기초", subDetails: ["타입에 대한 이해", "조형 원리에 따른 텍스트 운용 방법"]),
            SubCurriculum(subTitle: "색체학", subDetails: ["색채 체계 원리", "배색 및 색상 사용 원리"]),
            SubCurriculum(subTitle: "UX 기초", subDetails: ["UX디자인 기초개념", "사용자 인터페이스와 사용성 이해", "사용자 경험 향상을 위한 요소 이해", "올바른 사용자 인터랙션의 구성 요소"]),
            SubCurriculum(subTitle: "HIG(Human Interface Guideline)", subDetails: ["애플 HIG 이해", "앱스토어 등록 반려 사유 검토"])
        ]),
        Curriculum(category: .preLearning, title: "iOS 개발자로 살아남기", subCurriculums: [SubCurriculum(subTitle: "", subDetails: ["개발 직무 이해", "iOS 개발자 특징, 전망, 실무 이해", "Apple 기술과 생태계 이해", "부트캠프 출신 신입으로 취업하는 법", "정규과정 시작 전, 공부하면 좋을 내용"])]),
        Curriculum(category: .preLearning, title: "현업 개발자의 Xcode 꿀팁 대방출", subCurriculums: [SubCurriculum(subTitle: "", subDetails: ["iOS 개발자 필수 도구 Xcode 이해", "단축키를 포함한 약 30가지의 실무 꿀팁"])]),
        // "마크다운 언어를 이용한 웹 이력서 개발"
        Curriculum(category: .project, title: "웹 이력서 개발", subCurriculums: [SubCurriculum(subTitle: "주요 습득 역량", subDetails: ["프로그램 기본 구조 이해", "GitHub를 통한 협업 역량"])]),
        // "iOS API를 활용한 콘솔형 앱 개발"
        Curriculum(category: .project, title: "콘솔형 앱 개발", subCurriculums: [SubCurriculum(subTitle: "주요 습득 역량", subDetails: ["앱 구현 역량", "백엔드 개발 환경 구축 역량"])]),
        // "위치 기반의 API와 SwfitUI를 활용한 앱 서비스 개발"
        Curriculum(category: .project, title: "위치 기반의 API를 활용한 앱 서비스 개발", subCurriculums: [SubCurriculum(subTitle: "주요 습득 역량", subDetails: ["SwiftUI에 대한 숙련도 상승", "상용화 수준의 앱 구현 역량"])]),
        // "Firebase 이커머스 앱 만들고 배포까지"
        Curriculum(category: .project, title: "이커머스 앱 개발과 배포", subCurriculums: [SubCurriculum(subTitle: "주요 습득 역량", subDetails: ["코드 최적화 역량", "서비스 확장에 따른 구현 역량"])])
    ]

}
