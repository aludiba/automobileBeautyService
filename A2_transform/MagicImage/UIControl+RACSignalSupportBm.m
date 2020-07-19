#import "UIControl+RACSignalSupportBm.h"
@implementation UIControl (RACSignalSupportBm)
+ (BOOL)rac_signalForControlEventsBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
