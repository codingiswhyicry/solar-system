import Foundation
import UIKit

extension UIImageView {

    open func rotation(view: UIImageView) {
        let spin_animate = CABasicAnimation(keyPath: "transform.rotation")
        spin_animate.duration = 1
        spin_animate.repeatCount = Float.infinity
        spin_animate.fromValue = 0.0
        spin_animate.toValue = Float(M_PI * 2.0)
        view.layer.add(spin_animate, forKey: "animationSpin")
    }
    
    open func stopRotation(view: UIImageView) {
    
        view.layer.removeAnimation(forKey: "animationSpin")
    }
    
    open func orbit(view: UIImageView, center: UIView, radius: Float, time: Float) {
        let myPath = UIBezierPath(arcCenter: center.center , radius: CGFloat(radius), startAngle: 0, endAngle:  CGFloat(2 * M_PI), clockwise: true).cgPath.self
        
        let orbit = CAKeyframeAnimation(keyPath: "position")
        orbit.path = myPath
        orbit.rotationMode = kCAAnimationRotateAuto
        orbit.repeatCount = Float.infinity
        orbit.duration = CFTimeInterval(time)
        
        view.layer.add(orbit, forKey: "orbit")
    }
    
    open func stop_orbit(view: UIImageView) {
    
        view.layer.removeAnimation(forKey: "orbit")
    }
    
}
