#import "BMGPUImageHueFilterN.h"
@implementation BMGPUImageHueFilterN
+ (BOOL)Rinit:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)XSethue:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
