#import "BMGPUImagePerlinNoiseFilterP.h"
@implementation BMGPUImagePerlinNoiseFilterP
+ (BOOL)jinit:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)tSetscale:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)fSetcolorstart:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)JSetcolorfinish:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
