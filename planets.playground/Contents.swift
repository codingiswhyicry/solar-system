//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

/*
 
 let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
 backgroundImage.image = UIImage(named: "RubberMat")
 backgroundImage.contentMode =  UIViewContentMode.scaleAspectFill
 self.view.insertSubview(backgroundImage, at: 0)
 
 */


var mainSpace = UIImageView(frame: CGRect(x: 0, y: 0, width: 1400, height: 1400))
mainSpace.image = UIImage(named: "spaceBackground.jpg")
mainSpace.contentMode =  UIViewContentMode.scaleAspectFill

var sun = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2, width: 150, height: 150))
sun.image = UIImage(named: "editedsun.gif")
sun.contentMode =  UIViewContentMode.scaleAspectFill
sun.center.y = mainSpace.frame.height / 2
sun.center.x = mainSpace.frame.width / 2

var mercury = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2 - 130, width: 5, height: 5))
mercury.image = UIImage(named: "mercury.gif")
mercury.contentMode =  UIViewContentMode.scaleAspectFill
mercury.center.x = sun.center.x

var venus = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2 - 180, width: 9, height: 9))
venus.image = UIImage(named: "venus.gif")
venus.contentMode = UIViewContentMode.scaleAspectFill
venus.center.x = sun.center.x

var earth = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2,y: mainSpace.frame.size.width / 2 - 230, width: 11, height: 11))
earth.image = UIImage(named: "earth.gif")
earth.contentMode = UIViewContentMode.scaleAspectFill
earth.center.x = venus.center.x

var mars = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 280, width: 9, height: 9))
mars.image = UIImage(named: "mars.gif")
mars.contentMode = UIViewContentMode.scaleAspectFill
mars.center.x = sun.center.x

var jupiter = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 390, width: 80, height: 80))
jupiter.image = UIImage(named: "finalJupDraft.gif")
jupiter.contentMode = UIViewContentMode.scaleAspectFill
jupiter.center.x = sun.center.x

var saturn =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 480, width: 70, height: 70))
saturn.image = UIImage(named: "saturnDraftTop.png")
saturn.contentMode = UIViewContentMode.scaleAspectFill
saturn.center.x = sun.center.x


var uranus =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 540, width: 30, height: 30))
uranus.image = UIImage(named: "uranus.gif")
uranus.contentMode = UIViewContentMode.scaleAspectFill
uranus.center.x = sun.center.x

var neptune =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 600, width: 25, height: 25))
neptune.image = UIImage(named: "neptune.gif")
neptune.contentMode = UIViewContentMode.scaleAspectFill
neptune.center.x = sun.center.x

var pluto =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 650, width: 4, height: 4))
pluto.image = UIImage(named: "pluto.gif")
pluto.contentMode = UIViewContentMode.scaleAspectFill
pluto.center.x = sun.center.x

mainSpace.addSubview(sun)
mainSpace.addSubview(mercury)
mainSpace.addSubview(venus)
mainSpace.addSubview(earth)
mainSpace.addSubview(mars)
mainSpace.addSubview(jupiter)
mainSpace.addSubview(saturn)
mainSpace.addSubview(uranus)
mainSpace.addSubview(neptune)
mainSpace.addSubview(pluto)

PlaygroundPage.current.liveView = mainSpace
