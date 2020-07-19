#import "BMGPUImageRGBClosingFilteru.h"
@implementation BMGPUImageRGBClosingFilteru
+ (BOOL)XInitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)gInitwithradiusbm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
