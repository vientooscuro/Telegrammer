//
//  HTTPRequest.swift
//  Telegrammer
//
//  Created by Givi on 06/03/2019.
//

import Foundation
import AsyncHTTPClient
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension HTTPClient.Request {
    var description: String {
        """
        Request: \(self.method.rawValue) \(self.url.absoluteString)
        Headers: \(self.headers.description)
        Body: \(self.body.debugDescription)
        """
    }
}

extension HTTPClient.Body {
    var description: String {
        fatalError("Not implemented yet")
    }
}
