#import "BMGPUImageWhiteBalanceFiltert+BmHb.h"
@implementation BMGPUImageWhiteBalanceFiltert (BmHb)
+ (BOOL)HinitBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)jSettemperatureBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)tSettintBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
