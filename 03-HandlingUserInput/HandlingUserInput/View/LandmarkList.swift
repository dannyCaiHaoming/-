//
//  LandmarkList.swift
//  LandmarkNavigation
//
//  Created by 蔡浩铭 on 2020/11/2.
//

/*
 
 //MARK: - 注释
 
（一）
     List：函数
     方式一：
     能传入数据数组，且在回调构建
     方式二：
     使用{  }
 
 （二）
 使用environmentObject(_:)发送,`EnvironmentObject`接收数据唯一传递
 
 
 */

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        NavigationView {
            
//MARK: - List()--方式一
//            List(landmarkData) { landmark in
//                if !self.showFavoritesOnly || landmark.isFavorite {
//                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
//                        LandmarkRow(landmark: landmark)
//                    }
//                }
//            }
//            .navigationBarTitle(Text("Landmarks"))
            
//MARK: - List()--方式二
            List {
                Toggle(isOn: $userData.showFavoritesOnly, label: {
                    Text("Favorites Only")
                })
                
                
                ForEach(userData.landmarkds,id:\.self) { (landmark)  in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmark"))
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
            .environmentObject(UserData())
    }
    
//    ForEach(["iPhone SE","iPhone 11"],id:\.self) { deviceName in
//        LandmarkList().previewDevice(PreviewDevice(rawValue: deviceName))
}

