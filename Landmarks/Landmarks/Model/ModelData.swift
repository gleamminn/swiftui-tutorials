//
//  ModelData.swift
//  Landmarks
//
//  Created by 김수민 on 4/11/25.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    var features: [Landmark] {
        landmarks.filter{ $0.isFeatured }
    }
    
    //문자열(String)을 키로, Landmark 배열을 값으로 갖는 딕셔너리
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
            //.category에 따라 그룹핑
        )
    }
}


func load<T: Decodable>(_ filename: String, bundle: Bundle = .main) -> T {
    let data: Data

        guard let file = bundle.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find \(filename) in provided bundle.")
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from provided bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
}
