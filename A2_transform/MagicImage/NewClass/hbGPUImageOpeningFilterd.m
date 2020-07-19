#import "hbGPUImageOpeningFilterd.h"
@implementation hbGPUImageOpeningFilterd
+ (BOOL)minit:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)vInitwithradius:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)zSetverticaltexelspacing:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)aSethorizontaltexelspacing:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
