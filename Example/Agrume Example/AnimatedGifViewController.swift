//
//  Copyright © 2018 Schnaub. All rights reserved.
//

import Agrume
import UIKit

final class AnimatedGifViewController: UIViewController {

  @IBAction private func openImage(_ sender: Any?) {
		if let image = UIImage(named: "animated.gif") {
			let agrume = Agrume(image: image, background: .blurred(.regular))
			agrume.show(from: self)
		}
  }
  
}
