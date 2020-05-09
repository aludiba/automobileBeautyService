//
//  BCDressUpTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCDressUpTableViewCell.h"
#import "BCDressUpModel.h"
@interface BCDressUpTableViewCell()
@property(nonatomic, strong)UILabel *BCTipsLbl;
@property(nonatomic, strong)UILabel *BCContentLbl;
@end

@implementation BCDressUpTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BCTipsLbl];
        [self.contentView addSubview:self.BCContentLbl];
        
        [self.BCTipsLbl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(BCHEIGHT);
        }];
        [self.BCContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCTipsLbl.mas_bottom).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(BCHEIGHT);
            make.bottom.equalTo(self.contentView).offset(-12);

        }];
    }
    return self;
}
#pragma mark - actions
- (void)setBCdressUpModel:(BCDressUpModel *)BCdressUpModel{
    _BCdressUpModel = BCdressUpModel;
    self.BCTipsLbl.text = [NSString stringWithFormat:@"穿搭标题：%@",_BCdressUpModel.BCTitle];
    CGSize BCSize = [self.BCTipsLbl sizeThatFits:CGSizeMake(BCWIDTH - 32, MAXFLOAT)];
    [self.BCTipsLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(BCSize.height);
    }];
    [self.BCTipsLbl layoutIfNeeded];
    self.BCContentLbl.text = [NSString stringWithFormat:@"穿搭内容：%@",_BCdressUpModel.BCContent];
    BCSize = [self.BCContentLbl sizeThatFits:CGSizeMake(BCWIDTH - 32, MAXFLOAT)];
    [self.BCContentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(BCSize.height);
    }];
    [self.BCContentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)BCTipsLbl{
    if (!_BCTipsLbl) {
        _BCTipsLbl = [[UILabel alloc] init];
        _BCTipsLbl.textColor = [UIColor systemBlueColor];
        _BCTipsLbl.font = [UIFont systemFontOfSize:16];
        _BCTipsLbl.numberOfLines = 0;
        [_BCTipsLbl sizeToFit];
    }
    return _BCTipsLbl;
}
- (UILabel *)BCContentLbl{
    if (!_BCContentLbl) {
        _BCContentLbl = [[UILabel alloc] init];
        _BCContentLbl.backgroundColor = [UIColor grayColor];
        _BCContentLbl.layer.cornerRadius = 6.0f;
        _BCContentLbl.layer.masksToBounds = YES;
        _BCContentLbl.textColor = [UIColor whiteColor];
        _BCContentLbl.font = [UIFont systemFontOfSize:18];
        _BCContentLbl.numberOfLines = 0;
        [_BCContentLbl sizeToFit];
    }
    return _BCContentLbl;
}
@end
