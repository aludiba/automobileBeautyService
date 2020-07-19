#import "BMBMGPUImageSharpenFilterZL.h"
@implementation BMBMGPUImageSharpenFilterZL
+ (BOOL)oQinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)oCsetupfilterforsize:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)sTsetsharpness:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
