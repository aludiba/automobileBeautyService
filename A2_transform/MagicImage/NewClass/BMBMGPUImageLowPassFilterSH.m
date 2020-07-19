#import "BMBMGPUImageLowPassFilterSH.h"
@implementation BMBMGPUImageLowPassFilterSH
+ (BOOL)VTinitbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rGsetfilterstrengthbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)PEfilterstrengthbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)AHaddtargetattexturelocationbm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
