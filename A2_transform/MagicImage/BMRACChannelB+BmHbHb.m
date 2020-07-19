#import "BMRACChannelB+BmHbHb.h"
@implementation BMRACChannelB (BmHbHb)
+ (BOOL)pinitBmHbHb:(NSInteger)hb {
    return hb % 33 == 0;
}

@end
