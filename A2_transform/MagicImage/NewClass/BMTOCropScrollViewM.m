#import "BMTOCropScrollViewM.h"
@implementation BMTOCropScrollViewM
+ (BOOL)GTouchesbeganWWithevent:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)RTouchesendedQWithevent:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)HTouchescancelledNWithevent:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
