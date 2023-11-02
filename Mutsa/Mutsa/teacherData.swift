//
//  teacherData.swift
//  Mutsa
//
//  Created by 백대홍 on 11/2/23.
//

import Foundation
import SwiftUI


struct Data: Identifiable {
    var id =  UUID()
    var name: String
    var moge: String
    var image: String
    var introduce: String
    var onesentence: String
}

let teacherData = [
    Data(name: "박종욱", moge: "", image: "박종욱 강사님", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"),
    Data(name: "박종욱", moge: "", image: "", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"),
    Data(name: "박종욱", moge: "", image: "", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"),
    Data(name: "박종욱", moge: "", image: "", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"),
    Data(name: "박종욱", moge: "", image: "", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"),
    Data(name: "박종욱", moge: "", image: "", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"),
    Data(name: "박종욱", moge: "", image: "", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"),
    Data(name: "박종욱", moge: "", image: "", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"),
]



/**
 이름, 직책, 이모지, 사진, 이력, 한줄소개
 */
