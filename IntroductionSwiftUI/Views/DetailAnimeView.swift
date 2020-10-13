//
//  DetailAnimeView.swift
//  IntroductionSwiftUI
//
//  Created by Gustavo De Sousa on 12/10/20.
//  Copyright © 2020 Gustavo De Sousa. All rights reserved.
//

import SwiftUI

struct DetailAnimeView: View {
    let anime: AnimeDTO
    
    var body: some View {
        let layoutSize = UIScreen.main.bounds
        return VStack{
            Image(anime.image)
                .resizable()
                .frame(width: layoutSize.width * 0.5, height: layoutSize.height * 0.3 )
                .shadow(radius: 10)
                .padding(.top, 10)
            Form {
                Text(anime.name)
                    .font(.headline)
                Text(anime.descricao)
                    .foregroundColor(Color(red: 0.686, green: 0.686, blue: 0.682))
                Text("Estúdio: " + anime.estudio)
                    .foregroundColor(Color(red: 0.706, green: 0.706, blue: 0.706))
            }
        }.background(Color(red: 0.949, green: 0.949, blue: 0.97))
    }
}

struct DetailAnimeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailAnimeView(anime: animes[0]).padding(.top, 6)
    }
}
