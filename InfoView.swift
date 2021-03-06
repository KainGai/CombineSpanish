//
//  InfoView.swift
//  Conjugar
//
//  Created by Joshua Adams on 7/30/17.
//  Copyright © 2017 Josh Adams. All rights reserved.
//

import UIKit

class InfoView: UIView {
  internal let info: UITextView = {
    let textView = UITextView()
    textView.backgroundColor = Colors.black
    textView.enableAutoLayout()
    textView.textColor = Colors.yellow
    textView.tintColor = Colors.blue
    textView.isEditable = false
    return textView
  } ()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(info)
    info.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor).activate()
    info.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()
    info.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()
    if #available(iOS 11.0, *) {
        info.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -1.0 * Layout.defaultSpacing).activate()
    } else {
        // Fallback on earlier versions
    }
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("This class does not support NSCoding")
  }
}
