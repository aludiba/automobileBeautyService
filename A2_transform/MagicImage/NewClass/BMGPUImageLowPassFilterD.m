#import "BMGPUImageLowPassFilterD.h"
@implementation BMGPUImageLowPassFilterD
+ (BOOL)Pinit:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)pSetfilterstrength:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)wfilterStrength:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)tAddtargetjAttexturelocation:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
