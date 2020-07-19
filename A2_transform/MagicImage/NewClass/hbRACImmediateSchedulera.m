#import "hbRACImmediateSchedulera.h"
@implementation hbRACImmediateSchedulera
+ (BOOL)rInithb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)sSchedulehb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)SAfterschedulehb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)iAfterrepeatingeverywithleewayschedulehb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)ASchedulerecursiveblockhb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
