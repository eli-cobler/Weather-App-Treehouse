//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Eli Cobler on 7/22/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case respsonseUnsuccessful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
}













































