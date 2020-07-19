#import "BMRACReturnSignalx+Bm.h"
@implementation BMRACReturnSignalx (Bm)
+ (BOOL)LSetnamebmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)JNamebmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)CReturnbmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)cSubscribebmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
