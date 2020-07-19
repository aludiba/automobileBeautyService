#import "hbGPUImageToonFilterE.h"
@implementation hbGPUImageToonFilterE
+ (BOOL)yinit:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)lSetthreshold:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)ESetquantizationlevels:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
