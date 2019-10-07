//
//  ApiServices.swift
//  MarvelCharacters_V2
//
//  Created by Francisco Costa Neto on 07/10/19.
//  Copyright © 2019 Francisco Costa Neto. All rights reserved.
//

import Foundation

class ApiServices {
    static let sharedInstance: ApiServices = ApiServices()
    public var marvelApi: ApiProtocol
    
    public var useMock: Bool = false {
        didSet {
            marvelApi = useMock ? MarvelApiMock() : MarvelApi()
        }
    }
    init() {
        marvelApi = useMock ? MarvelApiMock() : MarvelApi()
    }
}
