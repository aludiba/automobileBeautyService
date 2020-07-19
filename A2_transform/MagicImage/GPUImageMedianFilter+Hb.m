#import "GPUImageMedianFilter+Hb.h"
@implementation GPUImageMedianFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 18 == 0;
}

@end
