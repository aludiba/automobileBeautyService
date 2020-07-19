#import "hbRACEmptySignalW.h"
@implementation hbRACEmptySignalW
+ (BOOL)DSetnamehb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)ONamehb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)vEmptyhb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)ASubscribehb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
