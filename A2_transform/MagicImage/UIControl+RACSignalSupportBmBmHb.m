#import "UIControl+RACSignalSupportBmBmHb.h"
@implementation UIControl (RACSignalSupportBmBmHb)
+ (BOOL)rac_signalForControlEventsBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
