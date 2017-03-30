import Foundation
import UIKit

extension UIView {
    
    func rotate(time: Float) {
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: M_PI * 2)
        rotation.duration = CFTimeInterval(time)
        rotation.isCumulative = true
        rotation.repeatCount = Float.infinity
        self.layer.add(rotation, forKey: "rotationAnimation")
    }
    
}


public class star_one: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 300, y: 1500, width: 900, height: 900))
        
        self.center.y = 450
        self.center.x = 600
        self.image = UIImage(named: "snazzyStars.png")
        self.alpha = 0.0
        self.layoutIfNeeded()
       self.rotate(time: 200)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class star_two: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 300, y: 1500, width: 1200, height: 1200))
        
        self.center.y = 450
        self.center.x = 600
        self.image = UIImage(named: "finalconstel.png")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.alpha = 0.0
        self.layoutIfNeeded()
        self.rotate(time: 100)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

public class star_three: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 300, y: 1500, width: 1000, height: 1000))
        
        self.center.y = 450
        self.center.x = 600
        self.image = UIImage(named: "snazzyStars.png")
        self.alpha = 0.0
        self.layoutIfNeeded()
        self.rotate(time: 80)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class star_four:  UIImageView {
    public init() {
        
        super.init(frame: CGRect(x: 800, y: 800, width: 1000, height: 1000))
        
        self.center.y = 450
        self.center.x = 600
        self.image = UIImage(named: "snazzyStars.png")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.alpha = 0.0
        self.layoutIfNeeded()
        self.rotate(time: 160)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
