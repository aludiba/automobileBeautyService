#import "hbGPUImageClosingFilterJ.h"
@implementation hbGPUImageClosingFilterJ
+ (BOOL)Yinit:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)rInitwithradius:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)aSetverticaltexelspacing:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)ESethorizontaltexelspacing:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
