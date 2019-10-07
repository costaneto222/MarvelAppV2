//
//  ContentView.swift
//  MarvelCharacters_V2
//
//  Created by Francisco Costa Neto on 07/10/19.
//  Copyright © 2019 Francisco Costa Neto. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.characterList) { character in
                
                NavigationLink(destination: CharacterDetailView(characterId: character.id)) {
                    CharacterResumeRow(
                    characterName: character.name,
                    characterImage: character.image)
                }
            }
        }.navigationBarTitle(Text("Personagens"))
    }
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: MainViewModel())
    }
}
