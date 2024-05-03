//
//  isolateVerb.swift
//  poly
//
//  Created by english on 2023-11-30.
//

import Foundation

func isolateVerb(completeVerb : String) -> String {
    let result = completeVerb.lowercased().split(separator: " ")
    return result.last!.lowercased()
}

