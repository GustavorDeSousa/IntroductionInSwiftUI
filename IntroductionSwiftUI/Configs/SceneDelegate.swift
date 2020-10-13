//
//  SceneDelegate.swift
//  IntroductionSwiftUI
//
//  Created by Gustavo De Sousa on 27/09/20.
//  Copyright © 2020 Gustavo De Sousa. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //MARK: - Aqui é uma variavel que guarda qual vai ser a sua primeira tela a abrir!!!
        let contentView = AppView().environment(\.managedObjectContext, context)

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

