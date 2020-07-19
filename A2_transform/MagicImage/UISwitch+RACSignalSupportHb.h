#import <UIKit/UIKit.h>
#import "UISwitch+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "UIControl+RACSignalSupportPrivate.h"

@interface UISwitch (RACSignalSupportHb)
+ (BOOL)rac_newOnChannelHb:(NSInteger)hb;

@end
