//
//  Created by Jake Lin on 2/28/16.
//  Copyright © 2016 IBAnimatable. All rights reserved.
//

import UIKit

public class PresentFadeSegue: UIStoryboardSegue {
  public override func perform() {
    destination.transitioningDelegate = PresenterManager.sharedManager().retrievePresenter(.fade(direction: .cross))
    source.present(destination, animated: true, completion: nil)
  }
}
