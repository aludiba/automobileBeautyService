#import "BMGPUImageRGBClosingFilterK.h"
@implementation BMGPUImageRGBClosingFilterK
+ (BOOL)Minit:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)DInitwithradius:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
