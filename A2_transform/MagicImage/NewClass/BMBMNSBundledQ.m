#import "BMBMNSBundledQ.h"
@implementation BMBMNSBundledQ
+ (BOOL)RPpreferredscales:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)GApathforscaledresourceioftypebindirectory:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)UDpathforscaledresourceqoftype:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)fDpathforscaledresourcecoftypemindirectory:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
