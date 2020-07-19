#import "BMRACKVOChannelS.h"
@implementation BMRACKVOChannelS
+ (BOOL)oObjectforkeyedsubscriptbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)fSetobjectforkeyedsubscriptbm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
