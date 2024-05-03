//
//  createDisplayPhrase.swift
//  poly
//
//  Created by english on 2023-11-30.
//

import Foundation

func createDisplayPhrase(phrase : String) -> String {
    return phrase.components(separatedBy: " ").dropLast().joined(separator: " ") + "_______"
}
