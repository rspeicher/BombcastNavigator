import Foundation

class JSONSampleData {
    class func JSON() -> AnyObject? {
        let path = NSBundle(forClass: self).pathForResource("sampledata", ofType: "json")

        if path != nil {
            let data = NSData(contentsOfFile: path!)
            return NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions(0), error: nil)
        }

        return .None
    }
}