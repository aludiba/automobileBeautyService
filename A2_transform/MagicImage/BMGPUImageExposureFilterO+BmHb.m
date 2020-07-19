#import "BMGPUImageExposureFilterO+BmHb.h"
@implementation BMGPUImageExposureFilterO (BmHb)
+ (BOOL)kinitBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)ISetexposureBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
