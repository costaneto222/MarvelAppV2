//
//  MainViewModel.swift
//  MarvelCharacters_V2
//
//  Created by Francisco Costa Neto on 07/10/19.
//  Copyright © 2019 Francisco Costa Neto. All rights reserved.
//

import Foundation
import Combine

struct CharacterResume: Identifiable {
    var name: String, image: String, id: Int
}

class MainViewModel: ObservableObject {
    
    @Published var characterList: [CharacterResume] = [
        CharacterResume(name: "Peter", image: "String", id: 0),
        CharacterResume(name: "Pan", image: "String", id: 1),
        CharacterResume(name: "Mozao", image: "String", id: 2)
    ]
    
    private var disposables: Set<AnyCancellable> = Set<AnyCancellable>()
    
    init() {
        
    }
}
