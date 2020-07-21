//
//  GameScene.swift
//  CrashyPlane
//
//  Created by Dmitry Reshetnik on 21.07.2020.
//  Copyright © 2020 Dmitry Reshetnik. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var player: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        createPlayer()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    func createPlayer() {
        let playerTexture = SKTexture(imageNamed: "player-1")
        player = SKSpriteNode(texture: playerTexture)
        player.zPosition = 10
        player.position = CGPoint(x: frame.width / 6, y: frame.height * 0.75)
        addChild(player)
        
        let nextPlayerTexture = SKTexture(imageNamed: "player-2")
        let anotherPlayerTexture = SKTexture(imageNamed: "player-3")
        let animation = SKAction.animate(with: [playerTexture, nextPlayerTexture, anotherPlayerTexture, nextPlayerTexture], timePerFrame: 0.01)
        let endlessAnimation = SKAction.repeatForever(animation)
        player.run(endlessAnimation)
    }
}
