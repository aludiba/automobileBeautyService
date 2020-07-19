#import "BMGPUImageFASTCornerDetectionFilterH+BmHb.h"
@implementation BMGPUImageFASTCornerDetectionFilterH (BmHb)
+ (BOOL)qinitBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)KInitwithfastdetectorvariantBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
