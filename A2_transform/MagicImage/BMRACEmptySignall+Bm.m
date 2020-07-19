#import "BMRACEmptySignalL+Bm.h"
@implementation BMRACEmptySignalL (Bm)
+ (BOOL)fSetnameBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)FnameBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)aemptyBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)DSubscribeBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
