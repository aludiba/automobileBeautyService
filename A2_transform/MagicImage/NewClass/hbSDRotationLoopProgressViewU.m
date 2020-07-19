#import "hbSDRotationLoopProgressViewu.h"
@implementation hbSDRotationLoopProgressViewu
+ (BOOL)VInitwithframe:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)SchangeAngle:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)wDrawrect:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
