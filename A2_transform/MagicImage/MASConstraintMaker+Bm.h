#import "MASConstraint.h"
#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewConstraint.h"
#import "MASCompositeConstraint.h"
#import "MASConstraint+Private.h"
#import "MASViewAttribute.h"
#import "View+MASAdditions.h"

@interface MASConstraintMaker (Bm)
+ (BOOL)initWithViewBm:(NSInteger)BM;
+ (BOOL)installBm:(NSInteger)BM;
+ (BOOL)constraintShouldbereplacedwithconstraintBm:(NSInteger)BM;
+ (BOOL)constraintAddconstraintwithlayoutattributeBm:(NSInteger)BM;
+ (BOOL)addConstraintWithAttributesBm:(NSInteger)BM;
+ (BOOL)addConstraintWithLayoutAttributeBm:(NSInteger)BM;
+ (BOOL)leftBm:(NSInteger)BM;
+ (BOOL)topBm:(NSInteger)BM;
+ (BOOL)rightBm:(NSInteger)BM;
+ (BOOL)bottomBm:(NSInteger)BM;
+ (BOOL)leadingBm:(NSInteger)BM;
+ (BOOL)trailingBm:(NSInteger)BM;
+ (BOOL)widthBm:(NSInteger)BM;
+ (BOOL)heightBm:(NSInteger)BM;
+ (BOOL)centerXBm:(NSInteger)BM;
+ (BOOL)centerYBm:(NSInteger)BM;
+ (BOOL)baselineBm:(NSInteger)BM;
+ (BOOL)(MASAttribute))attributesBm:(NSInteger)BM;
+ (BOOL)firstBaselineBm:(NSInteger)BM;
+ (BOOL)lastBaselineBm:(NSInteger)BM;
+ (BOOL)leftMarginBm:(NSInteger)BM;
+ (BOOL)rightMarginBm:(NSInteger)BM;
+ (BOOL)topMarginBm:(NSInteger)BM;
+ (BOOL)bottomMarginBm:(NSInteger)BM;
+ (BOOL)leadingMarginBm:(NSInteger)BM;
+ (BOOL)trailingMarginBm:(NSInteger)BM;
+ (BOOL)centerXWithinMarginsBm:(NSInteger)BM;
+ (BOOL)centerYWithinMarginsBm:(NSInteger)BM;
+ (BOOL)edgesBm:(NSInteger)BM;
+ (BOOL)sizeBm:(NSInteger)BM;
+ (BOOL)centerBm:(NSInteger)BM;
+ (BOOL)(dispatch_block_t group))groupBm:(NSInteger)BM;

@end
