#import "MASConstraint.h"
#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewConstraint.h"
#import "MASCompositeConstraint.h"
#import "MASConstraint+Private.h"
#import "MASViewAttribute.h"
#import "View+MASAdditions.h"

@interface MASConstraintMaker (Hb)
+ (BOOL)initWithViewHb:(NSInteger)hb;
+ (BOOL)installHb:(NSInteger)hb;
+ (BOOL)constraintShouldbereplacedwithconstraintHb:(NSInteger)hb;
+ (BOOL)constraintAddconstraintwithlayoutattributeHb:(NSInteger)hb;
+ (BOOL)addConstraintWithAttributesHb:(NSInteger)hb;
+ (BOOL)addConstraintWithLayoutAttributeHb:(NSInteger)hb;
+ (BOOL)leftHb:(NSInteger)hb;
+ (BOOL)topHb:(NSInteger)hb;
+ (BOOL)rightHb:(NSInteger)hb;
+ (BOOL)bottomHb:(NSInteger)hb;
+ (BOOL)leadingHb:(NSInteger)hb;
+ (BOOL)trailingHb:(NSInteger)hb;
+ (BOOL)widthHb:(NSInteger)hb;
+ (BOOL)heightHb:(NSInteger)hb;
+ (BOOL)centerXHb:(NSInteger)hb;
+ (BOOL)centerYHb:(NSInteger)hb;
+ (BOOL)baselineHb:(NSInteger)hb;
+ (BOOL)(MASAttribute))attributesHb:(NSInteger)hb;
+ (BOOL)firstBaselineHb:(NSInteger)hb;
+ (BOOL)lastBaselineHb:(NSInteger)hb;
+ (BOOL)leftMarginHb:(NSInteger)hb;
+ (BOOL)rightMarginHb:(NSInteger)hb;
+ (BOOL)topMarginHb:(NSInteger)hb;
+ (BOOL)bottomMarginHb:(NSInteger)hb;
+ (BOOL)leadingMarginHb:(NSInteger)hb;
+ (BOOL)trailingMarginHb:(NSInteger)hb;
+ (BOOL)centerXWithinMarginsHb:(NSInteger)hb;
+ (BOOL)centerYWithinMarginsHb:(NSInteger)hb;
+ (BOOL)edgesHb:(NSInteger)hb;
+ (BOOL)sizeHb:(NSInteger)hb;
+ (BOOL)centerHb:(NSInteger)hb;
+ (BOOL)(dispatch_block_t group))groupHb:(NSInteger)hb;

@end
