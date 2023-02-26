//
//  Float+Extensions.swift
//  shipp
//
//  Created by Vivek Olumbe on 2/21/23.
//


import Foundation

extension Float {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(format: "%.1f", self)
    }
}
