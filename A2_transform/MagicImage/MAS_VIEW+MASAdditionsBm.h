#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "View+MASAdditions.h"
#import <objc/runtime.h>

@interface MAS_VIEW (MASAdditionsBm)
+ (BOOL)mas_makeConstraintsBm:(NSInteger)BM;
+ (BOOL)mas_updateConstraintsBm:(NSInteger)BM;
+ (BOOL)mas_remakeConstraintsBm:(NSInteger)BM;
+ (BOOL)mas_leftBm:(NSInteger)BM;
+ (BOOL)mas_topBm:(NSInteger)BM;
+ (BOOL)mas_rightBm:(NSInteger)BM;
+ (BOOL)mas_bottomBm:(NSInteger)BM;
+ (BOOL)mas_leadingBm:(NSInteger)BM;
+ (BOOL)mas_trailingBm:(NSInteger)BM;
+ (BOOL)mas_widthBm:(NSInteger)BM;
+ (BOOL)mas_heightBm:(NSInteger)BM;
+ (BOOL)mas_centerXBm:(NSInteger)BM;
+ (BOOL)mas_centerYBm:(NSInteger)BM;
+ (BOOL)mas_baselineBm:(NSInteger)BM;
+ (BOOL)(NSLayoutAttribute))mas_attributeBm:(NSInteger)BM;
+ (BOOL)mas_firstBaselineBm:(NSInteger)BM;
+ (BOOL)mas_lastBaselineBm:(NSInteger)BM;
+ (BOOL)mas_leftMarginBm:(NSInteger)BM;
+ (BOOL)mas_rightMarginBm:(NSInteger)BM;
+ (BOOL)mas_topMarginBm:(NSInteger)BM;
+ (BOOL)mas_bottomMarginBm:(NSInteger)BM;
+ (BOOL)mas_leadingMarginBm:(NSInteger)BM;
+ (BOOL)mas_trailingMarginBm:(NSInteger)BM;
+ (BOOL)mas_centerXWithinMarginsBm:(NSInteger)BM;
+ (BOOL)mas_centerYWithinMarginsBm:(NSInteger)BM;
+ (BOOL)mas_safeAreaLayoutGuideBm:(NSInteger)BM;
+ (BOOL)mas_safeAreaLayoutGuideTopBm:(NSInteger)BM;
+ (BOOL)mas_safeAreaLayoutGuideBottomBm:(NSInteger)BM;
+ (BOOL)mas_safeAreaLayoutGuideLeftBm:(NSInteger)BM;
+ (BOOL)mas_safeAreaLayoutGuideRightBm:(NSInteger)BM;
+ (BOOL)mas_keyBm:(NSInteger)BM;
+ (BOOL)setMas_keyBm:(NSInteger)BM;
+ (BOOL)mas_closestCommonSuperviewBm:(NSInteger)BM;

@end
