#import "UIControl+RACSignalSupportPrivateHb.h"
@implementation UIControl (RACSignalSupportPrivateHb)
+ (BOOL)rac_channelForControlEventsKeyNilvalueHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
