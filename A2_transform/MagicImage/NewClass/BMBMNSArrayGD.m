#import "BMBMNSArrayGD.h"
@implementation BMBMNSArrayGD
+ (BOOL)MYsortedarraybytag:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)fGsortedarraybyposition:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
