//
//  ScreenEdgePanGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

public class ScreenEdgePanGestureRecognizer: UIScreenEdgePanGestureRecognizer {
    
    // MARK: Class variables & properties
    
    // MARK: Class methods
    
    // MARK: Initializers
    
    public init(handlerBlock: @escaping GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>) {
        super.init(target: nil, action: nil)
        
        // Add target
        
        addTarget(self, action: #selector(TapGestureRecognizer.runHandlerBlock))
        
        // Initialize handler block
        
        _handlerBlock = handlerBlock
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Variables & properties
    
    fileprivate var _handlerBlock: GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer>!
    
    fileprivate var handlerBlock: GestureRecognizerHandlerBlock<UIScreenEdgePanGestureRecognizer> {
        get {
            return _handlerBlock
        }
    }
    
    // MARK: Public methods
    
    // MARK: Private methods
    
    internal func runHandlerBlock() {
        _handlerBlock?(self)
    }
    
    // MARK: Protocol methods
    
}
