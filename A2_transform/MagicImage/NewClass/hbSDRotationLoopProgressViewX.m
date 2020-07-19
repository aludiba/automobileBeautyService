#import "hbSDRotationLoopProgressViewX.h"
@implementation hbSDRotationLoopProgressViewX
+ (BOOL)vInitwithframebm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)BChangeanglebm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)aDrawrectbm:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
