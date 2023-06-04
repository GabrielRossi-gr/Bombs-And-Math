//
//  GameControler.swift
//  wwdcProject
//
//  Created by Gabriel Rossi on 10/04/23.
//

import SwiftUI
import SpriteKit

enum ColliderType: UInt32 {
  case Bomb = 1
  case Object = 2
  case Parede = 3
}

struct Pergunta{
    var pergunta:String
    var resposta1:String
    var istrue1:Bool
    var resposta2:String
    var istrue2:Bool
    var resposta3:String
    var istrue3:Bool
    var resposta4:String
    var istrue4:Bool
    init(pergunta: String, resposta1: String, istrue1: Bool, resposta2: String, istrue2: Bool, resposta3: String, istrue3: Bool, resposta4: String, istrue4: Bool) {
        self.pergunta = pergunta
        self.resposta1 = resposta1
        self.istrue1 = istrue1
        self.resposta2 = resposta2
        self.istrue2 = istrue2
        self.resposta3 = resposta3
        self.istrue3 = istrue3
        self.resposta4 = resposta4
        self.istrue4 = istrue4
        
    }
    
}



class GameController : SKScene, SKPhysicsContactDelegate {
    
    var tempo = 1
    var x = 0
    static var score = 0
    
    
    
    
    //declarar perguntas
    var pergunta1:Pergunta?
    var pergunta2:Pergunta?
    var pergunta3:Pergunta?
    var pergunta4:Pergunta?
    var pergunta5:Pergunta?
    var pergunta6:Pergunta?
    var pergunta7:Pergunta?
    var pergunta8:Pergunta?
    var pergunta9:Pergunta?
    var pergunta10:Pergunta?
    var pergunta11:Pergunta?
    var pergunta12:Pergunta?
    var pergunta13:Pergunta?
    var pergunta14:Pergunta?
    var pergunta15:Pergunta?
    var pergunta16:Pergunta?
    var pergunta17:Pergunta?
    
    
    var bomb: SKSpriteNode?
    var parede: SKSpriteNode?
    var pizzaFundo: SKSpriteNode?
    var perguntas = [Pergunta]()
    
    var lousa:SKLabelNode?
    var resposta1:SKLabelNode?
    var resposta2:SKLabelNode?
    var resposta3:SKLabelNode?
    var resposta4:SKLabelNode?
    
    //feedBack
    var feedBack1:SKSpriteNode?
    var feedBack2:SKSpriteNode?
    
    
    
    var button1:SKSpriteNode?
    var button2:SKSpriteNode?
    var button3:SKSpriteNode?
    var button4:SKSpriteNode?
    
    
    
    var pedaço1:SKSpriteNode?
    var pedaço2:SKSpriteNode?
    var pedaço3:SKSpriteNode?
    var pedaço4:SKSpriteNode?
    var pedaço5:SKSpriteNode?
    var pedaço6:SKSpriteNode?
    var pedaço7:SKSpriteNode?
    var pedaço8:SKSpriteNode?
    var pedaço9:SKSpriteNode?
    var pedaço10:SKSpriteNode?
    
    
    
    var rossi:SKSpriteNode?
    var blackRossi:SKSpriteNode?
    
    var grandFather:SKSpriteNode?
    var blackGrandFather:SKSpriteNode?
    
    var hand:SKSpriteNode?
    var blackHand:SKSpriteNode?
    
    
    var blackLousa:SKSpriteNode?
    
    
    
    //var labelScore: SKLabelNode?
   ///----------------------
    
