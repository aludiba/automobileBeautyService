#import <UIKit/UIKit.h>
#import <YYModel.h>
@interface BKQMSuspensionModel : NSObject<YYModel>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) CGFloat value;
+ (NSArray<BKQMSuspensionModel *> *)buildSuspensionModelsWithJson:(NSString *)jsonStr;
@end
@interface BKQMSuspensionView : UIView
@property (nonatomic, strong) NSArray<BKQMSuspensionModel *> *BKsuspensionModels;
@property (nonatomic, copy) void (^BKsuspensionItemClickBlock)(BKQMSuspensionModel *BKitem);
- (UICollectionViewFlowLayout *)BKcollectionViewForFlowLayout;
- (void)BKtoggleBelowInView:(UIView *)BKview;
- (void)BKshowBelowInView:(UIView *)BKview;
- (BOOL)BKhide;
@end
