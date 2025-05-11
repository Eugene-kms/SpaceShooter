import SpriteKit

class MainMenu: SKScene {
        
        var starField: SKEmitterNode!
        
        var newGameButtonNode: SKSpriteNode!
        var levelGameButtonNode: SKSpriteNode!
        var labelLevelNode: SKLabelNode!
        
        override func didMove(to view: SKView) {
                
                starField = self.childNode(withName: "starField_anim") as? SKEmitterNode
                starField.advanceSimulationTime(10)
                
                newGameButtonNode = self.childNode(withName: "newGameButton") as? SKSpriteNode
                newGameButtonNode.texture = SKTexture(imageNamed: "NewGame")
                
                levelGameButtonNode = self.childNode(withName: "levelButton") as? SKSpriteNode
                levelGameButtonNode.texture = SKTexture(imageNamed: "Complexity")
                
                labelLevelNode = self.childNode(withName: "labelLevelButton") as? SKLabelNode
                
                let userLevel = UserDefaults.standard
                
                if userLevel.bool(forKey: "hard") {
                        labelLevelNode.text = "Difficult"
                } else {
                        labelLevelNode.text = "Easy"
                }
                
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
                let touch = touches.first
                
                if let location = touch?.location(in: self) {
                        let nodesArray = self.nodes(at: location)
                        
                        if nodesArray.first?.name == "newGameButton" {
                                let transition = SKTransition.flipVertical(withDuration: 0.5)
                                let gameScene = GameScene(size: UIScreen.main.bounds.size)
                                self.view?.presentScene(gameScene, transition: transition)
                        } else if nodesArray.first?.name == "levelButton" {
                                changeLevel()
                        }
                }
        }
        
        func changeLevel() {
                let userLevel = UserDefaults.standard
                
                if labelLevelNode.text == "Easy" {
                        labelLevelNode.text = "Difficult"
                        userLevel.set(true, forKey: "hard")
                } else {
                        labelLevelNode.text = "Easy"
                        userLevel.set(false, forKey: "hard")
                }
                
                userLevel.synchronize()
        }
}
