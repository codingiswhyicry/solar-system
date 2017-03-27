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
    
        view.layer.removeAllAnimations()
    }
    
    //  CGFloat(M_PI_2) , CGFloat(2*M_PI + M_PI_2)
    
    open func orbit(view: UIImageView, center: UIView, radius: Float, time: Float, delay: Double) {
        let myPath = UIBezierPath(arcCenter: center.center , radius: CGFloat(radius), startAngle: CGFloat(M_PI_2), endAngle: CGFloat(M_PI_2 + M_PI*2), clockwise: true).cgPath.self
        
        let orbit = CAKeyframeAnimation(keyPath: "position")
        orbit.path = myPath
        orbit.beginTime = CACurrentMediaTime() + delay
        orbit.rotationMode = kCAAnimationRotateAuto
        orbit.fillMode = kCAFillModeForwards
        orbit.repeatCount = Float.infinity
        orbit.speed = time
        orbit.isRemovedOnCompletion = false
        view.layer.add(orbit, forKey: "orbit")
        view.layoutIfNeeded()
        view.layer.setNeedsLayout()
        
    }
    
    open func stop_orbit(view: UIImageView, center: UIView, radius: Float, time: Float) {

        let speedAnimation = CABasicAnimation()
        speedAnimation.fromValue = view.layer.speed = time
        speedAnimation.toValue = view.layer.speed = 0.0
        speedAnimation.duration = 2.0
        view.layer.add(speedAnimation, forKey: "stop")
        
    }
    
    open func create_circle(view: UIView, radius: Float, time: Double, delay: Double) {
    
        let myPath = UIBezierPath(arcCenter: view.center , radius: CGFloat(radius), startAngle: 0, endAngle:  CGFloat(2 * M_PI), clockwise: true).cgPath.self
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = myPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.white.cgColor //UIColor(red:0.73, green:0.74, blue:0.76, alpha:1.0).cgColor
        shapeLayer.lineWidth = 0.2
        shapeLayer.opacity = 0.0
        view.layer.insertSublayer(shapeLayer, at: 0)
        
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "opacity")
        animation.beginTime = CACurrentMediaTime() + delay
        animation.fromValue = 0
        animation.toValue = 1
        animation.fillMode = kCAFillModeForwards
        animation.duration = CFTimeInterval(time)
        animation.isRemovedOnCompletion = false
        shapeLayer.add(animation, forKey: nil)
        
    }

    
    open func animate_planets(sun: UIImageView, mercury: UIImageView, venus: UIImageView, earth: UIImageView, mars: UIImageView, jupiter: UIImageView, saturn: UIImageView, uranus: UIImageView, neptune: UIImageView, pluto: UIImageView) {
        
        UIView.animate(withDuration: 0.5, delay: 3, options: UIViewAnimationOptions.curveEaseIn, animations: {
            
            sun.alpha = 1.0
            
        }, completion: {finished in
            
            UIView.animate(withDuration: 0.5, animations: {
                
                mercury.alpha = 1.0
                
            }, completion: {finished in
                
                UIView.animate(withDuration: 0.5, animations: {
                    
                    venus.alpha = 1.0
                    
                }, completion: {finished in
                    
                    UIView.animate(withDuration: 0.5, animations: {
                        
                        earth.alpha = 1.0
                        
                    }, completion: {finished in
                        
                        UIView.animate(withDuration: 0.5, animations: {
                            
                            mars.alpha = 1.0
                            
                        }, completion: {finished in
                            
                            UIView.animate(withDuration: 0.5, animations: {
                                
                                jupiter.alpha = 1.0
                                
                            }, completion: {finished in
                                
                                UIView.animate(withDuration: 0.5, animations: {
                                    
                                    saturn.alpha = 1.0
                                    
                                }, completion: {finished in
                                    
                                    UIView.animate(withDuration: 0.5, animations: {
                                        
                                        uranus.alpha = 1.0
                                        
                                    }, completion: {finished in
                                        
                                        UIView.animate(withDuration: 0.5, animations: {
                                            
                                            neptune.alpha = 1.0
                                            
                                        }, completion: {finished in
                                            
                                            UIView.animate(withDuration: 0.5, animations: {
                                                
                                                pluto.alpha = 1.0
                                                
                                            }, completion: nil) // end of pluto animation
                                        }) // end of neptune animation
                                    }) // end of uranus animation
                                }) // end of saturn animation
                            }) // end of jupiter animation
                        }) // end of mars animation
                    }) // end of earth animation
                }) //end of venus animation
            }) // end of mercury animation
        })
   }
}

extension UIScrollView {

    open func create_circle(view: UIView, radius: Float, time: Double, delay: Double) {
        
        let myPath = UIBezierPath(arcCenter: view.center , radius: CGFloat(radius), startAngle: 0, endAngle:  CGFloat(2 * M_PI), clockwise: true).cgPath.self
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = myPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.white.cgColor //UIColor(red:0.73, green:0.74, blue:0.76, alpha:1.0).cgColor
        shapeLayer.lineWidth = 0.2
        shapeLayer.opacity = 0.0
        view.layer.insertSublayer(shapeLayer, at: 0)
        
        let animation : CABasicAnimation = CABasicAnimation(keyPath: "opacity");
        animation.beginTime = CACurrentMediaTime() + delay
        animation.fromValue = 0
        animation.toValue = 1
        animation.fillMode = kCAFillModeForwards
        animation.duration = CFTimeInterval(time)
        animation.isRemovedOnCompletion = false
        shapeLayer.add(animation, forKey: nil)
        
    }

}
