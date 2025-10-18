//
//  File.swift
//  IgniteStarter
//
//  Created by Marian Nasturica on 17.10.2025.
//

import Foundation
import Ignite

struct SocialFooter: HTML {
    let icons = [
        Image(systemName: "github"),
        Image(systemName: "linkedin"),
        Image(systemName: "envelope"),
        Image(systemName: "file-earmark-pdf-fill")
    ]

    let urlStrings = [
        "https://github.com/marianul-commits",
        "https://www.linkedin.com/in/nasturicamarian/",
        "mailto:mvnasturica@gmail.com",
        "/CV.pdf"
    ]

    var body: some HTML {
        VStack {
            Section {
                HStack {
                    ForEach(zip(icons, urlStrings)) { (icon, urlString) in
                        Link(icon, target: urlString)
                            .role(.secondary)
                            .target(.blank)
                            .relationship(.noOpener, .noReferrer)
                    }
                }
            }
            .font(.title4)
            
            Text("©2025 Nasturica Marian")
            Text {
                "Created in Swift with "
                Link("Ignite", target: URL(static: "https://github.com/twostraws/Ignite"))
            }
        }
        .margin(.top, .xLarge)
        .margin(.bottom, .medium)
        .font(.small)
        .foregroundStyle(.secondaryText)
    }
}
