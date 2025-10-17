//
//  File.swift
//  IgniteStarter
//
//  Created by Marian Nasturica on 17.10.2025.
//

import Foundation
import Ignite

enum Palette: String {
    case primary = "#89dceb"
    case secondary = "#b4befe"
    case background = "#1e1e2e"
    case accent = "#181825"
    case accentOpacity = "#11111b"
    case secondaryText = "#7f849c"
    case mainText = "#cdd6f4"
}

extension Color {
    public static let primaryColor = Color(hex: Palette.primary.rawValue)
    public static let secondaryColor = Color(hex: Palette.secondary.rawValue)
    public static let backgroundColor = Color(hex: Palette.background.rawValue)
    public static let accentColor = Color(hex: Palette.accent.rawValue)
    public static let accentOpacityColor = Color(hex: Palette.accentOpacity.rawValue)
    public static let mainText = Color(hex: Palette.mainText.rawValue)
    public static let secondaryText = (Color(hex: Palette.secondaryText.rawValue))
}
