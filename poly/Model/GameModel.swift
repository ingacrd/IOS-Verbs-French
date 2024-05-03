//
//  GameModel.swift
//  poly
//
//  Created by english on 2023-11-14.
//

import Foundation

class Game {
    public var verb : FrenchVerb?
    public var conjugation : String = "indicatif"
    public var tense : String = ""
    public var phrase : String = ""
    public var attemptCounter = 1
    
    init(verb: FrenchVerb, tense: String) {
        self.verb = verb
        self.tense = tense
        self.phrase = pickRandomPhrase(verb: self.verb!)
    }
    
    private func pickRandomPhrase(verb : FrenchVerb) -> String {
        let randomNumber = Int.random(in: 0...5)
        
        switch(randomNumber){
        case 0:
            return verb.indicatif!.present!.i!
        case 1:
            return verb.indicatif!.present!.you!
        case 2:
            return verb.indicatif!.present!.heSheIt!
        case 3:
            return verb.indicatif!.present!.we!
        case 4:
            return verb.indicatif!.present!.youAll!
        case 5:
            return verb.indicatif!.present!.they!
        default:
            return verb.indicatif!.present!.i!
        }
    }
}
