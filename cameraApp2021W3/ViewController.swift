//
//  ViewController.swift
//  cameraApp2021W3
//
//  Created by Matthew Wecht on 7/20/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var displayImage: UIImageView!
    var imagePicker = UIImagePickerController()//create an instance of the class UIImagePickerController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
    }

    @IBAction func takeSelfieTapped(_ sender: Any) {
        imagePicker.sourceType = .camera//we are changing the imagePicker to be the camera
        present(imagePicker, animated: true, completion: nil)//this launches the imagePicker


    }
    
    @IBAction func photoLibraryTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

       if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
    displayImage.image = selectedImage
       } //Line A
            
                imagePicker.dismiss(animated: true, completion: nil)  //Line B
    }

    }
