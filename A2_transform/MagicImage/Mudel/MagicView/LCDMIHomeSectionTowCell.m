#import "LCDMIHomeSectionTowCell.h"
#import "LCDMIHomeModel.h"
@interface LCDMIHomeSectionTowCell ()
@property (nonatomic, strong) UIImageView * LCDiconImageView;
@property (nonatomic, strong) UILabel *LCDtitleLabel;
@property (nonatomic, strong) UILabel *LCDpriceLabel;
@property (nonatomic, strong) UIImageView *LCDcoinsImageView;
@end
@implementation LCDMIHomeSectionTowCell
- (instancetype)initWithStyle:(UITableViewCellStyle)LCDstyle reuseIdentifier:(NSString *)LCDreuseIdentifier{
    if (self = [super initWithStyle:LCDstyle reuseIdentifier:LCDreuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.LCDiconImageView = [[UIImageView alloc] init];
        self.LCDiconImageView.layer.cornerRadius = 16;
        self.LCDiconImageView.layer.masksToBounds = YES;
        [self.contentView addSubview:self.LCDiconImageView];
        self.LCDiconImageView.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .topSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 15)
        .bottomSpaceToView(self.contentView, 30);
        self.LCDtitleLabel = [[UILabel alloc] init];
        self.LCDtitleLabel.font = FontBoldSize(16, ScreenWidth);
        self.LCDtitleLabel.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.LCDtitleLabel];
        self.LCDtitleLabel.sd_layout
        .leftEqualToView(self.LCDiconImageView)
        .topSpaceToView(self.LCDiconImageView, 5)
        .autoHeightRatio(0);
        [self.LCDtitleLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth];
    }
    return self;
}
- (void)setLCDmodel:(LCDMIHomeModel *)LCDmodel{
    _LCDmodel = LCDmodel;
    [self.LCDiconImageView sd_setImageWithURL:[NSURL URLWithString:LCDmodel.pic_url_c]];
    self.LCDtitleLabel.text = LCDmodel.title;
}
@end
