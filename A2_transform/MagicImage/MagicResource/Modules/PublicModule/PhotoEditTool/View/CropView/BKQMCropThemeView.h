#import "BKQMBaseThemeView.h"
#import "BKQMCropModel.h"
#import "Constants.h"
@interface BKQMCropThemeView : BKQMBaseThemeView
@property (nonatomic, strong) NSArray<BKQMCropModel *> *BKcropModels;
@property (nonatomic, strong) void(^BKcroperClickBlock)(CGSize BKaspect, CGFloat BKrotation);
- (void)BKreloadData;
@end
