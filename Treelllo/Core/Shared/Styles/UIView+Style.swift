
import UIKit

func rounded<V: UIView>(radius: CGFloat) -> (V) -> Void {
   {
     $0.layer.cornerRadius = radius
     $0.clipsToBounds = true
   }
 }
 
func withShadow(withRadius radius: CGFloat,
                       offset: CGSize,
                       opacity: Float
 ) -> (UIView) -> Void {
   {
     $0.layer.shadowOffset = offset
     $0.layer.shadowRadius = radius
     $0.layer.shadowOpacity = opacity
   }
 }

let clipped: (UIView) -> Void = {
  $0.clipsToBounds = true
}
