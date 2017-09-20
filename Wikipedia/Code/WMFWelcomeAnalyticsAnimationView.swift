import Foundation

open class WMFWelcomeAnalyticsAnimationView : WMFWelcomeAnimationView {

    lazy var phoneImgView: UIImageView = {
        let imgView = UIImageView(frame: bounds)
        imgView.image = UIImage(named: "ftux-analytics-phone")
        imgView.contentMode = UIViewContentMode.scaleAspectFit
        imgView.layer.zPosition = 101
        imgView.layer.opacity = 0
        imgView.layer.transform = wmf_lowerTransform
        return imgView
    }()
    
    lazy var chartImgView: UIImageView = {
        let imgView = UIImageView(frame: bounds)
        imgView.image = UIImage(named: "ftux-analytics-chart")
        imgView.contentMode = UIViewContentMode.scaleAspectFit
        imgView.layer.zPosition = 102
        imgView.layer.opacity = 0
        imgView.layer.transform = wmf_scaleZeroAndLowerRightTransform
        return imgView
    }()
    
    override open func addAnimationElementsScaledToCurrentFrameSize(){
        super.addAnimationElementsScaledToCurrentFrameSize()
        removeExistingSubviewsAndSublayers()
        addSubview(phoneImgView)
        addSubview(chartImgView)
    }
    
    override open func beginAnimations() {
        super.beginAnimations()
        CATransaction.begin()
        
        phoneImgView.layer.wmf_animateToOpacity(1.0,
                                                     transform: CATransform3DIdentity,
                                                     delay: 0.1,
                                                     duration: 1.0
        )
        
        chartImgView.layer.wmf_animateToOpacity(1.0,
                                                      transform: CATransform3DIdentity,
                                                      delay: 0.3,
                                                      duration: 1.0
        )
                
        CATransaction.commit()
    }
}
