#import "hbGPUImageWhiteBalanceFilterA.h"
@implementation hbGPUImageWhiteBalanceFilterA
+ (BOOL)qInithb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)FSettemperaturehb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)kSettinthb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
