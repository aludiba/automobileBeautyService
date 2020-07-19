#import "BMGPUImageBrightnessFilterS.h"
@implementation BMGPUImageBrightnessFilterS
+ (BOOL)wInitbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)mSetbrightnessbmbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
