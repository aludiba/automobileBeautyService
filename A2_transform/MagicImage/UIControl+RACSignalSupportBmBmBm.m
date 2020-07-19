#import "UIControl+RACSignalSupportBmBmBm.h"
@implementation UIControl (RACSignalSupportBmBmBm)
+ (BOOL)rac_signalForControlEventsBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
