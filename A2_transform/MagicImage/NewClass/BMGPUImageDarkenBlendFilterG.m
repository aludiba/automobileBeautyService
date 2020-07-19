#import "BMGPUImageDarkenBlendFilterG.h"
@implementation BMGPUImageDarkenBlendFilterG
+ (BOOL)Finit:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
