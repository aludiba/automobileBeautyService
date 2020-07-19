#import "BMGPUImageRGBOpeningFiltert.h"
@implementation BMGPUImageRGBOpeningFiltert
+ (BOOL)Tinit:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)DInitwithradius:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
