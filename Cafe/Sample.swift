//
//  Sample.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/13.
//  UINavigationController와 NavigationView 비교

import Foundation

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

struct SampleView: View {
    var body: some View {
        Text("Sample")
    }
}

struct SampleNavigtionView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Push Button", destination: SampleView())
            }
                .navigationTitle("Title")
                .navigationBarItems(
                    trailing: Button(action: {
                        print("did tap right bar button!")
                    }, label: {
                        Image(systemName: "house.fill")
                    })
                )
        }
    }
}

struct SamplenavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SampleNavigtionView()
    }
}
