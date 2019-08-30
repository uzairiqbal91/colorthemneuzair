import UIKit
@IBDesignable
class ColorView: UIView {
    
    
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    var timer = 2.0
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setup()
        // The Main Stuff
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
        // You don't need to implement this
    }
    
    func setup()
    {
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: timer, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor  //3
                self.colorCounter+=1  //4
            }
        }
        
        scheduledColorChanged.fire()
        
    }
    
    @IBInspectable
    public var cornerRadius: CGFloat = 2.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }
    
    @IBInspectable
    public var spped: CGFloat = 2.0 {
        didSet {
            
            self.timer = Double(self.spped)
            setup()
        }
    }
    
    
    
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
