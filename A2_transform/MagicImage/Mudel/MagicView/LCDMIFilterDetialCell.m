#import "LCDMIFilterDetialCell.h"
@interface LCDMIFilterDetialCell ()
@property (nonatomic, strong) UIImageView *LCDiconImageView;
@end
@implementation LCDMIFilterDetialCell
- (instancetype)initWithStyle:(UITableViewCellStyle)LCDstyle reuseIdentifier:(NSString *)LCDreuseIdentifier{
    if (self = [super initWithStyle:LCDstyle reuseIdentifier:LCDreuseIdentifier]) {
        self.LCDiconImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.LCDiconImageView];
        self.LCDiconImageView.sd_layout
        .leftEqualToView(self.contentView)
        .topEqualToView(self.contentView)
        .rightEqualToView(self.contentView)
        .bottomEqualToView(self.contentView);
    }
    return self;
}
- (void)setLCDimageUrl:(NSString *)LCDimageUrl{
    [self.LCDiconImageView sd_setImageWithURL:[NSURL URLWithString:LCDimageUrl]];
}
@end
