#import "BMGPUImageRGBErosionFilterN.h"
@implementation BMGPUImageRGBErosionFilterN
+ (BOOL)VInitwithradius:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)Vinit:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
