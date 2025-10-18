//
//  File.swift
//  IgniteStarter
//
//  Created by Marian Nasturica on 18.10.2025.
//

import Foundation
import Ignite

struct CV: StaticPage {
    @Environment(\.decode) private var decode
    var title = "Nasturica Marian"
    
    var body: some HTML {
        Embed(title: "CV", url: URL("/CV.pdf")!)
    }
}
