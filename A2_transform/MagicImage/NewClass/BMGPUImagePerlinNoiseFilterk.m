#import "BMGPUImagePerlinNoiseFilterk.h"
@implementation BMGPUImagePerlinNoiseFilterk
+ (BOOL)Minit:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)JSetscale:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)iSetcolorstart:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)bSetcolorfinish:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
