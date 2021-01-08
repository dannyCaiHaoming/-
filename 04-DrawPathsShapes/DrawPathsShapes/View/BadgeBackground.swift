//
//  BadgeBackground.swift
//  DrawPathsShapes
//
//  Created by 蔡浩铭 on 2020/11/3.
//

import SwiftUI

struct BadgeBackground: View {
    let xScale:CGFloat = 0.832
    
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    var body: some View {
        
        GeometryReader { geometry in
            
            Path { path in
                var width:CGFloat = min(geometry.size.width, geometry.size.height)
                let height =  width
                let xOffset = (width * (1.0-xScale)) / 2.0
                width *= xScale
            
                
                path.move(to: .init(x: xOffset + width * 0.95,
                                    y: height * (0.20 + HexagonParameters.adjustment)))
                
                HexagonParameters.points.forEach { (param) in
                    path.addLine(to: .init(x: xOffset + width * param.useWidth.0 * param.xFactors.0,
                                           y: height * param.useHeight.0 * param.yFactors.0))
                    
                    path.addQuadCurve(to: .init(x: xOffset + width * param.useWidth.1 * param.xFactors.1,
                                                y: height * param.useHeight.1 * param.yFactors.1),
                                      control: .init(x: xOffset + width * param.useWidth.2 * param.xFactors.2,
                                                     y: height * param.useHeight.2 * param.yFactors.2))
                }
            }
            .fill(LinearGradient(gradient: .init(colors: [Self.gradientStart,Self.gradientEnd]),
                                 startPoint: .init(x: 0.5, y: 0),
                                 endPoint: .init(x: 0.5, y: 0.6)
            ))
            .aspectRatio(1, contentMode: .fit)
            
        }
        

    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
