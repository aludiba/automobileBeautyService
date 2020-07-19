#import "BMBMNSArraynx.h"
@implementation BMBMNSArraynx
+ (BOOL)gFsortedarraybytag:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)aYsortedarraybyposition:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
