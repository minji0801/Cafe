//
//  HomeView.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView()
            MenuSuggestionSectionView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
