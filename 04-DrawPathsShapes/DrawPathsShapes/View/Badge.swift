//
//  Badge.swift
//  DrawPathsShapes
//
//  Created by 蔡浩铭 on 2020/11/3.
//

import SwiftUI

struct Badge: View {
    
    static let rotationCount = 8
    
    var badageSymbols: some View {
        ForEach(0..<Self.rotationCount) { (i)  in
            RotatedBadgeSymbol(angle: .init(degrees: Double(i) * Double(360.0)/Double(Self.rotationCount))).opacity(0.5)
        }

    }
    
    var body: some View {
        
        ZStack {
            
            BadgeBackground()
            
            GeometryReader { geometry in
                
                self.badageSymbols
                    .scaleEffect(0.25,anchor: .top)
                    .position(.init(x: geometry.size.width / 2, y: geometry.size.height * 3.0 / 4.0))
                
            }
            
        }
        .scaledToFit()
    }
    
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
