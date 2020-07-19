#import "GPUImageFalseColorFilter+BmBm.h"
@implementation GPUImageFalseColorFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setFirstColorBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setSecondColorBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setFirstColorRedGreenBlueBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setSecondColorRedGreenBlueBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
