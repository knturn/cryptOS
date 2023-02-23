//
//  Colors.swift
//  cryptOS
//
//  Created by Turan, Kaan on 23.02.2023.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorsTheme()
}
struct ColorsTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let secondaryText = Color("SecondaryTextColor")
    let red = Color("RedColor")
    let green = Color("GreenColor")
}
