//
//  MainTabView.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/12.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            Text("Other")
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.textItem
                }
        }
    }
}

//struct MainTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabView()
//    }
//}

// HStack: 한 번에 표시되어도 퍼포먼스에 크게 문제가 없는 화면을 그려야 할 때 추천!
struct SampleHStack: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Text("HStack 알아보기")
                Text("HStack 알아보기")
                Text("HStack 알아보기")
                Text("HStack 알아보기")
                Text("HStack 알아보기")
            }
        }
    }
}

//struct SampleHStack_Previews: PreviewProvider {
//    static var previews: some View {
//        SampleHStack()
//    }
//}

// LazyHStack
struct SampleLazyHStack: View {
    
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }
    
    let numbers: [Number] = (0...100).map { Number(value: $0) }
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
            LazyHGrid(rows: [
                GridItem(.fixed(20)),
                GridItem(.fixed(20))
            ]) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
        }
    }
}

//struct SampleLazyHStack_Previews: PreviewProvider {
//    static var previews: some View {
//        SampleLazyHStack()
//    }
//}

// List: UITableView와 유사
struct SampleListView: View {
    
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }
    
    let numbers: [Number] = (0...100).map { Number(value: $0) }
    
    var body: some View {
        List {
            Section(header: Text("Header")) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
            Section(header: Text("Second Header"), footer: Text("Footer")) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
        }
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
