//
//  CharacterPresenter.swift
//  MarvelCharacters
//
//  Created by Roberto Jesus Amaral (P) on 22/07/22.
//

import Foundation

protocol CharactersPresenterProtocol{
    
    func presentCharacters(characters: [CharacterData])
    func presentError(error: String)
}

class CharactersPresenter: CharactersPresenterProtocol  {

    weak var viewController: CharactersViewControllerProtocol?
    
    init(viewController: CharactersViewControllerProtocol) {
        self.viewController = viewController
    }
    
    func presentCharacters(characters: [CharacterData]) {
        viewController?.displayCharacters(characters: characters)
    }
    
    func presentError(error: String) {
        viewController?.displayError(message: error)
    }
}
