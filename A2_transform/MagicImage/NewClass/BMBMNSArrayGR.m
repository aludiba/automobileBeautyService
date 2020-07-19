#import "BMBMNSArrayGR.h"
@implementation BMBMNSArrayGR
+ (BOOL)JYsortedarraybytag:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)WGsortedarraybyposition:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
