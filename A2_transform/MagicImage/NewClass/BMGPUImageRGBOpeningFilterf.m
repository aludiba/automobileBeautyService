#import "BMGPUImageRGBOpeningFilterf.h"
@implementation BMGPUImageRGBOpeningFilterf
+ (BOOL)vInitbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)nInitwithradiusbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
