//
//  SNSwipeGestureRecognizer.swift
//  Sensitive
//
//  Created by Igor Matyushkin on 04.01.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

open class SNSwipeGestureRecognizer: UISwipeGestureRecognizer {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init(handlerBlock: @escaping SNSwipeGestureRecognizerHandlerBlock) {
        // Create handler
        
        let handler = SNSwipeGestureRecognizerHandler(handlerBlock: handlerBlock)
        
        
        // Call super init
        
        super.init(target: handler, action: #selector(SNSwipeGestureRecognizerHandler.runHandlerBlock))
        
        
        // Update handler
        
        handler.swipeGestureRecognizer = self
        
        
        // Initialize private handler variable
        
        _handler = handler
    }
    
    
    // MARK: Deinitializer
    
    deinit {
        // Remove references
        
        _handler = nil
    }
    
    
    // MARK: Variables & properties
    
    fileprivate var _handler: SNSwipeGestureRecognizerHandler!
    
    fileprivate var handler: SNSwipeGestureRecognizerHandler {
        get {
            return _handler
        }
    }
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
