//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var mainSpace = UIImageView(frame: CGRect(x: 0, y: 0, width: 1400, height: 1400))
mainSpace.image = UIImage(named: "spaceBackground.jpg")
mainSpace.contentMode =  UIViewContentMode.scaleAspectFill

var sun = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2, width: 150, height: 150))
sun.image = UIImage(named: "editedsun.gif")
sun.contentMode =  UIViewContentMode.scaleAspectFill
sun.center.y = mainSpace.frame.height / 2
sun.center.x = mainSpace.frame.width / 2

var mercury = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2 - 130, width: 9, height: 9))
mercury.image = UIImage(named: "mercury.gif")
mercury.contentMode =  UIViewContentMode.scaleAspectFill
mercury.center.x = sun.center.x

var venus = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2 - 180, width: 17, height: 17))
venus.image = UIImage(named: "venus.gif")
venus.contentMode = UIViewContentMode.scaleAspectFill
venus.center.x = sun.center.x

var earth = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 230, width: 20, height: 20))
earth.image = UIImage(named: "earth.gif")
earth.contentMode = UIViewContentMode.scaleAspectFill
earth.center.x = venus.center.x

var moon = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2 - 260, width: 5, height: 5))
moon.image = UIImage(named: "moon.gif")
moon.contentMode = UIViewContentMode.scaleAspectFill
moon.center.x = sun.center.x

var mars = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 280, width: 12, height: 12))
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


var uranus =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.width / 2 - 540, width: 20, height: 20))
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
sun.rotation(view: sun)
mainSpace.addSubview(mercury)
mercury.orbit(view: mercury, center: mainSpace, radius: 130.0, time: 1.0)
mainSpace.addSubview(venus)
venus.orbit(view: venus, center: mainSpace, radius: 180.0, time: 2.0)
mainSpace.addSubview(earth)
earth.orbit(view: earth, center: mainSpace, radius: 230, time: 4.0)
mainSpace.addSubview(mars)
mars.orbit(view: mars, center: mainSpace, radius: 280, time: 6.0)
mainSpace.addSubview(jupiter)
jupiter.orbit(view: jupiter, center: mainSpace, radius: 390, time: 8.00)
mainSpace.addSubview(saturn)
saturn.orbit(view: saturn, center: mainSpace, radius: 480, time: 10.0)
mainSpace.addSubview(uranus)
uranus.orbit(view: uranus, center: mainSpace, radius: 540, time: 13.0)
mainSpace.addSubview(neptune)
neptune.orbit(view: neptune, center: mainSpace, radius: 600, time: 14.0)
mainSpace.addSubview(pluto)
pluto.orbit(view: pluto, center: mainSpace, radius: 650, time: 20.0)

PlaygroundPage.current.liveView = mainSpace
