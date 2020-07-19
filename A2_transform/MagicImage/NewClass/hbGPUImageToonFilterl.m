#import "hbGPUImageToonFilterl.h"
@implementation hbGPUImageToonFilterl
+ (BOOL)Yinit:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)tSetthreshold:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)tSetquantizationlevels:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
