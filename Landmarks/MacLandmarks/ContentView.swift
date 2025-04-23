//
//  ContentView.swift
//  MacLandmarks
//
//  Created by 김수민 on 4/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
