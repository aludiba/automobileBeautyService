#import "GPUImageMedianFilter+BmHb.h"
@implementation GPUImageMedianFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
