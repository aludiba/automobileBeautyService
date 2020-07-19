#import "UIButton+SDExtentionBm.h"
@implementation UIButton (SDExtentionBm)
+ (BOOL)setupAutoSizeWithHorizontalPaddingButtonheightBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
