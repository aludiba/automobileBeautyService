#import "BMGPUImageFalseColorFilterv.h"
@implementation BMGPUImageFalseColorFilterv
+ (BOOL)ainit:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)TSetfirstcolor:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)YSetsecondcolor:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)QSetfirstcolorredvGreencBlue:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)ZSetsecondcolorreduGreenGBlue:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
