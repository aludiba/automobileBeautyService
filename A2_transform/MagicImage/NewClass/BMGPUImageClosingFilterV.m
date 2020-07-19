#import "BMGPUImageClosingFilterV.h"
@implementation BMGPUImageClosingFilterV
+ (BOOL)QInitbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)GInitwithradiusbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)nSetverticaltexelspacingbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)nSethorizontaltexelspacingbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
