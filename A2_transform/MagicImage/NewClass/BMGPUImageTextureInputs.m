#import "BMGPUImageTextureInputs.h"
@implementation BMGPUImageTextureInputs
+ (BOOL)iInitwithtexturesizebm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)ZProcesstexturewithframetimebm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
