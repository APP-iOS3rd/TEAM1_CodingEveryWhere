//
//  teacherCellView.swift
//  Mutsa
//
//  Created by 백대홍 on 11/2/23.
//

import SwiftUI

struct teacherCellView: View {
    var teacher: Data
    var body: some View {
        HStack(alignment: .top, spacing: 12)  {
        
            Image(teacher.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .padding(.all, 5)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment:.leading, spacing: 24) {
                HStack(alignment:.bottom, spacing: 12) {
                    Text(teacher.name)
                        .font(.title)
                        .bold()
                    
                    Text(teacher.introduce)
                        .font(.title3)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
                Text(teacher.onesentence)
            }
            

        }
    }
}

#Preview {
    teacherCellView(teacher: Data(name: "박종욱", moge: "🧑‍🎓", image: "박종욱 강사님", introduce: "강사", onesentence: "6개월동안 잘 부탁 드립니다~"))
}
