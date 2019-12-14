//
//  UITableView+indexPathForView.swift
//  TableViewExtension
//
//  Created by Duncan Champney on 12/23/16.
//  Copyright © 2016-2017 Duncan Champney.
//  May be used freely in for any purpose as long as this
//  copyright notice is included.

import UIKit

public extension UITableView {

  /**
  This method returns the indexPath of the cell that contains the specified view

   - Parameter view: The view to find.

   - Returns: The indexPath of the cell containing the view, or nil if it can't be found

  */

    func indexPathForView(_ view: UIView) -> IndexPath? {
        let center = view.center
        let viewCenter = self.convert(center, from: view.superview)
        let indexPath = self.indexPathForRow(at: viewCenter)
        return indexPath
    }
}
