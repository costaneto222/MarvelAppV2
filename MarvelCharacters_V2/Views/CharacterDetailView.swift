//
//  CharacterDetailView.swift
//  MarvelCharacters_V2
//
//  Created by Francisco Costa Neto on 07/10/19.
//  Copyright © 2019 Francisco Costa Neto. All rights reserved.
//

import SwiftUI

struct CharacterDetailView: View {
    var viewModel: CharacterDetailViewModel = CharacterDetailViewModel()
    var characterId: Int
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(characterId: 0)
    }
}
