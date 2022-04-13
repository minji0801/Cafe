//
//  Event.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/12.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
}
