//
//  DomainListProtocols.swift
//  Olimp
//
//  Created Sakhabaev Egor on 10.11.2023.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Sakhabaev Egor @Banck
//  https://github.com/Banck/SwiftUI-Coordinator-template
//

import Foundation
import SwiftUI

// MARK: - DomainListModuleInput
protocol DomainListModuleInput: AnyObject { }

// MARK: - DomainListModuleOutput
struct DomainListModuleOutput {
    
//    let didSelectSearchResult: (_ searchResult: String) -> Void
}

// MARK: - Presenter
protocol DomainListViewModelInterface: ObservableObject {

    var domainsData: [DomainData] { get }
    var pinnedDomainCellsData: [SettingsDetailedRow.Data] { get }
    var unpinnedDomainCellsData: [SettingsDetailedRow.Data] { get }

    func operations(forDomain domain: String) -> [NetworkViewer.Operation]
    
    // MARK: - Lifecycle
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
}

extension DomainListViewModelInterface {

    func viewDidLoad() {/*leaves this empty*/}
    func viewWillAppear() {/*leaves this empty*/}
    func viewWillDisappear() {/*leaves this empty*/}
}
