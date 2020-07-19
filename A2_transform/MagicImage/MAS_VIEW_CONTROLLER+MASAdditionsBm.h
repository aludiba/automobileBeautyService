#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "ViewController+MASAdditions.h"

@interface MAS_VIEW_CONTROLLER (MASAdditionsBm)
+ (BOOL)mas_topLayoutGuideBm:(NSInteger)BM;
+ (BOOL)mas_topLayoutGuideTopBm:(NSInteger)BM;
+ (BOOL)mas_topLayoutGuideBottomBm:(NSInteger)BM;
+ (BOOL)mas_bottomLayoutGuideBm:(NSInteger)BM;
+ (BOOL)mas_bottomLayoutGuideTopBm:(NSInteger)BM;
+ (BOOL)mas_bottomLayoutGuideBottomBm:(NSInteger)BM;

@end
