//
//  EmojiMemoryGame.swift
//  project
//
//  Created by James Dai on 8/12/20.
//  Copyright © 2020 James Dai. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var game: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
            return emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return game.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
