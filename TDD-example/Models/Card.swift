//
//  Card.swift
//  TDD-example
//
//  Created by Wilton Ramos on 01/10/21.
//

import Foundation
import UIKit

class Card {
    var message: String!
    var color: Colors
    var qrCodeURL: String!
    
    init(message: String, color: Colors, qrCodeURL: String) throws {
        guard message.count <= 200 else {
            throw ValidationError.messageTooLong(messageLength: message.count)
        }
        self.message = message
        self.color = color
        self.qrCodeURL = qrCodeURL
    }
    
    public enum Colors {
        case purple
        case red
        case orange
        case yellow
        case green
        case blue
        case black
    }
    
    enum ValidationError: Error, Equatable {
        case messageTooLong(messageLength: Int)
    }
    
    func setMessage(_ message: String) {
        self.message = message
    }
    
    func setColor(_ color: Colors) {
        self.color = color
    }
    
    func setQrCodeURL(_ url: String) {
        self.qrCodeURL = url
    }
    
}
