#import "hbGPUImageHighlightShadowFiltera.h"
@implementation hbGPUImageHighlightShadowFiltera
+ (BOOL)iInithb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)BSetshadowshb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)tSethighlightshb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
