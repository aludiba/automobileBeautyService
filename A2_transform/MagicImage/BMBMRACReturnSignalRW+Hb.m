#import "BMBMRACReturnSignalRW+Hb.h"
@implementation BMBMRACReturnSignalRW (Hb)
+ (BOOL)zNsetnameHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)FInameHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)GUreturnHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)iFsubscribeHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
