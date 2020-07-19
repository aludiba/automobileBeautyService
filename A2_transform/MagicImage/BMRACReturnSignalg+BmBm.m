#import "BMRACReturnSignalg+BmBm.h"
@implementation BMRACReturnSignalg (BmBm)
+ (BOOL)iSetnameBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)hnameBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)QReturnBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)GSubscribeBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
