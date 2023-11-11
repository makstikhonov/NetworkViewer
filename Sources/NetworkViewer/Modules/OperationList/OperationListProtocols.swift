//
//  OperationListProtocols.swift
//  Olimp
//
//  Created Sakhabaev Egor on 10.11.2023.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Sakhabaev Egor @Banck
//  https://github.com/Banck/SwiftUI-MVVM-Coordinator-template
//

import Foundation
import SwiftUI

// MARK: - OperationListModuleInput
protocol OperationListModuleInput: AnyObject { }

// MARK: - OperationListModuleOutput
struct OperationListModuleOutput {
    
//    let didSelectSearchResult: (_ searchResult: String) -> Void
}

// MARK: - Presenter
protocol OperationListViewModelInterface: ObservableObject {

    var title: String {get }

    // MARK: - Lifecycle
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
}

extension OperationListViewModelInterface {

    func viewDidLoad() {/*leaves this empty*/}
    func viewWillAppear() {/*leaves this empty*/}
    func viewWillDisappear() {/*leaves this empty*/}
}

// MARK: - View
protocol OperationListView {

}
