#import "BMUIImageJ.h"
@implementation BMUIImageJ
+ (BOOL)FDecodedimagewithimagebm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)KDecodedandscaleddownimagewithimagebm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
