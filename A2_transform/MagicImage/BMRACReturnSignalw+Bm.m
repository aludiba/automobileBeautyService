#import "BMRACReturnSignalw+Bm.h"
@implementation BMRACReturnSignalw (Bm)
+ (BOOL)nSetnamebmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ENamebmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)QReturnbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)ZSubscribebmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
