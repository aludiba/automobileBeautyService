#import "BMGPUImageBrightnessFilterm+BmHb.h"
@implementation BMGPUImageBrightnessFilterm (BmHb)
+ (BOOL)CInitbmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)xSetbrightnessbmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
