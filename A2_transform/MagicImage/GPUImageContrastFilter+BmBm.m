#import "GPUImageContrastFilter+BmBm.h"
@implementation GPUImageContrastFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setContrastBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
