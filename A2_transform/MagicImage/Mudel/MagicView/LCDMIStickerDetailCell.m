#import "LCDMIStickerDetailCell.h"
@interface LCDMIStickerDetailCell ()
@property (nonatomic, strong) UIImageView * LCDiconImageView;
@end
@implementation LCDMIStickerDetailCell
- (instancetype)initWithFrame:(CGRect)LCDframe{
    if (self = [super initWithFrame:LCDframe]) {
        self.LCDiconImageView = [[UIImageView alloc] init];
        [self addSubview:self.LCDiconImageView];
        self.LCDiconImageView.sd_layout
        .leftEqualToView(self)
        .rightEqualToView(self)
        .topEqualToView(self)
        .bottomEqualToView(self);
    }
    return self;
}
- (void)setLCDpicUrl:(NSString *)LCDpicUrl{
    [self.LCDiconImageView sd_setImageWithURL:[NSURL URLWithString:LCDpicUrl] placeholderImage:nil];
}
@end
