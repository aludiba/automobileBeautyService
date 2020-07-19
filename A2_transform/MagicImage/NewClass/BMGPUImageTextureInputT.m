#import "BMGPUImageTextureInputT.h"
@implementation BMGPUImageTextureInputT
+ (BOOL)tInitwithtexturesizebmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)fProcesstexturewithframetimebmbm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
