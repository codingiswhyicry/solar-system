import Foundation
import UIKit

public class Planets: UIView {
    
    public var mainSpace = main_space()
    public var mainScroll = main_scroll()
    public var sun = Sun()
    public var mercury = Mercury()
    public var venus = Venus()
    public var earth = Earth()
    public var mars = Mars()
    public var jupiter = Jupiter()
    public var saturn = Saturn()
    public var uranus = Uranus()
    public var neptune = Neptune()
    public var pluto = Pluto()
    
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
    
    func doubleTapped() {
        
        print("tap registered")
        
        if (mercury.layer.animationKeys() == nil) {
            
            mercury.orbit(view: mercury, center: mainSpace, radius: 65.0, time: 0.5, delay: 2.0)
            venus.orbit(view: venus, center: mainSpace, radius: 90.0, time: 1.0, delay: 2.0)
            earth.orbit(view: earth, center: mainSpace, radius: 115, time: 1.5, delay: 2.0)
            mars.orbit(view: mars, center: mainSpace, radius: 140, time: 2.0, delay: 2.0)
            jupiter.orbit(view: jupiter, center: mainSpace, radius: 190, time: 2.5, delay: 2.0)
            saturn.orbit(view: saturn, center: mainSpace, radius: 240, time: 3.0, delay: 2.0)
            uranus.orbit(view: uranus, center: mainSpace, radius: 270, time: 3.5, delay: 2.0)
            neptune.orbit(view: neptune, center: mainSpace, radius: 300, time: 4.0, delay: 2.0)
            pluto.orbit(view: pluto, center: mainSpace, radius: 325, time: 4.5, delay: 2.0)
        
        } else if (mercury.layer.animationKeys() != nil) {
        
            mainSpace.stop_orbit(view: mercury, center: mainSpace, radius: 65.0, duration: 0.5)
            mainSpace.stop_orbit(view: venus, center: mainSpace, radius: 90.0, duration: 1.0)
            mainSpace.stop_orbit(view: earth, center: mainSpace, radius: 115.0, duration: 1.5)
            mainSpace.stop_orbit(view: mars, center: mainSpace, radius: 140.0, duration: 2.0)
            mainSpace.stop_orbit(view: jupiter, center: mainSpace, radius: 190.0, duration: 2.5)
            mainSpace.stop_orbit(view: saturn, center: mainSpace, radius: 240.0, duration: 3.0)
            mainSpace.stop_orbit(view: uranus, center: mainSpace, radius: 270.0, duration: 3.5)
            mainSpace.stop_orbit(view: neptune, center: mainSpace, radius: 300.0, duration: 4.0)
            mainSpace.stop_orbit(view: pluto, center: mainSpace, radius: 325.0, duration: 4.5)
        
        }
        
        print("changed the orbit!")
    }
    
    open func addGesture() {
        
        print("gesture recognized")
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        tap.numberOfTapsRequired = 2
        
        self.addGestureRecognizer(tap)
    }
    
    public init() {
        
        super.init(frame:  CGRect(x: 0, y: 0, width: 1200, height: 900))
        
        self.addSubview(mainSpace)
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
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}