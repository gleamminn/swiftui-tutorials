//
//  ContentView.swift
//  Landmarks
//
//  Created by 김수민 on 4/9/25.
//

import SwiftUI

//뷰 파일은 구조와 미리보기를 선언

// 구조: View프로토콜을 따르고 뷰의 콘텐츠와 레이아웃을 설명
struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree Natinal Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

//미리보기:해당 뷰에 대한 미리보기를 만듬
#Preview {
    ContentView()
}
