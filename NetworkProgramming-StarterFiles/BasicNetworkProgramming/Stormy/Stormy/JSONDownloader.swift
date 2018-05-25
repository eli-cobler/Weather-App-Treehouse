//
//  JSONDownloader.swift
//  Stormy
//
//  Created by Eli Cobler on 5/24/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

class JSONDownloader {
    
    let session: URLSession
    
    init(configuation: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuation)
    }
    
    convenience init() {
        self.init(configuation: .default)
    }
    
    func jsonTask(with request: URLRequest) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, error, response in
        }
        
        return task
    }
}







































