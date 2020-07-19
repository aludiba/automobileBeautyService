#import "BMGPUImageBrightnessFilterm+Bm.h"
@implementation BMGPUImageBrightnessFilterm (Bm)
+ (BOOL)CInitbmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)xSetbrightnessbmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
