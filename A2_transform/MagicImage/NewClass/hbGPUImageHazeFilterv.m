#import "hbGPUImageHazeFilterv.h"
@implementation hbGPUImageHazeFilterv
+ (BOOL)linit:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)KSetdistance:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)fSetslope:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
