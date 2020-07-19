#import "UIControl+RACSignalSupportPrivateBmBm.h"
@implementation UIControl (RACSignalSupportPrivateBmBm)
+ (BOOL)rac_channelForControlEventsKeyNilvalueBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
