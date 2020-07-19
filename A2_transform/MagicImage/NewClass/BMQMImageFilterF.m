#import "BMQMImageFilterF.h"
@implementation BMQMImageFilterF
+ (BOOL)PInitwithfiltermodel:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)qbindQMTexture:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)OSetalpha:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
