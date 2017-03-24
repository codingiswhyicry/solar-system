import Foundation
import UIKit

public class main_space: UIImageView {
    
    public init() {
        
        super.init(frame:  CGRect(x: 0, y: 0, width: 1200, height: 900))

        self.image = UIImage(named: "spaceBackground.jpg")
        self.contentMode =  UIViewContentMode.scaleAspectFill
        self.isUserInteractionEnabled = true
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

public class main_scroll: UIScrollView {

    public init() {
        
        super.init(frame:  CGRect(x: 0, y: 0, width: 1200, height: 900))
    
        self.maximumZoomScale = 5
        self.minimumZoomScale = 1
        self.bounces = false
        self.bouncesZoom = false
        self.isScrollEnabled = true
        self.isUserInteractionEnabled = true
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

public class Sun: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 450, y: 600, width: 75, height: 75))
        
        self.image = UIImage(named: "editedsun.png")
        self.contentMode =  UIViewContentMode.scaleAspectFill
        self.center.y = 450
        self.center.x = 600
        self.alpha = 0.0
        self.rotation(view: self)
        self.layer.shadowColor = UIColor.orange.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 15
        self.isUserInteractionEnabled = true

    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

public class Mercury: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 450 - 67, y: 600, width: 4.5, height: 4.5))
        
        self.image = UIImage(named: "mercury.png")
        self.contentMode =  UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class Venus: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 450 - 94, y: 600, width: 8.5, height: 8.5))
     
        self.image = UIImage(named: "venus.png")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

public class Earth: UIImageView {

    public init() {
    
        super.init(frame: CGRect(x: 450 - 124, y: 600, width: 17.5 , height: 17.5))
        
        self.image = UIImage(named: "moonAndEarth.png")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.rotation(view: self)
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

public class Mars: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 450 - 143, y: 600, width: 6, height: 6))
        
        self.image = UIImage(named: "mars.gif")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

public class Jupiter: UIImageView {

    public init() {
        
        super.init(frame: CGRect(x: 600 - 212, y: 450, width: 40, height: 40))
        
        self.image = UIImage(named: "finalJupDraft.png")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

public class Saturn: UIImageView {

    public init() {
        
        super.init(frame: CGRect(x: 600 - 256, y: 450, width: 35, height: 35))
        
        self.image = UIImage(named: "saturnDraftTop.png")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

public class Uranus: UIImageView {

    public init() {
        
        super.init(frame: CGRect(x: 600 - 275, y: 450, width: 10, height: 10))
        
        self.image = UIImage(named: "uranus.gif")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

public class Neptune: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 450, y: 600 - 306, width: 12.5, height: 12.5))
        
        self.image = UIImage(named: "neptune.gif")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}

public class Pluto: UIImageView {
    
    public init() {
        
        super.init(frame: CGRect(x: 450, y: 600 - 327, width: 5, height: 5  ))
        
        self.image = UIImage(named: "pluto.gif")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
