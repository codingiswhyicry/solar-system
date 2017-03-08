//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var mainSpace = UIView(frame: CGRect(x: 0, y: 0, width: 10000, height: 10000))
mainSpace.backgroundColor = UIColor(red:0.04, green:0.15, blue:0.21, alpha:1.0)

var sun = UIView(frame: CGRect(x: -2000, y: mainSpace.frame.size.width / 2, width: 3000, height: 3000))
sun.backgroundColor = UIColor.yellow
sun.layer.cornerRadius = sun.frame.size.width / 2

var mercury = UIView(frame: CGRect(x: 500, y: mainSpace.frame.size.width / 2 , width: 70, height: 70))
mercury.backgroundColor = UIColor.gray
mercury.layer.cornerRadius = mercury.frame.size.width / 2
mercury.center.y = sun.frame.height / 2

var venus = UIView(frame: CGRect(x: 800, y: mainSpace.frame.size.width / 2, width: 90, height: 90))
venus.backgroundColor = UIColor.yellow
venus.layer.cornerRadius = venus.frame.size.width / 2
venus.center.y = sun.frame.height / 2

var earth = UIView(frame: CGRect(x: 1000,y: mainSpace.frame.size.width / 2, width: 100, height: 100))
earth.backgroundColor = UIColor.blue
earth.layer.cornerRadius = venus.frame.size.width / 2
earth.center.y = sun.frame.height / 2

var mars = UIView(frame: CGRect(x: 1200 , y: mainSpace.frame.size.width / 2, width: 100, height: 100))
mars.backgroundColor = UIColor.orange
mars.layer.cornerRadius = venus.frame.size.width / 2
mars.center.y = sun.frame.height / 2

var jupiter = UIView(frame: CGRect(x: 1500, y: mainSpace.frame.size.width / 2, width: 700, height: 700))
jupiter.backgroundColor = UIColor.red
jupiter.layer.cornerRadius = jupiter.frame.size.width / 2
jupiter.center.y = sun.frame.height / 2

mainSpace.addSubview(sun)
mainSpace.addSubview(mercury)
mainSpace.addSubview(venus)
mainSpace.addSubview(earth)
mainSpace.addSubview(mars)
mainSpace.addSubview(jupiter)
PlaygroundPage.current.liveView = mainSpace
