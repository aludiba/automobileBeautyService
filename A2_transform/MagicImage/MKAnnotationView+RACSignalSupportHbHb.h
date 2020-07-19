#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MKAnnotationView+RACSignalSupport.h"
#import "NSObject+RACDescription.h"
#import "NSObject+RACSelectorSignal.h"
#import "RACSignal+Operations.h"
#import "RACUnit.h"
#import <objc/runtime.h>
#import "MKAnnotationView+RACSignalSupportHb.h"

@interface MKAnnotationView (RACSignalSupportHbHb)
+ (BOOL)rac_prepareForReuseSignalHbHb:(NSInteger)hb;

@end
