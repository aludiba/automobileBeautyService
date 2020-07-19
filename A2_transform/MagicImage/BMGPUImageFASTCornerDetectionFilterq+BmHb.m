#import "BMGPUImageFASTCornerDetectionFilterq+BmHb.h"
@implementation BMGPUImageFASTCornerDetectionFilterq (BmHb)
+ (BOOL)CinitBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)PInitwithfastdetectorvariantBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
