import UIKit

class VehicleTableViewCell: UITableViewCell {

    @IBOutlet weak var vehicleType: UILabel!
    @IBOutlet weak var plate: UILabel!
    @IBOutlet weak var make: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var seats: UILabel!
    @IBOutlet weak var brandLbl: UILabel!
    @IBOutlet weak var seatsLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
