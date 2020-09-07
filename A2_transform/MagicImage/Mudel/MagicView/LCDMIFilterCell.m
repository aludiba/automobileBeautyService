#import "LCDMIFilterCell.h"
#import "LCDMIHomeModel.h"
@interface LCDMIFilterCell ()
@property (nonatomic, strong) UIImageView * LCDbgImageView;
@property (nonatomic, strong) UILabel * LCDtitleLabel;
@end
@implementation LCDMIFilterCell
- (instancetype)initWithStyle:(UITableViewCellStyle)LCDstyle reuseIdentifier:(NSString *)LCDreuseIdentifier{
    if (self = [super initWithStyle:LCDstyle reuseIdentifier:LCDreuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.LCDbgImageView = [[UIImageView alloc] init];
        self.LCDbgImageView.layer.cornerRadius = 10;
        self.LCDbgImageView.layer.masksToBounds = YES;
        [self.contentView addSubview:self.LCDbgImageView];
        self.LCDbgImageView.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .topSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 15)
        .bottomSpaceToView(self.contentView, 30);
        self.LCDtitleLabel = [[UILabel alloc] init];
        self.LCDtitleLabel.font = FontBoldSize(16, ScreenWidth);
        self.LCDtitleLabel.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.LCDtitleLabel];
        self.LCDtitleLabel.sd_layout
        .leftEqualToView(self.LCDbgImageView)
        .topSpaceToView(self.LCDbgImageView, 5)
        .autoHeightRatio(0);
        [self.LCDtitleLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth];
    }
    return self;
}
- (void)setLCDmodel:(LCDMIHomeModel *)LCDmodel{
    _LCDmodel = LCDmodel;
    [self.LCDbgImageView sd_setImageWithURL:[NSURL URLWithString:LCDmodel.pic_url_z]];
    self.LCDtitleLabel.text = LCDmodel.title;
}
@end
