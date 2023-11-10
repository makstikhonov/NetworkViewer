//
//  JSONViewerConfigurator.swift
//  Olimp
//
//  Created Sakhabaev Egor on 10.11.2023.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Sakhabaev Egor @Banck
//  https://github.com/Banck/SwiftUI-Coordinator-template
//

import UIKit
import SwiftUI

struct JSONViewerConfigurator {

    static func createModule(
        output: JSONViewerModuleOutput? = nil
    ) -> (view: some View, input: JSONViewerModuleInput) {
        let interactor = JSONViewerInteractor()
        let presenter = JSONViewerPresenter(
            interactor: interactor,
            output: output
        )
        let view = JSONViewerScreen(presenter: presenter)

        presenter.view = view
        interactor.presenter = presenter

        return (view, presenter)
    }
}
