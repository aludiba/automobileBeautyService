#import "BKMIHomeToolsView.h"
#import "UIImage+GradientColor.h"
#import "UIColor+Hex.h"

@implementation BKMIHomeToolsView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        CGFloat BKw = (ScreenWidth - 20)/2;
        CGFloat BKh = BKw * 2/5;
        
        NSArray * BKimageArray = @[@"a",@"b"];
        NSArray * BKtitleArray = @[@"Photo",@"Hotstickers"];
        NSArray * BKcontentArray = @[@"Beautiful you",@"Hot post sticker"];
        UIColor *BKColor4 = [UIColor colorWithHexString:@"#8C1BAB"];
        UIColor *BKColor5 = [UIColor colorWithHexString:@"#28C76F"];
        for (NSInteger BKi = 0; BKi < 2; BKi++) {
            UIView *BKbgView = [[UIView alloc] init];
            BKbgView.userInteractionEnabled = YES;
            BKbgView.tag = 104 + BKi;
            UITapGestureRecognizer *BKtap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BKtap:)];
            [BKbgView addGestureRecognizer:BKtap];
            [self addSubview:BKbgView];
            CGFloat leftMargin;
            if (BKi == 0) {
                leftMargin = 5;
            }else{
                leftMargin = 15;
            }
            BKbgView.sd_layout
            .leftSpaceToView(self, BKi * (BKw - 10) + leftMargin)
            .topEqualToView(self)
            .widthIs(BKw - 10)
            .heightIs(BKh);
            
//            UIColor *BKColor = [UIColor colorWithHexString:@"#EA5455"];
//            UIColor *BKColor1 = [UIColor colorWithHexString:@"#7367F0"];
//            UIColor *BKColor2 = [UIColor colorWithHexString:@"#F6416C"];
//            UIColor *BKColor3 = [UIColor colorWithHexString:@"#F8D800"];
            if (BKi == 0) {
                 [BKbgView setBackgroundColor:BKColor4];
            }else{
                [BKbgView setBackgroundColor:BKColor5];
            }
//            UIImage *bgImg = [UIImage gradientColorImageFromColors:@[BKColor,BKColor1,BKColor2,BKColor3,BKColor4,BKColor5] gradientType:GradientTypeLeftToRight imgSize:CGSizeMake(ScreenWidth - 10,(ScreenWidth-20)*3/5)];
//            [BKbgView setBackgroundColor:[UIColor colorWithPatternImage:bgImg]];
            
            UIView * BKoneView = [[UIView alloc] init];
            [BKbgView addSubview:BKoneView];
            BKoneView.sd_layout
            .leftSpaceToView(BKbgView, 0)
            .topEqualToView(BKbgView)
            .rightSpaceToView(BKbgView, 0)
            .bottomEqualToView(BKbgView);
            UIImageView * BKiconImageView = [[UIImageView  alloc] initWithImage:PEImage(BKimageArray[BKi])];
            [BKoneView addSubview:BKiconImageView];
            BKiconImageView.sd_layout
            .rightSpaceToView(BKoneView, 15)
            .centerYEqualToView(BKoneView)
            .widthIs(55)
            .heightIs(50);
            UILabel * BKtitleLabel = [[UILabel alloc] init];
            BKtitleLabel.font = FontBoldSize(17, ScreenWidth);
            BKtitleLabel.textColor = UIColor.blackColor;
            BKtitleLabel.text = BKtitleArray[BKi];
            [BKoneView addSubview:BKtitleLabel];
            BKtitleLabel.sd_layout
            .leftSpaceToView(BKoneView, 15)
            .centerYEqualToView(BKoneView).offset(-10)
            .autoHeightRatio(0);
            [BKtitleLabel setSingleLineAutoResizeWithMaxWidth:180];
            UILabel * BKcontentLabel = [[UILabel alloc] init];
            BKcontentLabel.font = FontSize(13, ScreenWidth);
            BKcontentLabel.textColor = UIColor.grayColor;
            BKcontentLabel.text = BKcontentArray[BKi];
            [BKoneView addSubview:BKcontentLabel];
            BKcontentLabel.sd_layout
            .leftEqualToView(BKtitleLabel)
            .centerYEqualToView(BKoneView).offset(10)
            .autoHeightRatio(0);
            [BKcontentLabel setSingleLineAutoResizeWithMaxWidth:190];
        }
    }
    return self;
}
- (void)BKtap:(UITapGestureRecognizer *)BKtap{
    if (self.block) {
        self.block(BKtap.view.tag-100);
    }
}
@end
