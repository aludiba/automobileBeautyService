#import "BMGPUImageTextureInputX.h"
@implementation BMGPUImageTextureInputX
+ (BOOL)gInitwithtexturesizebm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)wProcesstexturewithframetimebm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
