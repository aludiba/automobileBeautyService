#import "BMGPUImageMosaicFiltery.h"
@implementation BMGPUImageMosaicFiltery
+ (BOOL)Cinit:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)bSetcoloron:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)USetnumtiles:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)KSetinputtilesize:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)ZSetdisplaytilesize:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)eSettileset:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
