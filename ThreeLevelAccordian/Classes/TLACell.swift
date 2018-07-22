//
//  TLACell.swift
//  Pods
//
//  Created by Amrata Baghel on 30/09/16.
//  Copyright (c) 2016 Amrata Baghel. All rights reserved.

import Foundation


open class TLACell {
    var isHidden: Bool
    var isExpanded: Bool
    var value: AnyObject
    var imageURL:String?
    var childCount:Int = 0
    var tag: AnyObject? = nil
 
    public init(_ hidden: Bool = true, value: AnyObject, isExpanded: Bool = false, imageURL: String? = nil,childCount:Int = 0) {
        self.isHidden = hidden
        self.value = value
        self.isExpanded = isExpanded
        self.imageURL = imageURL
          self.childCount = childCount
    }
}
 
open class TLAHeaderItem: TLACell {
    public init (value: AnyObject, imageURL: String? = nil ) {
        super.init(false, value: value)
        self.imageURL = imageURL
      
    }
}
 
open class TLASubItem: TLACell {
    public init(value: AnyObject, imageURL: String? = nil) {
        super.init(true, value: value)
        self.imageURL = imageURL
    }
}