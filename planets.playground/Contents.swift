//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var mainSpace = UIImageView(frame: CGRect(x: 0, y: 0, width: 1200, height: 900))
mainSpace.image = UIImage(named: "spaceBackground.jpg")
mainSpace.contentMode =  UIViewContentMode.scaleAspectFill

var sun = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.width / 2, width: 75, height: 75))
sun.image = UIImage(named: "editedsun.png")
sun.contentMode =  UIViewContentMode.scaleAspectFill
sun.center.y = mainSpace.frame.height / 2
sun.center.x = mainSpace.frame.width / 2

var mercury = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.height / 2 - 67, width: 4.5, height: 4.5))
mercury.image = UIImage(named: "mercury.png")
mercury.contentMode =  UIViewContentMode.scaleAspectFill
mercury.center.x = sun.center.x

var venus = UIImageView(frame: CGRect(x: mainSpace.frame.height / 2, y: mainSpace.frame.size.height / 2 - 94, width: 8.5, height: 8.5))
venus.image = UIImage(named: "venus.png")
venus.contentMode = UIViewContentMode.scaleAspectFill
venus.center.x = sun.center.x

var earth = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 124, width: 17.5 , height: 17.5))
earth.image = UIImage(named: "moonAndEarth.png")
earth.contentMode = UIViewContentMode.scaleAspectFill
earth.center.x = venus.center.x

var mars = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 143, width: 6, height: 6))
mars.image = UIImage(named: "mars.gif")
mars.contentMode = UIViewContentMode.scaleAspectFill
mars.center.x = sun.center.x

var jupiter = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 212, width: 40, height: 40))
jupiter.image = UIImage(named: "finalJupDraft.png")
jupiter.contentMode = UIViewContentMode.scaleAspectFill
jupiter.center.x = sun.center.x

var saturn =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 256, width: 35, height: 35))
saturn.image = UIImage(named: "saturnDraftTop.png")
saturn.contentMode = UIViewContentMode.scaleAspectFill
saturn.center.x = sun.center.x


var uranus =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 275, width: 10, height: 10))
uranus.image = UIImage(named: "uranus.gif")
uranus.contentMode = UIViewContentMode.scaleAspectFill
uranus.center.x = sun.center.x

var neptune =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 306, width: 12.5, height: 12.5))
neptune.image = UIImage(named: "neptune.gif")
neptune.contentMode = UIViewContentMode.scaleAspectFill
neptune.center.x = sun.center.x

var pluto =  UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2 - 327, width: 5, height: 5))
pluto.image = UIImage(named: "pluto.gif")
pluto.contentMode = UIViewContentMode.scaleAspectFill
pluto.center.x = sun.center.x

var alertMessage = UIImageView(frame: CGRect(x: mainSpace.frame.height /  2, y: mainSpace.frame.size.height / 2, width: 400, height: 400))
alertMessage.image = UIImage(named: "alertMessage.png")
alertMessage.contentMode = UIViewContentMode.scaleAspectFill
alertMessage.center.x = mainSpace.center.x
alertMessage.center.y = mainSpace.center.y


mainSpace.addSubview(sun)

sun.alpha = 0.0
sun.rotation(view: sun)
sun.layer.shadowColor = UIColor.orange.cgColor
sun.layer.shadowOpacity = 0.5
sun.layer.shadowOffset = CGSize.zero
sun.layer.shadowRadius = 15

mainSpace.addSubview(mercury)
mercury.alpha = 0.0
mercury.layoutIfNeeded()

mainSpace.addSubview(venus)
venus.alpha = 0.0
venus.layoutIfNeeded()

mainSpace.addSubview(earth)
earth.alpha = 0.0
earth.rotation(view: earth)
earth.layoutIfNeeded()

mainSpace.addSubview(mars)
mars.alpha = 0.0
mars.layoutIfNeeded()

mainSpace.addSubview(jupiter)
jupiter.alpha = 0.0
jupiter.layoutIfNeeded()

mainSpace.addSubview(saturn)
saturn.alpha = 0.0
saturn.layoutIfNeeded()

mainSpace.addSubview(uranus)
uranus.alpha = 0.0
uranus.layoutIfNeeded()

mainSpace.addSubview(neptune)
neptune.alpha = 0.0
neptune.layoutIfNeeded()

mainSpace.addSubview(pluto)
pluto.alpha = 0.0
pluto.layoutIfNeeded()

mainSpace.addSubview(alertMessage)
alertMessage.alpha = 0.0

mainSpace.create_circle(view: mainSpace, radius: 65.0, time: 0.5, delay: 5.3)

mainSpace.create_circle(view: mainSpace, radius: 90.0, time: 0.5, delay: 5.8)

mainSpace.create_circle(view: mainSpace, radius: 115.0, time: 0.5, delay: 6.3)

mainSpace.create_circle(view: mainSpace, radius: 140.0, time: 0.5, delay: 6.8)

mainSpace.create_circle(view: mainSpace, radius: 190.0, time: 0.5, delay: 7.3)

mainSpace.create_circle(view: mainSpace, radius: 240.0, time: 0.5, delay: 7.8)

mainSpace.create_circle(view: mainSpace, radius: 270.0, time: 0.5, delay: 8.3)

mainSpace.create_circle(view: mainSpace, radius: 300.0, time: 0.5, delay: 8.8)

mainSpace.create_circle(view: mainSpace, radius: 325.0, time: 0.5, delay: 9.0)

mercury.orbit(view: mercury, center: mainSpace, radius: 65.0, time: 0.5, delay: 2.0)
venus.orbit(view: venus, center: mainSpace, radius: 90.0, time: 1.0, delay: 2.0)
earth.orbit(view: earth, center: mainSpace, radius: 115, time: 1.5, delay: 2.0)
mars.orbit(view: mars, center: mainSpace, radius: 140, time: 2.0, delay: 2.0)
jupiter.orbit(view: jupiter, center: mainSpace, radius: 190, time: 2.5, delay: 2.0)
saturn.orbit(view: saturn, center: mainSpace, radius: 240, time: 3.0, delay: 2.0)
uranus.orbit(view: uranus, center: mainSpace, radius: 270, time: 3.5, delay: 2.0)
neptune.orbit(view: neptune, center: mainSpace, radius: 300, time: 4.0, delay: 2.0)
pluto.orbit(view: pluto, center: mainSpace, radius: 325, time: 4.5, delay: 2.0)

mainSpace.animate_planets(sun: sun, mercury: mercury, venus: venus, earth: earth, mars: mars, jupiter: jupiter, saturn: saturn, uranus: uranus, neptune: neptune, pluto: pluto)

UIView.animate(withDuration: 1.0, delay: 10.0, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
  
    alertMessage.alpha = 1.0
    
        }, completion: nil)

PlaygroundPage.current.liveView = mainSpace
