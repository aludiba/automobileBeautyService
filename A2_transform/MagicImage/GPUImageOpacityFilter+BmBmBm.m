#import "GPUImageOpacityFilter+BmBmBm.h"
@implementation GPUImageOpacityFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setOpacityBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
