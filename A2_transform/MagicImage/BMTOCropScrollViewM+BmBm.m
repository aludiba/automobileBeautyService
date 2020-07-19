#import "BMTOCropScrollViewM+BmBm.h"
@implementation BMTOCropScrollViewM (BmBm)
+ (BOOL)GTouchesbeganWWitheventBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)RTouchesendedQWitheventBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)HTouchescancelledNWitheventBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
