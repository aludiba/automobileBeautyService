#import "hbGPUImageBrightnessFilterP.h"
@implementation hbGPUImageBrightnessFilterP
+ (BOOL)aInithb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)nSetbrightnesshb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
