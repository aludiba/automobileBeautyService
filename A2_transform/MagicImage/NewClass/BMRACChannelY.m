#import "BMRACChannelY.h"
@implementation BMRACChannelY
+ (BOOL)QInitbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
