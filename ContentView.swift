//
//  ContentView.swift
//  Boxter
//
//  Created by vanya elizarov on 12/05/16.
//  Copyright © 2016 vanya elizarov. All rights reserved.
//

import UIKit

@IBDesignable public class ContentView: UIView {
    
    var view : UIView!
    
    @IBOutlet var textView: UITextView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var audioView: AudioView!


    
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
        print("\(view.frame)")
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth.union(UIViewAutoresizing.FlexibleHeight)
        addSubview(view)
    }
    
    private func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "ContentView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }

}



