//
//  EventSectionView.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/12.
//

import SwiftUI

struct EventsSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16.0) {
                ForEach(Event.sample) { event in
                    EventsSectionItemView(event: event)
                }
            }.padding(.horizontal, 16.0)
        }
    }
}

struct EventsSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150.0)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}

struct EventSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventsSectionView()
    }
}