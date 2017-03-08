//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

/*
 
 let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
 backgroundImage.image = UIImage(named: "RubberMat")
 backgroundImage.contentMode =  UIViewContentMode.scaleAspectFill
 self.view.insertSubview(backgroundImage, at: 0)
 
 */


var mainSpace = UIImageView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
mainSpace.image = UIImage(named: "spaceBackground.jpg")
mainSpace.contentMode =  UIViewContentMode.scaleAspectFill

var sun = UIImageView(frame: CGRect(x: -300, y: mainSpace.frame.size.width / 2, width: 400, height: 400))
sun.image = UIImage(named: "editedsun.gif")
sun.contentMode =  UIViewContentMode.scaleAspectFill
sun.center.y = mainSpace.frame.height / 2

var mercury = UIImageView(frame: CGRect(x: 250, y: mainSpace.frame.size.width / 2 , width: 5, height: 5))
mercury.image = UIImage(named: "mercury.gif")
mercury.contentMode =  UIViewContentMode.scaleAspectFill
mercury.center.y = sun.center.y

var venus = UIImageView(frame: CGRect(x: 280, y: mainSpace.frame.size.width / 2, width: 9, height: 9))
venus.image = UIImage(named: "venus.gif")
venus.contentMode = UIViewContentMode.scaleAspectFill
venus.center.y = sun.center.y

var earth = UIImageView(frame: CGRect(x: 310,y: mainSpace.frame.size.width / 2, width: 10, height: 10))
earth.image = UIImage(named: "earth.gif")
earth.contentMode = UIViewContentMode.scaleAspectFill
earth.center.y = sun.center.y

var mars = UIImageView(frame: CGRect(x: 350 , y: mainSpace.frame.size.width / 2, width: 7, height: 7))
mars.image = UIImage(named: "mars.gif")
mars.contentMode = UIViewContentMode.scaleAspectFill
mars.center.y = sun.center.y

var jupiter = UIImageView(frame: CGRect(x: 400, y: mainSpace.frame.size.width / 2, width: 150, height: 150))
jupiter.image = UIImage(named: "jupiter.gif")
jupiter.contentMode = UIViewContentMode.scaleAspectFill
jupiter.center.y = sun.center.y

var saturn =  UIImageView(frame: CGRect(x: 600, y: mainSpace.frame.size.width / 2, width: 100, height: 100))
saturn.image = UIImage(named: "saturn.gif")
saturn.contentMode = UIViewContentMode.scaleAspectFill
saturn.center.y = sun.center.y

var saturn_rings = UIView(frame: CGRect(x: 600, y: mainSpace.frame.size.width / 2, width: 160, height: 1))
saturn_rings.backgroundColor = UIColor(red:0.76, green:0.70, blue:0.69, alpha:1.0)
saturn_rings.layer.cornerRadius = 7
saturn_rings.center.y = saturn.center.y
saturn_rings.center.x = saturn.center.x

var uranus =  UIImageView(frame: CGRect(x: 770, y: mainSpace.frame.size.width / 2, width: 30, height: 30))
uranus.image = UIImage(named: "uranus.gif")
uranus.contentMode = UIViewContentMode.scaleAspectFill
uranus.center.y = sun.center.y

var neptune =  UIImageView(frame: CGRect(x: 860, y: mainSpace.frame.size.width / 2, width: 25, height: 25))
neptune.image = UIImage(named: "neptune.gif")
neptune.contentMode = UIViewContentMode.scaleAspectFill
neptune.center.y = sun.center.y

var pluto =  UIImageView(frame: CGRect(x: 930, y: mainSpace.frame.size.width / 2, width: 4, height: 4))
pluto.image = UIImage(named: "pluto.gif")
pluto.contentMode = UIViewContentMode.scaleAspectFill
pluto.center.y = sun.center.y

mainSpace.addSubview(sun)
mainSpace.addSubview(mercury)
mainSpace.addSubview(venus)
mainSpace.addSubview(earth)
mainSpace.addSubview(mars)
mainSpace.addSubview(jupiter)
mainSpace.addSubview(saturn)
mainSpace.addSubview(saturn_rings)
mainSpace.addSubview(uranus)
mainSpace.addSubview(neptune)
mainSpace.addSubview(pluto)

PlaygroundPage.current.liveView = mainSpace
