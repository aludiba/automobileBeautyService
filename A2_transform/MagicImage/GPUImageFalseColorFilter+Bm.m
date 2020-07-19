#import "GPUImageFalseColorFilter+Bm.h"
@implementation GPUImageFalseColorFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setFirstColorBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setSecondColorBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setFirstColorRedGreenBlueBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setSecondColorRedGreenBlueBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
