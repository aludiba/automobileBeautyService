#import <UIKit/UIKit.h>
#import "UIDatePicker+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "UIControl+RACSignalSupportPrivate.h"

@interface UIDatePicker (RACSignalSupportHb)
+ (BOOL)rac_newDateChannelWithNilValueHb:(NSInteger)hb;

@end
