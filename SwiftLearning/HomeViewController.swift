import UIKit

class HomeViewController: UIViewController {
    
    lazy var tapMeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Tap Me", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(handleTapButton), for: UIControl.Event.touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupButtonView()
    }
    
    func setupButtonView() {
        view.addSubview(tapMeButton)
        tapMeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tapMeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        tapMeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        tapMeButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    @objc func handleTapButton() {
        tapMeButton.setTitle("Don't Tap Me", for: UIControl.State.normal)
    }

}
