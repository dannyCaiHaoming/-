//
//  UserData.swift
//  HandlingUserInput
//
//  Created by 蔡浩铭 on 2020/11/3.
//

import SwiftUI
import Combine


final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarkds = landmarkData
}
