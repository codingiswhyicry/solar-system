//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var playgroundView = UIView(frame:  CGRect(x: 0, y: 0, width: 1200, height: 900))
public var planets = Planets()

playgroundView.addSubview(planets)

planets.startLaunch()

PlaygroundPage.current.liveView = playgroundView

