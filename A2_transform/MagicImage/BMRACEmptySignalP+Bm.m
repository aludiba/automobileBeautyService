#import "BMRACEmptySignalP+Bm.h"
@implementation BMRACEmptySignalP (Bm)
+ (BOOL)aSetnamebmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)CNamebmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)AEmptybmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sSubscribebmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