    override func didMove(to view: SKView) {
        //labelScore = childNode(withName: "scorePizza") as? SKLabelNode
        
        
        
        blackLousa = childNode(withName: "boomLousa") as? SKSpriteNode
        blackLousa?.alpha = 0
        
        
        
        rossi = childNode(withName: "rossi000") as? SKSpriteNode
        blackRossi = childNode(withName: "blackRossi") as? SKSpriteNode
        blackRossi?.alpha = 0
        
        grandFather = childNode(withName: "grandFather") as? SKSpriteNode
        blackGrandFather = childNode(withName: "blackGrandFather") as? SKSpriteNode
        blackGrandFather?.alpha = 0
        
        hand = childNode(withName: "hand") as? SKSpriteNode
        blackHand = childNode(withName: "blackHand") as? SKSpriteNode
        blackHand?.alpha = 0
        
        
        
        
        feedBack1 = childNode(withName: "feedBack1") as? SKSpriteNode
        feedBack2 = childNode(withName: "feedBack2") as? SKSpriteNode
        
        
        
        
        
        
        
        pedaço1 = childNode(withName: "p1") as? SKSpriteNode
        pedaço2 = childNode(withName: "p2") as? SKSpriteNode
        pedaço3 = childNode(withName: "p3") as? SKSpriteNode
        pedaço4 = childNode(withName: "p4") as? SKSpriteNode
        pedaço5 = childNode(withName: "p5") as? SKSpriteNode
        pedaço6 = childNode(withName: "p6") as? SKSpriteNode
        pedaço7 = childNode(withName: "p7") as? SKSpriteNode
        pedaço8 = childNode(withName: "p8") as? SKSpriteNode
        pedaço9 = childNode(withName: "p9") as? SKSpriteNode
        pedaço10 = childNode(withName: "p10") as? SKSpriteNode
        
        button1 = childNode(withName: "button1") as? SKSpriteNode
        button2 = childNode(withName: "button2") as? SKSpriteNode
        button3 = childNode(withName: "button3") as? SKSpriteNode
        button4 = childNode(withName: "button4") as? SKSpriteNode
        
        
        
        lousa = childNode(withName: "lousaLabel") as? SKLabelNode
        resposta1 = childNode(withName: "resposta1") as? SKLabelNode
        resposta2 = childNode(withName: "resposta2") as? SKLabelNode
        resposta3 = childNode(withName: "resposta3") as? SKLabelNode
        resposta4 = childNode(withName: "resposta4") as? SKLabelNode
        
        pizzaFundo = childNode(withName: "pizza") as? SKSpriteNode
        
        bomb = childNode(withName: "bomb") as? SKSpriteNode
        bomb?.physicsBody?.categoryBitMask = ColliderType.Bomb.rawValue
        bomb?.physicsBody?.contactTestBitMask = ColliderType.Object.rawValue
        bomb?.physicsBody?.collisionBitMask = ColliderType.Object.rawValue
        
        parede = childNode(withName: "parede") as? SKSpriteNode
        bomb?.physicsBody?.categoryBitMask = ColliderType.Parede.rawValue
        bomb?.physicsBody?.contactTestBitMask = ColliderType.Bomb.rawValue
        bomb?.physicsBody?.collisionBitMask = ColliderType.Object.rawValue
        self.physicsWorld.contactDelegate = self
        //mudar perguntas
        // Inicialização das perguntas
        pergunta1 = Pergunta.init(pergunta: "3 + 3 = ?",
                                  resposta1: "6", istrue1: true,
                                  resposta2: "5", istrue2: false,
                                  resposta3: "9", istrue3: false,
                                  resposta4: "7", istrue4: false)
        
        pergunta2 = Pergunta.init(pergunta: "2 x 3 = ?",
                                  resposta1: "3", istrue1: false,
                                  resposta2: "5", istrue2: false,
                                  resposta3: "6", istrue3: true,
                                  resposta4: "7", istrue4: false)
        
        pergunta3 = Pergunta.init(pergunta: "3 x 5 = ?",
                                  resposta1: "8", istrue1: false,
                                  resposta2: "25", istrue2: false,
                                  resposta3: "15", istrue3: true,
                                  resposta4: "12", istrue4: false)
        
        pergunta4 = Pergunta.init(pergunta: " 6 + 10 = ?",
                                  resposta1: "4", istrue1: true,
                                  resposta2: "15", istrue2: false,
                                  resposta3: "10", istrue3: false,
                                  resposta4: "16", istrue4: true)
        
        pergunta5 = Pergunta.init(pergunta: "7 x 7 = ?",
                                  resposta1: "45", istrue1: false,
                                  resposta2: "49", istrue2: true,
                                  resposta3: "23", istrue3: false,
                                  resposta4: "32", istrue4: false)
        
        pergunta6 = Pergunta.init(pergunta: "12 - 9 = ?",
                                  resposta1: "2", istrue1: false,
                                  resposta2: "6", istrue2: false,
                                  resposta3: "3", istrue3: true,
                                  resposta4: "7", istrue4: false)
        
        pergunta7 = Pergunta.init(pergunta: "10 / 2 = ?",
                                  resposta1: "3", istrue1: false,
                                  resposta2: "2", istrue2: false,
                                  resposta3: "5", istrue3: true,
                                  resposta4: "12", istrue4: false)
        
        pergunta8 = Pergunta.init(pergunta: "8 x 8  = ?",
                                  resposta1: "64", istrue1: true,
                                  resposta2: "53", istrue2: false,
                                  resposta3: "23", istrue3: false,
                                  resposta4: "79", istrue4: false)
        
        pergunta9 = Pergunta.init(pergunta: "9 x 3  = ?",
                                  resposta1: "63", istrue1: false,
                                  resposta2: "23", istrue2: false,
                                  resposta3: "27", istrue3: true,
                                  resposta4: "28", istrue4: false)
        
        pergunta10 = Pergunta.init(pergunta: "6 + 4 = ?",
                                   resposta1: "11", istrue1: false,
                                   resposta2: "13", istrue2: false,
                                   resposta3: "64", istrue3: false,
                                   resposta4: "10", istrue4: true)
        
        pergunta11 = Pergunta.init(pergunta: "6 - 3 = ?",
                                   resposta1: "3", istrue1: true,
                                   resposta2: "5", istrue2: false,
                                   resposta3: "4", istrue3: false,
                                   resposta4: "9", istrue4: false)
        //
        pergunta12 = Pergunta.init(pergunta: "7 - 5 = ?",
                                   resposta1: "5", istrue1: false,
                                   resposta2: "3", istrue2: false,
                                   resposta3: "2", istrue3: true,
                                   resposta4: "1", istrue4: false)
        
        pergunta13 = Pergunta.init(pergunta: "9 x 9 = ?",
                                   resposta1: "33", istrue1: false,
                                   resposta2: "84", istrue2: false,
                                   resposta3: "92", istrue3: false,
                                   resposta4: "81", istrue4: true)
        
        pergunta14 = Pergunta.init(pergunta: "2 x 4 = ?",
                                   resposta1: "6", istrue1: false,
                                   resposta2: "8", istrue2: true,
                                   resposta3: "9", istrue3: false,
                                   resposta4: "7", istrue4: false)
        
        pergunta15 = Pergunta.init(pergunta: "8 / 4  = ?",
                                   resposta1: "6", istrue1: false,
                                   resposta2: "2", istrue2: true,
                                   resposta3: "9", istrue3: false,
                                   resposta4: "7", istrue4: false)
        
        pergunta16 = Pergunta.init(pergunta: "3 - 2 = ?",
                                   resposta1: "1", istrue1: true,
                                   resposta2: "3", istrue2: false,
                                   resposta3: "-1", istrue3: false,
                                   resposta4: "2", istrue4: false)
        
        pergunta17 = Pergunta.init(pergunta: "8 - 8 = ?",
                                   resposta1: "6", istrue1: false,
                                   resposta2: "5", istrue2: false,
                                   resposta3: "9", istrue3: false,
                                   resposta4: "0", istrue4: true)
        
        pergunta17 = Pergunta.init(pergunta: "6 x 4 = ?",
                                   resposta1: "10", istrue1: false,
                                   resposta2: "51", istrue2: false,
                                   resposta3: "24", istrue3: true,
                                   resposta4: "9", istrue4: false)
        
        pergunta17 = Pergunta.init(pergunta: "22 - 10 = ?",
                                   resposta1: "16", istrue1: false,
                                   resposta2: "32", istrue2: false,
                                   resposta3: "15", istrue3: false,
                                   resposta4: "12", istrue4: true)
        
        pergunta17 = Pergunta.init(pergunta: "7 - 3 = ?",
                                   resposta1: "6", istrue1: false,
                                   resposta2: "4", istrue2: true,
                                   resposta3: "9", istrue3: false,
                                   resposta4: "0", istrue4: false)
        
        pergunta17 = Pergunta.init(pergunta: "6 / 2 = ?",
                                   resposta1: "3", istrue1: true,
                                   resposta2: "5", istrue2: false,
                                   resposta3: "9", istrue3: false,
                                   resposta4: "0", istrue4: false)
        
        pergunta17 = Pergunta.init(pergunta: "14 x 5 = ?",
                                   resposta1: "60", istrue1: false,
                                   resposta2: "70", istrue2: true,
                                   resposta3: "50", istrue3: false,
                                   resposta4: "60", istrue4: false)
        
        pergunta17 = Pergunta.init(pergunta: "9 x 5 = ?",
                                   resposta1: "65", istrue1: false,
                                   resposta2: "45", istrue2: true,
                                   resposta3: "55", istrue3: false,
                                   resposta4: "35", istrue4: false)
        
        pergunta17 = Pergunta.init(pergunta: "10 - 41 = ?",
                                   resposta1: "-31", istrue1: true,
                                   resposta2: "31", istrue2: false,
                                   resposta3: "13", istrue3: false,
                                   resposta4: "-13", istrue4: false)
        
        pergunta17 = Pergunta.init(pergunta: "0 / 0  = ?",
                                   resposta1: "0", istrue1: true,
                                   resposta2: "0", istrue2: true,
                                   resposta3: "0", istrue3: true,
                                   resposta4: "0", istrue4: true)
        
    
        
        
        // Adicionando perguntas no array
        perguntas.append(pergunta1!)
        perguntas.append(pergunta2!)
        perguntas.append(pergunta3!)
        perguntas.append(pergunta4!)
        perguntas.append(pergunta5!)
        perguntas.append(pergunta6!)
        perguntas.append(pergunta7!)
        perguntas.append(pergunta8!)
        perguntas.append(pergunta9!)
        perguntas.append(pergunta10!)
        perguntas.append(pergunta11!)
        perguntas.append(pergunta12!)
        perguntas.append(pergunta13!)
        perguntas.append(pergunta14!)
        perguntas.append(pergunta15!)
        perguntas.append(pergunta16!)
        perguntas.append(pergunta17!)
        
    }
    
