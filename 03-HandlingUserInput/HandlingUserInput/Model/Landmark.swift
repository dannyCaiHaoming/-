//
//  Landmark.swift
//  LandmarkNavigation
//
//  Created by 蔡浩铭 on 2020/11/2.
//

import Foundation
import SwiftUI
import CoreLocation

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

struct Landmark: Codable,Hashable,Identifiable {
    
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var isFavorite: Bool

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(imageName)
    }
}
