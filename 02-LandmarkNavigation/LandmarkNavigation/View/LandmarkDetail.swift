//
//  LandmarkDetail.swift
//  LandmarkNavigation
//
//  Created by 蔡浩铭 on 2020/11/2.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    
    var body: some View {
        VStack() {
            
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                Text(landmark.park)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.purple)
                
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
        LandmarkDetail(landmark: landmarkData[0])
    }
}
