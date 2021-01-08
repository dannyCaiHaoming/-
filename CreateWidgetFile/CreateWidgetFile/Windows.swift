//
//  Windows.swift
//  CreateWidgetFile
//
//  Created by 蔡浩铭 on 2020/11/27.
//

import Foundation
import AppKit

struct WAWidgetModel: Codable, Identifiable {
    
    let category: WAWidgetCategory
    let style: WAWidgetStyle
    
    var id: String {
        return category.displayName + "_" + style.displayName
    }
    
}

struct WAWidgetEditableBackground: Codable {
    var imagePath: String?
//    var image: UIImage?
    var colorHex: String?
    
    enum CodingKeys: String, CodingKey {
        case imagePath
        case colorHex
    }
}

struct WAWidgetEditableFont: Codable {
    var fontName: String?
    var colorHex: String?
}

struct WAWidgetEditableData: Codable {
    var background: WAWidgetEditableBackground?
    var fonts: [WAWidgetEditableFont]?
    var title: String?
    var content: String?
    var date: Date?
}

class Windows: NSView {
    
}
