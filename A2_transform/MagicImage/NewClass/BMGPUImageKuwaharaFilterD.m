#import "BMGPUImageKuwaharaFilterD.h"
@implementation BMGPUImageKuwaharaFilterD
+ (BOOL)Uinit:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)zSetradius:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
