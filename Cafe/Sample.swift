//
//  Sample.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/13.
//

import Foundation

// MARK: - UINavigationController와 NavigationView 비교

// UINavigationController
import UIKit

let navigationController = UINavigationController(rootViewController: SampleviewController())

final class SampleviewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Title"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "house.fill"),
            style: .plain,
            target: self,
            action: #selector(didTapRightBarButton)
        )
    }
    
    @objc private func didTapRightBarButton() {
        print("did tap right bar button!")
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
}

// NavigationView
import SwiftUI

//struct SampleView: View {
//    var body: some View {
//        Text("Sample")
//    }
//}

//struct SampleNavigtionView: View {
//    var body: some View {
//        NavigationView {
//            List {
//                NavigationLink("Push Button", destination: SampleView())
//            }
//                .navigationTitle("Title")
//                .navigationBarItems(
//                    trailing: Button(action: {
//                        print("did tap right bar button!")
//                    }, label: {
//                        Image(systemName: "house.fill")
//                    })
//                )
//        }
//    }
//}

//struct SamplenavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        SampleNavigtionView()
//    }
//}

// MARK: - Data Flow

class ButtonModel: ObservableObject {
    @Published var isDisabled = true
}

struct ParentView: View {
    @ObservedObject var buttonModel = ButtonModel()
    
    var body: some View {
        ChildView(isDisabled: $buttonModel.isDisabled)
    }
}

struct ChildView: View {
//    @State private var currentText = ""
    @Binding var isDisabled: Bool
    
    var body: some View {
//        VStack {
//            TextField("텍스트를 입력해주세요", text: $currentText)
//            Text(currentText)
//        }
        VStack {
            Toggle(isOn: $isDisabled) {
                Text("버튼을 비활성화 시키겠습니까?")
            }
            
            Button("버튼") {}
                .disabled(isDisabled)
        }
    }
}

struct SampleView_Preivew: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
