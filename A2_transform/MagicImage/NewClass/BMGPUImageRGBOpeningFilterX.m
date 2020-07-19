#import "BMGPUImageRGBOpeningFilterX.h"
@implementation BMGPUImageRGBOpeningFilterX
+ (BOOL)oInitbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)QInitwithradiusbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
