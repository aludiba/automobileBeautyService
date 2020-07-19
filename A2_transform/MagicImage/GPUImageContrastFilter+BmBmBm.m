#import "GPUImageContrastFilter+BmBmBm.h"
@implementation GPUImageContrastFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setContrastBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
