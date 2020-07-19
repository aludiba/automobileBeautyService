#import "GPUImageHistogramGenerator+BmBm.h"
@implementation GPUImageHistogramGenerator (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setBackgroundColorRedGreenBlueAlphaBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
