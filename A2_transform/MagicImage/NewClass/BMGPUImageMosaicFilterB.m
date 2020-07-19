#import "BMGPUImageMosaicFilterB.h"
@implementation BMGPUImageMosaicFilterB
+ (BOOL)kInitbmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)uSetcoloronbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)bSetnumtilesbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)JSetinputtilesizebmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)YSetdisplaytilesizebmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)JSettilesetbmbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
