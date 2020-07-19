#import "BMGPUImageBrightnessFilterm.h"
@implementation BMGPUImageBrightnessFilterm
+ (BOOL)CInitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)xSetbrightnessbm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
