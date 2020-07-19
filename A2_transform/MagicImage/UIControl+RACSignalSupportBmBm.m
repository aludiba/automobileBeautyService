#import "UIControl+RACSignalSupportBmBm.h"
@implementation UIControl (RACSignalSupportBmBm)
+ (BOOL)rac_signalForControlEventsBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
