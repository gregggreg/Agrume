//
//  Copyright © 2018 Schnaub. All rights reserved.
//

import UIKit

extension CGFloat {
#if targetEnvironment(macCatalyst)
  static let initialScaleToExpandFrom: CGFloat = 1.0
#else
  static let initialScaleToExpandFrom: CGFloat = 0.6
#endif
  static let maxScaleForExpandingOffscreen: CGFloat = 1.25
  static let targetZoomForDoubleTap: CGFloat = 3
  static let minFlickDismissalVelocity: CGFloat = 800
  static let highScrollVelocity: CGFloat = 1_600
}

extension CGSize {
  static func * (size: CGSize, scale: CGFloat) -> CGSize {
    size.applying(CGAffineTransform(scaleX: scale, y: scale))
  }
}

extension UIView {

  func usesAutoLayout(_ useAutoLayout: Bool) {
    translatesAutoresizingMaskIntoConstraints = !useAutoLayout
  }
  
  var portableSafeTopInset: NSLayoutYAxisAnchor {
		return safeAreaLayoutGuide.topAnchor
  }

}

extension UIColor {
  var isLight: Bool {
    var white: CGFloat = 0
    getWhite(&white, alpha: nil)
    return white > 0.5
  }
}

extension UICollectionView {

  func register<T: UICollectionViewCell>(_ cell: T.Type) {
    register(cell, forCellWithReuseIdentifier: String(describing: cell))
  }
  
  func dequeue<T: UICollectionViewCell>(indexPath: IndexPath) -> T {
    let id = String(describing: T.self)
    return dequeue(id: id, indexPath: indexPath)
  }
  
  func dequeue<T: UICollectionViewCell>(id: String, indexPath: IndexPath) -> T {
    dequeueReusableCell(withReuseIdentifier: id, for: indexPath) as! T
  }

}
