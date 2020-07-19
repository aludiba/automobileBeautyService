#import "BMQMImageFilterZ.h"
@implementation BMQMImageFilterZ
+ (BOOL)yInitwithfiltermodel:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)obindQMTexture:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)rSetalpha:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
