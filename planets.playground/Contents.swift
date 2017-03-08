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

var venus = UIView(frame: CGRect(x: 280, y: mainSpace.frame.size.width / 2, width: 9, height: 9))
venus.backgroundColor = UIColor.yellow
venus.layer.cornerRadius = venus.frame.size.width / 2
venus.center.y = sun.center.y

var earth = UIView(frame: CGRect(x: 310,y: mainSpace.frame.size.width / 2, width: 10, height: 10))
earth.backgroundColor = UIColor.blue
earth.layer.cornerRadius = venus.frame.size.width / 2
earth.center.y = sun.center.y

var mars = UIView(frame: CGRect(x: 350 , y: mainSpace.frame.size.width / 2, width: 7, height: 7))
mars.backgroundColor = UIColor.orange
mars.layer.cornerRadius = venus.frame.size.width / 2
mars.center.y = sun.center.y

var jupiter = UIView(frame: CGRect(x: 400, y: mainSpace.frame.size.width / 2, width: 150, height: 150))
jupiter.backgroundColor = UIColor.red
jupiter.layer.cornerRadius = jupiter.frame.size.width / 2
jupiter.center.y = sun.center.y

var saturn =  UIView(frame: CGRect(x: 600, y: mainSpace.frame.size.width / 2, width: 70, height: 70))
saturn.backgroundColor = UIColor.yellow
saturn.layer.cornerRadius = saturn.frame.size.width / 2
saturn.center.y = sun.center.y

var saturn_rings = UIView(frame: CGRect(x: 600, y: mainSpace.frame.size.width / 2, width: 90, height: 1))
saturn_rings.backgroundColor = UIColor.gray 
saturn_rings.center.y = saturn.center.y
saturn_rings.center.x = saturn.center.x

var uranus =  UIView(frame: CGRect(x: 720, y: mainSpace.frame.size.width / 2, width: 30, height: 30))
uranus.backgroundColor = UIColor.green
uranus.layer.cornerRadius = uranus.frame.size.width / 2
uranus.center.y = sun.center.y

var neptune =  UIView(frame: CGRect(x: 820, y: mainSpace.frame.size.width / 2, width: 25, height: 25))
neptune.backgroundColor = UIColor.blue
neptune.layer.cornerRadius = neptune.frame.width / 2
neptune.center.y = sun.center.y

var pluto =  UIView(frame: CGRect(x: 920, y: mainSpace.frame.size.width / 2, width: 5, height: 5))
pluto.backgroundColor = UIColor.brown
pluto.layer.cornerRadius = pluto.frame.width / 2
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
