#import "GPUImageOpacityFilter+BmBm.h"
@implementation GPUImageOpacityFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setOpacityBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
