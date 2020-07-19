#import "BMRACEmptySignalL+BmBmHb.h"
@implementation BMRACEmptySignalL (BmBmHb)
+ (BOOL)fSetnameBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)FnameBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)aemptyBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)DSubscribeBmBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
