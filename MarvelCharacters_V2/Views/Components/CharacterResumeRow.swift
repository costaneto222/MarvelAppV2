//
//  CharacterResumeRow.swift
//  MarvelCharacters_V2
//
//  Created by Francisco Costa Neto on 07/10/19.
//  Copyright © 2019 Francisco Costa Neto. All rights reserved.
//

import SwiftUI

struct CharacterResumeRow: View {
    var characterName: String
    var characterImage: String
    
    var body: some View {
        return HStack {
            Image(characterImage).resizable().frame(width: 100, height: 100, alignment: .leading)
            Text(characterName)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

struct CharacterResumeRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterResumeRow(characterName: "Petruquio", characterImage: "")
    }
}
