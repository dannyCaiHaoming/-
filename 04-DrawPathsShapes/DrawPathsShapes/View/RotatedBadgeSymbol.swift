//
//  RotatedBadgeSymbol.swift
//  DrawPathsShapes
//
//  Created by 蔡浩铭 on 2020/11/3.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle,anchor: .bottom)
        
        
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
