#import "hbGPUImageClosingFilterr.h"
@implementation hbGPUImageClosingFilterr
+ (BOOL)Ainit:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)RInitwithradius:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)PSetverticaltexelspacing:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)vSethorizontaltexelspacing:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
