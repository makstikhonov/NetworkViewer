//
//  NetworkViewer.swift
//  
//
//  Created by Sakhabaev Egor on 10.11.2023.
//

import UIKit
import SwiftUI

public class NetworkViewer {

    public private(set) static var operations: [NetworkViewer.Operation] = [] {
        didSet {
            domainListInput?.updateOperations(operations)
        }
    }
    public static var invokeByShake: Bool = false
    static let favoriteService: FavoriteServiceProtocol = FavoriteService()
    private static var domainListInput: DomainListModuleInput?

    public static func addOperation(_ operation: NetworkViewer.Operation) {
        operations.append(operation)
    }

    /**
     Present screen with network operations.
     - parameter operations: you can pass specify array of operations otherwise NetworkViewer.operations will be used.
     **/
    public static func show() {
        guard let topController = UIApplication.topViewController() else { return }
        let module = DomainListConfigurator.createModule(operations: operations)
        domainListInput = module.input
        topController.present(UIHostingController(rootView: module.view), animated: true)
    }

    static func deleteAllOperations() {
        operations.removeAll()
    }
    static func deleteAllOperations(forDomain domain: String) {
        operations.removeAll {
            (URL(string: $0.request.url)?.host ?? $0.request.url) == domain
        }
    }
}

// MARK: - Shake invokation
extension UIWindow {

    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard NetworkViewer.invokeByShake,  motion == .motionShake else { return }
        NetworkViewer.show()
    }
}
