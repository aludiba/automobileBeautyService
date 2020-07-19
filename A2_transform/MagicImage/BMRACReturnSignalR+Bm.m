#import "BMRACReturnSignalR+Bm.h"
@implementation BMRACReturnSignalR (Bm)
+ (BOOL)nSetnameBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)InameBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)UReturnBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)fSubscribeBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
