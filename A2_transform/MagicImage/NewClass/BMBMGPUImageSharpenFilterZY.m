#import "BMBMGPUImageSharpenFilterZY.h"
@implementation BMBMGPUImageSharpenFilterZY
+ (BOOL)cQinit:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)fCsetupfilterforsize:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)OTsetsharpness:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
