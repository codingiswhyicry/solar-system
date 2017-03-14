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
    
    open func create_circle(view: UIView, radius: Float) {
    
        let myPath = UIBezierPath(arcCenter: view.center , radius: CGFloat(radius), startAngle: 0, endAngle:  CGFloat(2 * M_PI), clockwise: true).cgPath.self
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = myPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.white.cgColor //UIColor(red:0.73, green:0.74, blue:0.76, alpha:1.0).cgColor
        shapeLayer.lineWidth = 0.2
        view.layer.insertSublayer(shapeLayer, at: 0) 
    }
    
    open func animate_circle(view: UIView, radius: Float){
    
        var expandAnimation: CABasicAnimation = CABasicAnimation(keyPath: "path")
        expandAnimation.fromValue = ovalPathSmall.CGPath
        expandAnimation.toValue = ovalPathLarge.CGPath
        expandAnimation.duration = animationDuration
        expandAnimation.fillMode = kCAFillModeForwards
        expandAnimation.isRemovedOnCompletion = false
        view.layer.add(expandAnimation, forKey: "expanding")
    }
    
    open func animate_planets(sun: UIImageView, mercury: UIImageView, venus: UIImageView, earth: UIImageView, mars: UIImageView, jupiter: UIImageView, saturn: UIImageView, uranus: UIImageView, neptune: UIImageView, pluto: UIImageView) {
        
        UIView.animate(withDuration: 1.0, animations: {
            
            sun.alpha = 1.0
            
        }, completion: {finished in
            
            UIView.animate(withDuration: 1.0, animations: {
                
                mercury.alpha = 1.0
                
            }, completion: {finished in
                
                UIView.animate(withDuration: 1.0, animations: {
                    
                    venus.alpha = 1.0
                    
                }, completion: {finished in
                    
                    UIView.animate(withDuration: 1.0, animations: {
                        
                        earth.alpha = 1.0
                        
                    }, completion: {finished in
                        
                        UIView.animate(withDuration: 1.0, animations: {
                            
                            mars.alpha = 1.0
                            
                        }, completion: {finished in
                            
                            UIView.animate(withDuration: 1.0, animations: {
                                
                                jupiter.alpha = 1.0
                                
                            }, completion: {finished in
                                
                                UIView.animate(withDuration: 1.0, animations: {
                                    
                                    saturn.alpha = 1.0
                                    
                                }, completion: {finished in
                                    
                                    UIView.animate(withDuration: 1.0, animations: {
                                        
                                        uranus.alpha = 1.0
                                        
                                    }, completion: {finished in
                                        
                                        UIView.animate(withDuration: 1.0, animations: {
                                            
                                            neptune.alpha = 1.0
                                            
                                        }, completion: {finished in
                                            
                                            UIView.animate(withDuration: 1.0, animations: {
                                                
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
        }) // end of sun animation
        
    }
}
