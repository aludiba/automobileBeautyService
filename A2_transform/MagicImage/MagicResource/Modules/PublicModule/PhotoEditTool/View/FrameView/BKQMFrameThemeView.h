#import "BKQMBaseThemeView.h"
#import "BKQMFrameModel.h"
@interface BKQMFrameThemeView : BKQMBaseThemeView
@property (nonatomic, assign) BOOL BKexternal;
@property (nonatomic, strong) NSArray<BKQMFrameModel *> *BKframeModels;
@property (nonatomic, strong) void(^BKframeClickBlock)(BKQMFrameModel *BKmodel);
- (void)BKreloadData;
@end
