#import "BMRACKVOChannelv.h"
@implementation BMRACKVOChannelv
+ (BOOL)tObjectforkeyedsubscript:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)FSetobjectgForkeyedsubscript:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
