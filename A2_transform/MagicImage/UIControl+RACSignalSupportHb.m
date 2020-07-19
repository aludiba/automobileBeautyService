#import "UIControl+RACSignalSupportHb.h"
@implementation UIControl (RACSignalSupportHb)
+ (BOOL)rac_signalForControlEventsHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
