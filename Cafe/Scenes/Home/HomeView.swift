//
//  HomeView.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/13.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeMenu)
            Spacer(minLength: 32.0)
            EventsSectionView(events: $viewModel.events)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
