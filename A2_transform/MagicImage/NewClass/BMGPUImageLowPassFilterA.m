#import "BMGPUImageLowPassFilterA.h"
@implementation BMGPUImageLowPassFilterA
+ (BOOL)Ninit:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)OSetfilterstrength:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)BfilterStrength:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ZAddtargetkAttexturelocation:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
