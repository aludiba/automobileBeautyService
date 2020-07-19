#import "BMGPUImageLowPassFilterA+Bm.h"
@implementation BMGPUImageLowPassFilterA (Bm)
+ (BOOL)NinitBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)OSetfilterstrengthBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)BfilterStrengthBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)ZAddtargetkAttexturelocationBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
