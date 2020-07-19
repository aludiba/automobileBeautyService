#import "GPUImageHistogramGenerator+Bm.h"
@implementation GPUImageHistogramGenerator (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setBackgroundColorRedGreenBlueAlphaBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
