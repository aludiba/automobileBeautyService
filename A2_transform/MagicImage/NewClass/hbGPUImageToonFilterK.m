#import "hbGPUImageToonFilterK.h"
@implementation hbGPUImageToonFilterK
+ (BOOL)cInitbmbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)ySetthresholdbmbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)PSetquantizationlevelsbmbm:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
