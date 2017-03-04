//
//  YNDropDownView.swift
//  YNDropDownMenu
//
//  Created by YiSeungyoun on 2017. 2. 27..
//
//

import Foundation

open class YNDropDownView: UIView {
    open weak var delegate: YNDropDownDelegate?
    
    open func dropDownViewOpened() { }
    open func dropDownViewClosed() { }
    
    /// hide menu self
    open func hideMenu() {
        self.delegate?.hideMenu()
    }
    
    /**
     Change menu title you called. you can call it in YNDropDownMenu or YNDropDownView
     
     - Parameter title: String
     - Parameter index: Index should be smaller than your menu counts
     */
    open func changeMenu(title: String, at index: Int) {
        self.delegate?.changeMenu(title: title, at: index)
    }
    
    /**
     Change view you called. you can call it in YNDropDownMenu or YNDropDownView
     
     - Parameter view: View you want to change
     - Parameter index: Index should be smaller than your menu counts
     */
    open func changeView(view: UIView, at index: Int) {
        self.delegate?.changeView(view: view, at: index)
    }
}
