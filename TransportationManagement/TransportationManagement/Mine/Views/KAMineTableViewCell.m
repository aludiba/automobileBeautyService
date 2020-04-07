//
//  KAMineTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KAMineTableViewCell.h"
#import "KAMineModel.h"
@interface KAMineTableViewCell()
@property(nonatomic, strong)UILabel *KATitleLbl;
@property(nonatomic, strong)UILabel *KAcontentLbl;
@property(nonatomic, strong)UIImageView *KAImgView;
@property(nonatomic, strong)UIView *KALine;
@end
@implementation KAMineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.KATitleLbl];
        [self.contentView addSubview:self.KAcontentLbl];
        [self.contentView addSubview:self.KAImgView];
        [self.contentView addSubview:self.KALine];
        
        [self.KATitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.height.mas_equalTo(22);
            make.trailing.equalTo(self.KAcontentLbl.mas_leading).offset(-10);
        }];
        [self.KAcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(90);
            make.height.mas_equalTo(24);
            make.trailing.equalTo(self.KAImgView.mas_leading).offset(0);
        }];
        [self.KAImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
            make.trailing.equalTo(self.contentView).offset(-16);
        }];
        [self.KALine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KATitleLbl.mas_bottom).offset(14);
            make.leading.equalTo(self.contentView).offset(16);
            make.height.mas_equalTo(1);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setKAminemodel:(KAMineModel *)KAminemodel{
    _KAminemodel = KAminemodel;
    self.KATitleLbl.text = _KAminemodel.KAtitle;
    self.KAcontentLbl.text = _KAminemodel.KAcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)KATitleLbl{
    if (!_KATitleLbl) {
        _KATitleLbl = [[UILabel alloc] init];
        _KATitleLbl.textColor = [UIColor grayColor];
        _KATitleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _KATitleLbl;
}
- (UILabel *)KAcontentLbl{
    if (!_KAcontentLbl) {
        _KAcontentLbl = [[UILabel alloc] init];
        _KAcontentLbl.textColor = [UIColor blackColor];
        _KAcontentLbl.font = [UIFont systemFontOfSize:22];
    }
    return _KAcontentLbl;
}
- (UIImageView *)KAImgView{
    if (!_KAImgView) {
        _KAImgView = [[UIImageView alloc] init];
        _KAImgView.image = [UIImage imageNamed:@"KAbtn_arrow"];
    }
    return _KAImgView;
}
- (UIView *)KALine{
    if (!_KALine) {
        _KALine = [[UIView alloc] init];
        _KALine.backgroundColor = KAH_Color(242, 242, 242, 1);
    }
    return _KALine;
}
@end
