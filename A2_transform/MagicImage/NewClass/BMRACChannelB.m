#import "BMRACChannelB.h"
@implementation BMRACChannelB
+ (BOOL)pinit:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
