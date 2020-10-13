//
//  AppView.swift
//  IntroductionSwiftUI
//
//  Created by Gustavo De Sousa on 12/10/20.
//  Copyright © 2020 Gustavo De Sousa. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView().tabItem {
                Image(systemName: "list.dash")
                Text("Home")
            }
            
            MyAnimesView().tabItem {
                Image(systemName: "square.and.pencil")
                Text("Meu Animes")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
