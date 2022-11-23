import UIKit

class HomeViewController: UIViewController {
    
    lazy var tapMeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Tap Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(HomeViewController.self, action: #selector(changeLabelToCodingIsFun), for: .touchUpInside)
        return button
    }()
       
    @objc func changeLabelToCodingIsFun() {
        codingIsFunLabel.text = "Coding is Fun."
    }
    
    lazy var codingIsFunLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.backgroundColor = .systemGreen
        label.text = "I am a label"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var profilePictureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "african_woman")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 75.0
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(profilePictureImageView)
        view.addSubview(codingIsFunLabel)
        view.addSubview(tapMeButton)
        
        profilePictureImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        profilePictureImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profilePictureImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        profilePictureImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        codingIsFunLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor,
                                                  constant: 0).isActive = true
        codingIsFunLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        codingIsFunLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        codingIsFunLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        codingIsFunLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
        
        tapMeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tapMeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                                            constant: -50).isActive = true // safeAreaLayoutGuide //
        tapMeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tapMeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    
    }
}
