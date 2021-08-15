import Foundation
import MondrianLayout
import Rideau
import UIKit

final class DemoInlineViewController: UIViewController {

  private let rideauView: RideauView

  init(
    snapPoints: Set<RideauSnapPoint>,
    resizingOption: RideauContentContainerView.ResizingOption,
    contentView: UIView
  ) {

    self.rideauView = RideauView(frame: .zero) { (config) in
      config.snapPoints = snapPoints
    }

    super.init(nibName: nil, bundle: nil)

    view.backgroundColor = .white

    view.mondrian.buildSubviews {
      ZStackBlock {
        rideauView
      }
    }

    rideauView.containerView.set(
      bodyView: contentView,
      resizingOption: resizingOption
    )

  }

  required init?(
    coder: NSCoder
  ) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

  }

}