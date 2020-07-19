#import <UIKit/UIKit.h>
#import "UISlider+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "UIControl+RACSignalSupportPrivate.h"

@interface UISlider (RACSignalSupportBm)
+ (BOOL)rac_newValueChannelWithNilValueBm:(NSInteger)BM;

@end
