#import "hbRACEmptySignals.h"
@implementation hbRACEmptySignals
+ (BOOL)GSetnamehb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)JNamehb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)BEmptyhb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)pSubscribehb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
