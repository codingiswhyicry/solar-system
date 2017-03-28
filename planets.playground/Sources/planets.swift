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
    //public var stars = starry_sky()
    
    public func startLaunch() {
        
        mainSpace.animate_planets(sun: sun, mercury: mercury, venus: venus, earth: earth, mars: mars, jupiter: jupiter, saturn: saturn, uranus: uranus, neptune: neptune, pluto: pluto)
        
        mainScroll.create_circle(view: mainSpace, radius: 65.0, time: 0.5, delay: 9.0)
        
        mainScroll.create_circle(view: mainSpace, radius: 90.0, time: 0.5, delay: 9.2)
        
        mainScroll.create_circle(view: mainSpace, radius: 115.0, time: 0.5, delay: 9.4)
        
        mainScroll.create_circle(view: mainSpace, radius: 140.0, time: 0.5, delay: 9.6)
        
        mainScroll.create_circle(view: mainSpace, radius: 190.0, time: 0.5, delay: 9.8)
        
        mainScroll.create_circle(view: mainSpace, radius: 250.0, time: 0.5, delay: 10.0)
        
        mainScroll.create_circle(view: mainSpace, radius: 300.0, time: 0.5, delay: 10.2)
        
        mainScroll.create_circle(view: mainSpace, radius: 340.0, time: 0.5, delay: 10.4)
        
        mainScroll.create_circle(view: mainSpace, radius: 400.0, time: 0.5, delay: 10.6)
    
        mercury.orbit(view: mercury, center: mainSpace, radius: 65.0, time: 0.27, delay: 13.0)
        venus.orbit(view: venus, center: mainSpace, radius: 90.0, time: 0.24, delay: 13.0)
        earth.orbit(view: earth, center: mainSpace, radius: 115, time: 0.21, delay: 13.0)
        mars.orbit(view: mars, center: mainSpace, radius: 140, time: 0.18, delay: 13.0)
        jupiter.orbit(view: jupiter, center: mainSpace, radius: 190, time: 0.15, delay: 13.0)
        saturn.orbit(view: saturn, center: mainSpace, radius: 250, time: 0.12, delay: 13.0)
        uranus.orbit(view: uranus, center: mainSpace, radius: 300, time: 0.09, delay: 13.0)
        neptune.orbit(view: neptune, center: mainSpace, radius: 340, time: 0.06, delay: 13.0)
        pluto.orbit(view: pluto, center: mainSpace, radius: 400, time: 0.03, delay: 13.0)
        
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
      //  mainScroll.insertSubview(stars, at: 0)
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
