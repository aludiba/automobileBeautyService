#import "BMGPUImageBrightnessFilterw.h"
@implementation BMGPUImageBrightnessFilterw
+ (BOOL)ginit:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)ySetbrightness:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
