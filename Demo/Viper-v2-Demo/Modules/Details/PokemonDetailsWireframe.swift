//
//  PokemonDetailsWireframe.swift
//  Viper-v2-Demo
//
//  Created by Donik Vrsnak on 4/11/18.
//  Copyright (c) 2018 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class PokemonDetailsWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let _storyboard = UIStoryboard(name: "PokemonDetails", bundle: nil)

    // MARK: - Module setup -

    init(pokemon: Pokemon) {
        let moduleViewController = _storyboard.instantiateViewController(ofType: PokemonDetailsViewController.self)
        super.init(viewController: moduleViewController)
        
        let interactor = PokemonDetailsInteractor()
        let presenter = PokemonDetailsPresenter(wireframe: self, view: moduleViewController, interactor: interactor, pokemon: pokemon)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension PokemonDetailsWireframe: PokemonDetailsWireframeInterface {

    func navigate(to option: PokemonDetailsNavigationOption) {
    }
}
