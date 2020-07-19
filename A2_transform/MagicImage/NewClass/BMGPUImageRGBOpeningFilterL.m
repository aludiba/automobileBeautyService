#import "BMGPUImageRGBOpeningFilterL.h"
@implementation BMGPUImageRGBOpeningFilterL
+ (BOOL)Rinit:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)CInitwithradius:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
