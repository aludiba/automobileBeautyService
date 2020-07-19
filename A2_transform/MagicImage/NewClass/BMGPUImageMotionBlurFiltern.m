#import "BMGPUImageMotionBlurFiltern.h"
@implementation BMGPUImageMotionBlurFiltern
+ (BOOL)kInitbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)ISetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)vRecalculatetexeloffsetsbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)HSetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)eSetbluranglebmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)sSetblursizebmbm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
