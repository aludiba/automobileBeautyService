#import "hbRACErrorSignalW.h"
@implementation hbRACErrorSignalW
+ (BOOL)GError:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)qSubscribe:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
