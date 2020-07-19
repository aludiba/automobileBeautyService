#import "GPUImageNobleCornerDetectionFilter+Hb.h"
@implementation GPUImageNobleCornerDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
