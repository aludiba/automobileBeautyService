#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@class RACSignal<__covariant ValueType>;
@class RACUnit;
NS_ASSUME_NONNULL_BEGIN
@interface MKAnnotationView (RACSignalSupport)
@property (nonatomic, strong, readonly) RACSignal<RACUnit *> *rac_prepareForReuseSignal;
@end
NS_ASSUME_NONNULL_END
