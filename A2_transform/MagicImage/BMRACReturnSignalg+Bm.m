#import "BMRACReturnSignalg+Bm.h"
@implementation BMRACReturnSignalg (Bm)
+ (BOOL)iSetnameBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)hnameBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)QReturnBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)GSubscribeBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
