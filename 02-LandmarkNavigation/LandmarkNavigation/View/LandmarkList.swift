//
//  LandmarkList.swift
//  LandmarkNavigation
//
//  Created by 蔡浩铭 on 2020/11/2.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
        
//        NavigationView {
////            ForEach(landmarkData,id:\.self) { (landmark)  in
////                LandmarkRow(landmark: landmark)
////            }
////            .navigationBarTitle(Text("Landmark"))
//            List(landmarkData) { (landmark)  in
//                NavigationLink(
//                    destination: LandmarkDetail()) {
//                    LandmarkRow(landmark: landmark)
//                }
//            }
//            .navigationBarTitle(Text("Landmark"))
//        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
    
//    ForEach(["iPhone SE","iPhone 11"],id:\.self) { deviceName in
//        LandmarkList().previewDevice(PreviewDevice(rawValue: deviceName))
}

