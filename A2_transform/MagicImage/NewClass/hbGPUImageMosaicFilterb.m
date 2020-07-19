#import "hbGPUImageMosaicFilterB.h"
@implementation hbGPUImageMosaicFilterB
+ (BOOL)FInithb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)vSetcoloronhb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)qSetnumtileshb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)BSetinputtilesizehb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)ASetdisplaytilesizehb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)FSettilesethb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
