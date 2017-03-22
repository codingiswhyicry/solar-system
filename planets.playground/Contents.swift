//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let mainSpace = main_space()
let mainScroll = main_scroll()
let sun = Sun()
let mercury = Mercury()
let venus = Venus()
let earth = Earth()
let mars = Mars()
let jupiter = Jupiter()
let saturn = Saturn()
let uranus = Uranus()
let neptune = Neptune()
let pluto = Pluto()

mainSpace.addSubview(mainScroll)

mainScroll.addSubview(sun)
mainScroll.addSubview(mercury)
mainScroll.addSubview(venus)
mainScroll.addSubview(earth)
mainScroll.addSubview(mars)
mainScroll.addSubview(jupiter)
mainScroll.addSubview(saturn)
mainScroll.addSubview(uranus)
mainScroll.addSubview(neptune)
mainScroll.addSubview(pluto)

public func startLaunch() {
    
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
    
    mainScroll.create_circle(view: mainSpace, radius: 65.0, time: 0.5, delay: 12.0)
    
    mainScroll.create_circle(view: mainSpace, radius: 90.0, time: 0.5, delay: 12.2)
    
    mainScroll.create_circle(view: mainSpace, radius: 115.0, time: 0.5, delay: 12.4)
    
    mainScroll.create_circle(view: mainSpace, radius: 140.0, time: 0.5, delay: 12.6)
    
    mainScroll.create_circle(view: mainSpace, radius: 190.0, time: 0.5, delay: 12.8)
    
    mainScroll.create_circle(view: mainSpace, radius: 240.0, time: 0.5, delay: 13.0)
    
    mainScroll.create_circle(view: mainSpace, radius: 270.0, time: 0.5, delay: 13.2)
    
    mainScroll.create_circle(view: mainSpace, radius: 300.0, time: 0.5, delay: 13.4)
    
    mainScroll.create_circle(view: mainSpace, radius: 325.0, time: 0.5, delay: 13.6)
    
}

startLaunch()

mainSpace.addGesture()

PlaygroundPage.current.liveView = mainSpace

extension UIImageView {


    public func stopAnimation() {
        
        mainSpace.stopRotation(view: mercury)
        mainSpace.stopRotation(view: venus)
        mainSpace.stopRotation(view: earth)
        mainSpace.stopRotation(view: mars)
        mainSpace.stopRotation(view: jupiter)
        mainSpace.stopRotation(view: saturn)
        mainSpace.stopRotation(view: uranus)
        mainSpace.stopRotation(view: neptune)
        mainSpace.stopRotation(view: pluto)
        
    }

}
