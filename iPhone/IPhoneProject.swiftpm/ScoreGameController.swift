//
//  secondGmaeControler.swift
//  wwdcProject
//
//  Created by Gabriel Rossi on 13/04/23.
//

import SpriteKit
import _SpriteKit_SwiftUI
import SwiftUI


class ScoreGameController: SKScene {
    var score = GameController.score
    var scorePizza: SKLabelNode?
    var restart: SKSpriteNode?
    
    
    override func didMove(to view: SKView) {

        
        super.didMove(to: view)
        self.view?.window?.rootViewController?.navigationController?.navigationBar.isHidden = true
            //resto do código...
        
        print(score)
        //        restartButton = childNode(withName: "botao") as? SKSpriteNode
        scorePizza = childNode(withName: "scorePizza") as? SKLabelNode
        restart = childNode(withName: "restartbutton") as? SKSpriteNode
        
        scorePizza?.text = "\(score)"
        
        
    }
   
    
    
    var backButton: SKSpriteNode?
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event:UIEvent?){
        for touch in touches {
            let location = touch.location(in: self)
                if restart!.frame.contains(location){
                    
                    GameController.score = 0
                    let transition: SKTransition = SKTransition.fade(withDuration: 1)
                          let storieScene = SKScene(fileNamed: "GameScene")
                          self.view?.presentScene(storieScene!, transition: transition)
                    
                    

            }
        }
    }
    
    
    
}


