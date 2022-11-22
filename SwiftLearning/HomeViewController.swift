import UIKit

class HomeViewController: UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        setupButtonUI()
    }
    
    func setupButtonUI() {
        // Changing the Attributes of the button
        button.setTitle("Tap Me", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(handleTapButton), for: UIControl.Event.touchUpInside)
        
        view.addSubview(button)
        
//        button. frame = CGRect(x: 100, y: 400, width: 200, height: 50)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    @objc func handleTapButton() {
        button.setTitle("Don't Tap Me", for: UIControl.State.normal)

    }

}
