//
//  TextShareProvider.swift
//  NetworkViewer
//
//  Created by Mакс T on 19.11.2024.
//

import Foundation
import UIKit

final class TextShareProvider: ShareProvider {
    var displayName: String = "Text"
    var icon: UIImage? = UIImage(systemName: "doc.on.doc")

    func shareData(for operations: [NetworkViewer.Operation]) async -> ShareResult? {
        return await Task.detached {
            let json = self.mapToJSON(for: operations)
            return .text(json)
        }.value
    }
}
