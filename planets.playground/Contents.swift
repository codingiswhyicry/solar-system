//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var mainSpace = UIView(frame: CGRect(x: 0, y: 0, width: 10000, height: 10000))
mainSpace.backgroundColor = UIColor(red:0.04, green:0.15, blue:0.21, alpha:1.0)

var sun = UIView(frame: CGRect(x: -3000, y: mainSpace.frame.size.width / 2, width: 5000, height: 5000))
sun.backgroundColor = UIColor.yellow
sun.layer.cornerRadius = sun.frame.size.width / 2
sun.center.y = mainSpace.frame.height / 2

var mercury = UIView(frame: CGRect(x: 2500, y: mainSpace.frame.size.width / 2 , width: 70, height: 70))
mercury.backgroundColor = UIColor.gray
mercury.layer.cornerRadius = mercury.frame.size.width / 2
mercury.center.y = sun.center.y

var venus = UIView(frame: CGRect(x: 2800, y: mainSpace.frame.size.width / 2, width: 90, height: 90))
venus.backgroundColor = UIColor.yellow
venus.layer.cornerRadius = venus.frame.size.width / 2
venus.center.y = sun.center.y

var earth = UIView(frame: CGRect(x: 3100,y: mainSpace.frame.size.width / 2, width: 100, height: 100))
earth.backgroundColor = UIColor.blue
earth.layer.cornerRadius = venus.frame.size.width / 2
earth.center.y = sun.center.y

var mars = UIView(frame: CGRect(x: 3500 , y: mainSpace.frame.size.width / 2, width: 100, height: 100))
mars.backgroundColor = UIColor.orange
mars.layer.cornerRadius = venus.frame.size.width / 2
mars.center.y = sun.center.y

var jupiter = UIView(frame: CGRect(x: 4000, y: mainSpace.frame.size.width / 2, width: 1500, height: 1500))
jupiter.backgroundColor = UIColor.red
jupiter.layer.cornerRadius = jupiter.frame.size.width / 2
jupiter.center.y = sun.center.y

var saturn =  UIView(frame: CGRect(x: 5800, y: mainSpace.frame.size.width / 2, width: 700, height: 700))
saturn.backgroundColor = UIColor.yellow
saturn.layer.cornerRadius = saturn.frame.size.width / 2
saturn.center.y = sun.center.y

var uranus =  UIView(frame: CGRect(x: 6800, y: mainSpace.frame.size.width / 2, width: 300, height: 300))
uranus.backgroundColor = UIColor.green
uranus.layer.cornerRadius = uranus.frame.size.width / 2
uranus.center.y = sun.center.y

var neptune =  UIView(frame: CGRect(x: 8000, y: mainSpace.frame.size.width / 2, width: 250, height: 250))
neptune.backgroundColor = UIColor.blue
neptune.layer.cornerRadius = neptune.frame.width / 2
neptune.center.y = sun.center.y

var pluto =  UIView(frame: CGRect(x: 9070, y: mainSpace.frame.size.width / 2, width: 50, height: 50))
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
mainSpace.addSubview(uranus)
mainSpace.addSubview(neptune)
mainSpace.addSubview(pluto)

PlaygroundPage.current.liveView = mainSpace
