#import "hbGPUImageHazeFilterE.h"
@implementation hbGPUImageHazeFilterE
+ (BOOL)Binit:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)vSetdistance:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)pSetslope:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
