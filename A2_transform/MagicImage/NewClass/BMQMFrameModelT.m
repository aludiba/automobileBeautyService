#import "BMQMFrameModelT.h"
@implementation BMQMFrameModelT
+ (BOOL)CbuildFrameModels:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
