//
//  CardView.swift
//  IgniteStarter
//
//  Created by Marian Nasturica on 17.10.2025.
//

import Foundation
import Ignite

struct CardView: HTML {
    let title: String
    let description: String
    let link: String?
    let target: String?
    let badgeTitle: [String]
    
    var body: some HTML {
        Card {
            Text(markdown: description)
                .foregroundStyle(.mainText)
            if let link = link,
               let target = target {
                Text {
                    Link(link, target: target)
                }
            }
            HStack {
                ForEach(badgeTitle) { badge in
                    Text {
                        Badge(badge)
                            .badgeStyle(.subtleBordered)
                            .role(.info)
                    }
                    .font(.body)
                    .foregroundStyle(.mainText)
                }
            }
        } header: {
            Text(title)
                .foregroundStyle(.mainText)
        }
        .margin(.bottom, .medium)
    }
}

