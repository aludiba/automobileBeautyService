#import "hbGPUImageFASTCornerDetectionFilterc.h"
@implementation hbGPUImageFASTCornerDetectionFilterc
+ (BOOL)ginit:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)oInitwithfastdetectorvariant:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
