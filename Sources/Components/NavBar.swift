//
//  NavBar.swift
//  IgniteStarter
//
//  Created by Marian Nasturica on 17.10.2025.
//
import Foundation
import Ignite

struct NavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: "Nasturica Marian")
        .width(.viewport)
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.secondaryColor)
        .position(.fixedTop)
    }
}
