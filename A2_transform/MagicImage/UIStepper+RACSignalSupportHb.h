#import <UIKit/UIKit.h>
#import "UIStepper+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "UIControl+RACSignalSupportPrivate.h"

@interface UIStepper (RACSignalSupportHb)
+ (BOOL)rac_newValueChannelWithNilValueHb:(NSInteger)hb;

@end
