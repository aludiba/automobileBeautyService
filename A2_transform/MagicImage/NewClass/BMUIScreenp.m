#import "BMUIScreenp.h"
@implementation BMUIScreenp
+ (BOOL)xScreenscalebmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)fCurrentboundsbmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)DBoundsfororientationbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)NSizeinpixelbmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)mPixelsperinchbmbm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
