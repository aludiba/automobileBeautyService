#import "BMGPUImageFalseColorFilterv+Bm.h"
@implementation BMGPUImageFalseColorFilterv (Bm)
+ (BOOL)ainitBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)TSetfirstcolorBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)YSetsecondcolorBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)QSetfirstcolorredvGreencBlueBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)ZSetsecondcolorreduGreenGBlueBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
