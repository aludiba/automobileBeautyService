#import "GPUImageContrastFilter+Bm.h"
@implementation GPUImageContrastFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setContrastBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
