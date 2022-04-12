//
//  Tab.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/12.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    // associated value
    var textItem: Text {
        switch self {
        case .home:
            return Text("Home")
        case .other:
            return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home:
            return Image(systemName: "house.fill")
        case .other:
            return Image(systemName: "ellipsis")
        }
    }
}
