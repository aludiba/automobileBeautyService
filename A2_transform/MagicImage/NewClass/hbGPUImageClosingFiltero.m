#import "hbGPUImageClosingFiltero.h"
@implementation hbGPUImageClosingFiltero
+ (BOOL)hInithb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)SInitwithradiushb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)zSetverticaltexelspacinghb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)eSethorizontaltexelspacinghb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
