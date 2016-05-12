//
//  AudioView.swift
//  Boxter
//
//  Created by vanya elizarov on 12/05/16.
//  Copyright © 2016 vanya elizarov. All rights reserved.
//

import UIKit
import AVFoundation

@IBDesignable public class AudioView: UIView {
    
    var view : UIView!

    @IBOutlet var currentTimeLabel: UILabel!
    @IBOutlet var totalTimeLabel: UILabel!
    @IBOutlet var currentProgressView: UIProgressView!
    @IBOutlet var playPauseButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    private func xibSetup() {
        view = loadViewFromNib()
        
        view.frame = bounds
        
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth.union(UIViewAutoresizing.FlexibleHeight)
        print(view.frame)
        self.addSubview(view)
    }
    
    private func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "AudioView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }

}
