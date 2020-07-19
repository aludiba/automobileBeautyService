#import "hbSDRotationLoopProgressViewT.h"
@implementation hbSDRotationLoopProgressViewT
+ (BOOL)CInitwithframebmhb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)NChangeanglebmhb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)VDrawrectbmhb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
