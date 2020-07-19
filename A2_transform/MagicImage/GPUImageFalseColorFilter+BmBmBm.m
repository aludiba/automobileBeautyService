#import "GPUImageFalseColorFilter+BmBmBm.h"
@implementation GPUImageFalseColorFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setFirstColorBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setSecondColorBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setFirstColorRedGreenBlueBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setSecondColorRedGreenBlueBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
