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
        
        super.init(frame: CGRect(x: 450, y: 600 - 67, width: 4.5, height: 4.5))
        
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
        
        super.init(frame: CGRect(x: 450, y: 600 - 94, width: 8.5, height: 8.5))
     
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
    
        super.init(frame: CGRect(x: 450, y: 600 - 94, width: 8.5, height: 8.5))
        
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
        
        super.init(frame: CGRect(x: 450, y: 600 - 94, width: 8.5, height: 8.5))
        
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
        
        super.init(frame: CGRect(x: 450, y: 600 - 94, width: 8.5, height: 8.5))
        
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
        
        super.init(frame: CGRect(x: 450, y: 600 - 94, width: 8.5, height: 8.5))
        
        self.image = UIImage(named: "selfDraftTop.png")
        self.contentMode = UIViewContentMode.scaleAspectFill
        self.center.x = 600
        self.alpha = 0.0
        self.layoutIfNeeded()
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 1.0
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 30
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

public class Uranus: UIImageView {

    public init() {
        
        super.init(frame: CGRect(x: 450, y: 600 - 94, width: 8.5, height: 8.5))
        
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
        
        super.init(frame: CGRect(x: 450, y: 600 - 94, width: 8.5, height: 8.5))
        
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
        
        super.init(frame: CGRect(x: 450, y: 600 - 94, width: 8.5, height: 8.5))
        
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
