//
//  ContentView.swift
//  IntroductionSwiftUI
//
//  Created by Gustavo De Sousa on 27/09/20.
//  Copyright © 2020 Gustavo De Sousa. All rights reserved.
//

import Foundation
import SwiftUI

struct AnimeDTO: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var estudio: String
    var descricao: String
}

let animes = [
    AnimeDTO(
        image: "jujutsu_capa",
        name: "JUJUTSU KAISEN",
        estudio: "MAPPA",
        descricao: "Prepare-se para JUJUTSU KAISEN, o próximo sucesso da Shonen Jump exclusivamente na Crunchyroll!"),
    AnimeDTO(
        image: "haikyuu_capa",
        name: "HAIKYU!! TO THE TOP",
        estudio: "Production I.G",
        descricao: "O time de vôlei do Colégio Karasuno segue buscando o topo durante o Torneio Nacional!"),
    AnimeDTO(
        image: "atack_capa",
        name: "ATTACK ON TITAN FINAL SEASON",
        estudio: "MAPPA",
        descricao: "Os membros do Reconhecimento vão descobrir o que os espera do outro lado do mar nessa temporada final de Attack on Titan!"),
    AnimeDTO(
        image: "dungeon_capa",
        name: "IS IT WRONG TO TRY TO PICK UP GIRLS IN A DUNGEON? III",
        estudio: "J.C.Staff",
        descricao: "Nosso herói Bell retorna nessa 3ª temporada para um encontro com uma garota-monstro que mudará Orario!")
]

struct animeRow: View {
    var animeDTO: AnimeDTO
    
    var body: some View {
        HStack {
            Image(animeDTO.image)
                .resizable()
                .frame(width: 75, height: 100)
                .shadow(radius: 10)
            
            VStack(spacing: 10) {
                Text("\(animeDTO.name)")
                    .multilineTextAlignment(.center)
                Text("\(animeDTO.descricao)")
                    .font(.footnote)
                    .foregroundColor(Color(red: 0.531, green: 0.497, blue: 0.493))
                    .multilineTextAlignment(.center)
            }
            .padding(.bottom, 10.0)
        }.padding([.top, .bottom], 20.0).padding(.leading, 10)
    }
}

struct ContentView: View {
    var body: some View {
        return VStack() {
            VStack(spacing: 10) {
                HStack(spacing: 10.0) {
                    // Sempre quando for modificar o layout precisa utilizar o "resizable"
                    Image("user_icon")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    Spacer()// Defini um espaço vazio podendo ser entre dois componentes ou somente com o a propria superview
                    Text("Bem Vindo ao Crunchroll, \n\nGustavo Rocha")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.965, green: 0.561, blue: 0.183))
                        .multilineTextAlignment(.center).font(.headline)
                    Spacer()
                }.padding([.top, .leading, .trailing], 10.0)
                
                Text("Confira todas as novidades na Crunchyroll para a temporada de outono de 2020")
                    .fontWeight(.light)
                    .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.72))
                    .multilineTextAlignment(.center)
                    .font(.headline)
                    .padding([.top, .leading, .trailing, .bottom], 10.0)
            }.background(Color(hue: 1.0, saturation: 0.004, brightness: 0.159, opacity: 0.695))
            
            NavigationView {
                List(animes) { anime in //Criacao da lista com base no objeto
                    NavigationLink(destination: DetailAnimeView(anime: anime)) {
                        animeRow(animeDTO: anime)
                    }
                }
                .navigationBarTitle("Animes", displayMode: .inline)
            }
        }.background(Image("burn_background"))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView()
    }
}
