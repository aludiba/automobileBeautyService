#import "BMTOCropScrollViewM+Bm.h"
@implementation BMTOCropScrollViewM (Bm)
+ (BOOL)GTouchesbeganWWitheventBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)RTouchesendedQWitheventBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)HTouchescancelledNWitheventBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
