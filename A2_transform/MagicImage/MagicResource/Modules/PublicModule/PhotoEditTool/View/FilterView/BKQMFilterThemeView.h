#import "BKQMBaseThemeView.h"
#import "BKQMFilterModel.h"
@interface BKQMFilterThemeView : BKQMBaseThemeView
@property (nonatomic, strong) NSArray<BKQMFilterModel *> *BKfilterModels;
@property (nonatomic, strong) void(^BKsliderValueChangeBlock)(NSInteger index, float value);
@property (nonatomic, strong) void(^BKfilterClickBlock)(BKQMFilterModel *model);
- (instancetype)init;
- (void)BKreloadData;
@end
