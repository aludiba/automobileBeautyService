#import "BMGPUImageLowPassFilterD+Bm.h"
@implementation BMGPUImageLowPassFilterD (Bm)
+ (BOOL)PinitBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)pSetfilterstrengthBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)wfilterStrengthBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)tAddtargetjAttexturelocationBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
