import UIKit

class VerbSelectionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate{
    @IBOutlet weak var btnStudy: UIButton!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var pickviewVerbSelect: UIPickerView!
    @IBOutlet weak var lblWelcomeBanner: UILabel!
    @IBOutlet weak var pickviewConju: UIPickerView!
    @IBOutlet weak var pickviewTense: UIPickerView!
    
    //public var userLoggedin : String?
    public var verbSelected : String?
    public var conjuSelected : String?
    public var tenseSelected : String?
    var pickerData : [String] = ["Etre","Avoir"]
    var pickerDataTense : [String] = ["Indicatif present"]
    //var pickerDataConju : [String] = ["present","passeCompose"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickviewVerbSelect.delegate = self
        self.pickviewVerbSelect.dataSource = self

//        self.pickviewConju.delegate = self
//        self.pickviewConju.dataSource = self
        
        self.pickviewTense.delegate = self
        self.pickviewTense.dataSource = self
        
        verbSelected = pickerData[0]
        conjuSelected = "indicatif"
        tenseSelected = pickerDataTense[0]
        //userLoggedin = "Test"
        lblWelcomeBanner.text = "Welcome " + Context.loggedUserName!
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //row in each pickerview
        if pickerView == pickviewVerbSelect{
            //Verb
            return pickerData.count
        }
//        else if pickerView == pickviewConju{
//            //Conju
//            return pickerDataConju.count
//        }
        else if pickerView == pickviewTense{
            //Tense
            return pickerDataTense.count
        }
        
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pickviewVerbSelect{
            //Verb
            return pickerData[row]
        }
//        else if pickerView == pickviewConju{
//            //Conju
//            return pickerDataConju[row]
//        }
        else if pickerView == pickviewTense{
            //Tense
            return pickerDataTense[row]
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickviewVerbSelect{
            //Verb
            verbSelected = pickerData[row]
        }
//        else if pickerView == pickviewConju{
//            //Conju
//            conjuSelected = pickerDataConju[row]
//        }
        else if pickerView == pickviewTense{
            //Tense
            tenseSelected = pickerDataTense[row]
        }
    }
    
    
    
    
    @IBAction func btnStudy(_ sender: Any) {
        
        performSegue(withIdentifier: Segue.toStudyViewController, sender: self)
    }
    
    
    @IBAction func btnPlay(_ sender: Any) {
        FrenchVerbAPI.getVerb(verb: verbSelected!) { verb in
            DispatchQueue.main.async {
                Context.fetchedVerb = verb
                self.performSegue(withIdentifier: Segue.toGameViewController, sender: self)
            }
            
        } failHandler: { httpStatusCode, errorMessage in
            print("Error code \(httpStatusCode) - \(errorMessage)")
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Segue.toGameViewController{
            let gameViewController = segue.destination as! GameViewController
            
            gameViewController.tenseSelected = tenseSelected
        }
        
        if segue.identifier == Segue.toStudyViewController{
            let studyViewController = segue.destination as! StudyViewController

        }
        
    }
    
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        
    }
}
