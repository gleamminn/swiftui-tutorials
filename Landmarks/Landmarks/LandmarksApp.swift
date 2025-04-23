//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김수민 on 4/9/25.
//

import SwiftUI

@main
//@main 속성 : 앱의 진입점을 식별
//app life cycle
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    //body 프로퍼티 : 디스플레이를 위한 콘텐츠를 제공하는 하나 이상의 scene 리턴
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
    
}
