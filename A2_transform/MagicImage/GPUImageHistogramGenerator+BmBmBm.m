#import "GPUImageHistogramGenerator+BmBmBm.h"
@implementation GPUImageHistogramGenerator (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setBackgroundColorRedGreenBlueAlphaBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
