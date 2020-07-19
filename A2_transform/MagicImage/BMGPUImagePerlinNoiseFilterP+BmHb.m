#import "BMGPUImagePerlinNoiseFilterP+BmHb.h"
@implementation BMGPUImagePerlinNoiseFilterP (BmHb)
+ (BOOL)jinitBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)tSetscaleBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)fSetcolorstartBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)JSetcolorfinishBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
