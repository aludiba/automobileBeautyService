#import "GPUImageToonFilter+BmBmHb.h"
@implementation GPUImageToonFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setThresholdBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setQuantizationLevelsBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
