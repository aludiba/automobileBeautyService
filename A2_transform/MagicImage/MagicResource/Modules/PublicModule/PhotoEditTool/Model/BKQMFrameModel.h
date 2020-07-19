#import "BKQMBaseThemeView.h"
@class BKQMFrameModel;
@interface BKQMFrameModel : BKQMBaseThemeView
@property (nonatomic, strong) NSString *icon;
+ (NSArray<BKQMFrameModel *> *)buildFrameModels;
@end
