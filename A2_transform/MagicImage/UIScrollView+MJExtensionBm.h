#import <UIKit/UIKit.h>
#import "UIScrollView+MJExtension.h"
#import <objc/runtime.h>

@interface UIScrollView (MJExtensionBm)
+ (BOOL)loadBm:(NSInteger)BM;
+ (BOOL)mj_insetBm:(NSInteger)BM;
+ (BOOL)setMj_insetTBm:(NSInteger)BM;
+ (BOOL)mj_insetTBm:(NSInteger)BM;
+ (BOOL)setMj_insetBBm:(NSInteger)BM;
+ (BOOL)mj_insetBBm:(NSInteger)BM;
+ (BOOL)setMj_insetLBm:(NSInteger)BM;
+ (BOOL)mj_insetLBm:(NSInteger)BM;
+ (BOOL)setMj_insetRBm:(NSInteger)BM;
+ (BOOL)mj_insetRBm:(NSInteger)BM;
+ (BOOL)setMj_offsetXBm:(NSInteger)BM;
+ (BOOL)mj_offsetXBm:(NSInteger)BM;
+ (BOOL)setMj_offsetYBm:(NSInteger)BM;
+ (BOOL)mj_offsetYBm:(NSInteger)BM;
+ (BOOL)setMj_contentWBm:(NSInteger)BM;
+ (BOOL)mj_contentWBm:(NSInteger)BM;
+ (BOOL)setMj_contentHBm:(NSInteger)BM;
+ (BOOL)mj_contentHBm:(NSInteger)BM;

@end
