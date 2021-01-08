//
//  LandmarkDetail.swift
//  LandmarkNavigation
//
//  Created by 蔡浩铭 on 2020/11/2.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var userData: UserData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarkds.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack() {
            
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.park)
                        .font(.title)
                        .foregroundColor(Color.purple)
                    
                    Button(action: {
                        userData.landmarkds[landmarkIndex].isFavorite.toggle()
                    }, label: {
                        if userData.landmarkds[landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }else {
                            Image(systemName: "star")
                                .foregroundColor(.gray)
                        }
                    })
                }
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkDetail(landmark: landmarkData[0])
        LandmarkDetail(landmark: landmarkData[0])
            .environmentObject(UserData())
    }
}
