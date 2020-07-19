#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MKAnnotationView+RACSignalSupport.h"
#import "NSObject+RACDescription.h"
#import "NSObject+RACSelectorSignal.h"
#import "RACSignal+Operations.h"
#import "RACUnit.h"
#import <objc/runtime.h>

@interface MKAnnotationView (RACSignalSupportHb)
+ (BOOL)rac_prepareForReuseSignalHb:(NSInteger)hb;

@end
