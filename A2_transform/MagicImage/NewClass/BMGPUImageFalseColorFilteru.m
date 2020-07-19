#import "BMGPUImageFalseColorFilteru.h"
@implementation BMGPUImageFalseColorFilteru
+ (BOOL)OInitbmbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)hSetfirstcolorbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)vSetsecondcolorbmbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)YSetfirstcolorredgreenbluebmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)qSetsecondcolorredgreenbluebmbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
