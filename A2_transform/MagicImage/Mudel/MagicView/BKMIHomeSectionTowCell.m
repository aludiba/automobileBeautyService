#import "BKMIHomeSectionTowCell.h"
#import "BKMIHomeModel.h"
@interface BKMIHomeSectionTowCell ()
@property (nonatomic, strong) UIImageView * BKiconImageView;
@property (nonatomic, strong) UILabel *BKtitleLabel;
@property (nonatomic, strong) UILabel *BKpriceLabel;
@property (nonatomic, strong) UIImageView *BKcoinsImageView;
@end
@implementation BKMIHomeSectionTowCell
- (instancetype)initWithStyle:(UITableViewCellStyle)BKstyle reuseIdentifier:(NSString *)BKreuseIdentifier{
    if (self = [super initWithStyle:BKstyle reuseIdentifier:BKreuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.BKiconImageView = [[UIImageView alloc] init];
        self.BKiconImageView.layer.cornerRadius = 10;
        self.BKiconImageView.layer.masksToBounds = YES;
        [self.contentView addSubview:self.BKiconImageView];
        self.BKiconImageView.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .topSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 15)
        .bottomSpaceToView(self.contentView, 30);
        self.BKtitleLabel = [[UILabel alloc] init];
        self.BKtitleLabel.font = FontBoldSize(16, ScreenWidth);
        self.BKtitleLabel.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.BKtitleLabel];
        self.BKtitleLabel.sd_layout
        .leftEqualToView(self.BKiconImageView)
        .topSpaceToView(self.BKiconImageView, 5)
        .autoHeightRatio(0);
        [self.BKtitleLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth];
    }
    return self;
}
- (void)setBKmodel:(BKMIHomeModel *)BKmodel{
    _BKmodel = BKmodel;
    [self.BKiconImageView sd_setImageWithURL:[NSURL URLWithString:BKmodel.pic_url_c]];
    self.BKtitleLabel.text = BKmodel.title;
}
@end