    func initGame(variavel:Int){
        let y = variavel
        lousa?.text = perguntas[y].pergunta
        resposta1?.text = perguntas[y].resposta1
        resposta2?.text = perguntas[y].resposta2
        resposta3?.text = perguntas[y].resposta3
        resposta4?.text = perguntas[y].resposta4
        //  array       struct
        // var perguntas = [Pergunta]()
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        let contactAName = contact.bodyA.node?.name
        let contactBName = contact.bodyB.node?.name
        if contactAName == "bomb" || contactBName == "bomb" {
            if contactAName == "parede" || contactBName == "parede" {
                
                
                
                //print("aaaa")
                feedBack1?.alpha = 0
                feedBack2?.alpha = 0
                pizzaFundo?.alpha = 0
                bomb?.alpha = 0
                pizzaFundo?.alpha = 0
                animationBomb()
                
                initGame(variavel: x)
                print("tipo da var")
                print(type(of: rossi))
                
                
                return
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            if button1!.frame.contains(location){
                if perguntas[x].istrue1 == true{
                    feedBack1?.alpha = 0
                    feedBack1?.alpha = 100
                    feedBack2?.alpha = 0
                    x = x + 1
                    print(x)
                    initGame(variavel: x)
                    GameController.score = GameController.score + 1
                    
                    print(GameController.score)
                    viewScore()
                    
                }else{
                    feedBack1?.alpha = 0
                    feedBack2?.alpha = 0
                    feedBack2?.alpha = 100
                }
            }
            if button2!.frame.contains(location){
                if perguntas[x].istrue2 == true{
                    feedBack1?.alpha = 0
                    feedBack1?.alpha = 100
                    feedBack2?.alpha = 0
                    x = x + 1
                    print(x)
                    initGame(variavel: x)
                    GameController.score = GameController.score + 1
                    
                    print(GameController.score)
                    viewScore()
                    
                }else{
                    feedBack1?.alpha = 0
                    feedBack2?.alpha = 0
                    feedBack2?.alpha = 100
                }
            }
            if button3!.frame.contains(location){
                if perguntas[x].istrue3 == true{
                    feedBack1?.alpha = 0
                    feedBack1?.alpha = 100
                    feedBack2?.alpha = 0
                    x = x + 1
                    print(x)
                    initGame(variavel: x)
                    GameController.score = GameController.score + 1
                    
                    print(GameController.score)
                    viewScore()
                    
                }else{
                    feedBack1?.alpha = 0
                    feedBack2?.alpha = 0
                    feedBack2?.alpha = 100
                }
            }
            if button4!.frame.contains(location){
                if perguntas[x].istrue4 == true{
                    feedBack1?.alpha = 0
                    feedBack1?.alpha = 100
                    feedBack2?.alpha = 0
                    x = x + 1
                    print(x)
                    initGame(variavel: x)
                    GameController.score += 1
                    
                    print(GameController.score)
                    viewScore()
                    
                }else{
                    feedBack1?.alpha = 0
                    feedBack2?.alpha = 0
                    feedBack2?.alpha = 100
                }
            }
        }
    }
    ////////////////////
    
    
    func animationBomb(){
        //        //        removeAllActions()
        //        //        removeAllChildren()
        let textures: [SKTexture] = getTextures(with: "bomb", textureAtlasName: "pizzaBombAnimation")
        let node = SKSpriteNode(texture: textures[0])
        
        node.position.x = 46//-0.785
        node.position.y = -103 //40.692
        node.scale(to: CGSize(width: 425 , height: 305))
        addChild(node)
        
        let action = SKAction.animate(with: textures,
                                      timePerFrame: 4 / TimeInterval(textures.count),
                                      resize: true,
                                      restore: true)
        // node.run(SKAction.repeatForever(action))
        
        //let repeatCount = 0
        let repeatCount = 1
        let repeatedAction = SKAction.repeat(action, count: repeatCount)
        
        //node.run(repeatedAction)
        node.run(repeatedAction, completion: {
            
            print("booommmm")
            
            node.removeFromParent()
            self.blackRossi?.alpha = 1
            self.blackGrandFather?.alpha = 1
            self.blackHand?.alpha = 1
            self.blackLousa?.alpha = 1
            
            self.hand?.alpha = 0
            
            
            let transition: SKTransition = SKTransition.fade(withDuration: 4)
            let Scene = SKScene(fileNamed: "ScoreScene")
            self.view?.presentScene(Scene!, transition: transition)
            
            //scorePizza
            //let stringscore = String(self.score)
            //self.labelScore?.text = stringscore
        
            
            print("score------>>> \(GameController.score)")
//            self.goToNextScene()
            
            
        })
        
    }
    
    func getTextures(with name: String , textureAtlasName: String ) -> [SKTexture]{
        let textureAtlas = SKTextureAtlas(named: textureAtlasName)
        var textures: [SKTexture] = []
        let names = textureAtlas.textureNames.sorted()
        
        for i in 0..<names.count{
            if names[i].contains(name){
                //print(i)
                let texture = textureAtlas.textureNamed(names[i])
                textures.append(texture)
            }
        }
        return textures
    }
    
    
    func mover(nome:Optional<SKSpriteNode>){
        nome?.position = CGPoint(x: 1000, y: 1000)
    }
    
    
    func viewScore(){
        if GameController.score == 1 {
            pedaço1?.alpha = 100
        }
        if GameController.score == 2 {
            pedaço2?.alpha = 100
            
        }
        if GameController.score == 3 {
            pedaço3?.alpha = 100
            
        }
        if GameController.score == 4 {
            pedaço4?.alpha = 100
            
        }
        if GameController.score == 5 {
            pedaço5?.alpha = 100
            
        }
        if GameController.score == 6 {
            pedaço6?.alpha = 100
            
        }
        if GameController.score == 7 {
            pedaço7?.alpha = 100
            
        }
        if GameController.score == 8 {
            pedaço8?.alpha = 100
        }
        if GameController.score == 9 {
            pedaço9?.alpha = 100
        }
        if GameController.score == 10 {
            pedaço10?.alpha = 100
        }
        
        
        
        
        return
    }
    
}
 
