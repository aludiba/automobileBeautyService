#import "GPUImageOpacityFilter+Bm.h"
@implementation GPUImageOpacityFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setOpacityBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
