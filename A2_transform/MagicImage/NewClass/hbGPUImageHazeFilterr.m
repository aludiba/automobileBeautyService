#import "hbGPUImageHazeFilterr.h"
@implementation hbGPUImageHazeFilterr
+ (BOOL)cInitbmbm:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)PSetdistancebmbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)TSetslopebmbm:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
