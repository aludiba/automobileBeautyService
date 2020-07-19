#import "BMGPUImageChromaKeyFilterM.h"
@implementation BMGPUImageChromaKeyFilterM
+ (BOOL)BInitbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)ESetcolortoreplaceredgreenbluebmbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)hSetthresholdsensitivitybmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)zSetsmoothingbmbm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
