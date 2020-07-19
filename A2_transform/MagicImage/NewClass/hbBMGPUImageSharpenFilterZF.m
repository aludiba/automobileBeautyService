#import "hbBMGPUImageSharpenFilterZf.h"
@implementation hbBMGPUImageSharpenFilterZf
+ (BOOL)JQinitbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)pCsetupfilterforsizebm:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)uTsetsharpnessbm:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
