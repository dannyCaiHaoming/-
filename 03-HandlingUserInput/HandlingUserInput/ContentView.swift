//
//  ContentView.swift
//  HandlingUserInput
//
//  Created by 蔡浩铭 on 2020/11/2.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userData:UserData
    
    var body: some View {
        LandmarkList()
            .environmentObject(self.userData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserData())
    }
}
