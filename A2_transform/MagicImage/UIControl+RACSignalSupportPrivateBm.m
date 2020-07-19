#import "UIControl+RACSignalSupportPrivateBm.h"
@implementation UIControl (RACSignalSupportPrivateBm)
+ (BOOL)rac_channelForControlEventsKeyNilvalueBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
