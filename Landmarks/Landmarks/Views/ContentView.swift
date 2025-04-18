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
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem({
                    Label("Featured", systemImage: "star")
                })
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem({
                    Label("Featured", systemImage: "list.bullet")
                })
                .tag(Tab.list)
        }
        
    }
}

//미리보기:해당 뷰에 대한 미리보기를 만듬
#Preview {
    ContentView()
        .environment(ModelData())
}
