#import "BMRACChannelB+BmHb.h"
@implementation BMRACChannelB (BmHb)
+ (BOOL)pinitBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
