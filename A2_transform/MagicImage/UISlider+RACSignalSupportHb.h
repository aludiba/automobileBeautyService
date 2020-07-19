#import <UIKit/UIKit.h>
#import "UISlider+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "UIControl+RACSignalSupportPrivate.h"

@interface UISlider (RACSignalSupportHb)
+ (BOOL)rac_newValueChannelWithNilValueHb:(NSInteger)hb;

@end
