//
//  ErrorReponse.swift
//  RexpaySDK
//
//  Created by Abdullah on 27/01/2024.
//

import Foundation

struct ErrorReponse: Codable, Error {
    var message: String? = ""
    var error: String? = ""
    var status: Int?
}

extension ErrorReponse {
    var composeErrMessage: String {
        if message!.isEmpty && error!.isEmpty {
            return "An error occured"
        }
        return "\(error!), \(message!)"
    }
}
