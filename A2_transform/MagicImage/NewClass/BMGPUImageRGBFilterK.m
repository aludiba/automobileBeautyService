#import "BMGPUImageRGBFilterK.h"
@implementation BMGPUImageRGBFilterK
+ (BOOL)rinit:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)lSetred:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)PSetgreen:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)wSetblue:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
