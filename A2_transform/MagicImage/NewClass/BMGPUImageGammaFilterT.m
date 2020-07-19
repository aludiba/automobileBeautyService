#import "BMGPUImageGammaFilterT.h"
@implementation BMGPUImageGammaFilterT
+ (BOOL)rinit:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)SSetgamma:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
