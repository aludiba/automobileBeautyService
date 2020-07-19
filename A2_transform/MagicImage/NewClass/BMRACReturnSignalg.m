#import "BMRACReturnSignalg.h"
@implementation BMRACReturnSignalg
+ (BOOL)iSetname:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)hname:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)QReturn:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)GSubscribe:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
