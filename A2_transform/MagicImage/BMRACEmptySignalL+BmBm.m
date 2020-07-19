#import "BMRACEmptySignalL+BmBm.h"
@implementation BMRACEmptySignalL (BmBm)
+ (BOOL)fSetnameBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)FnameBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)aemptyBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)DSubscribeBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
