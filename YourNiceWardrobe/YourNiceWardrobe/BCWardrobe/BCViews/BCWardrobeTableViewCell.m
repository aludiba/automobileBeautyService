//
//  BCWardrobeTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCWardrobeTableViewCell.h"
#import "BCWardrobeModel.h"

@interface BCWardrobeTableViewCell()
@property(nonatomic, strong)UILabel *BCtypesTitleLbl;//类型标题
@property(nonatomic, strong)UILabel *BCtypesContentLbl;//类型内容
@property(nonatomic, strong)UILabel *BCnumberTitleLbl;//尺寸标题
@property(nonatomic, strong)UILabel *BCnumberContentLbl;//尺寸内容
@property(nonatomic, strong)UILabel *BCstorageTitleLbl;//储藏地点标题
@property(nonatomic, strong)UILabel *BCstorageContentLbl;//储藏地点内容
@property(nonatomic, strong)UILabel *BCpurchasetimeTitleLbl;//购买时间标题
@property(nonatomic, strong)UILabel *BCpurchasetimeContentLbl;//购买时间内容
@property(nonatomic, strong)UIView *BCLine;//底线
@end
@implementation BCWardrobeTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BCtypesTitleLbl];
        [self.contentView addSubview:self.BCtypesContentLbl];
        [self.contentView addSubview:self.BCnumberTitleLbl];
        [self.contentView addSubview:self.BCnumberContentLbl];
        [self.contentView addSubview:self.BCstorageTitleLbl];
        [self.contentView addSubview:self.BCstorageContentLbl];
        [self.contentView addSubview:self.BCpurchasetimeTitleLbl];
        [self.contentView addSubview:self.BCpurchasetimeContentLbl];
        [self.contentView addSubview:self.BCLine];
        
        [self.BCtypesTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.contentView).offset(12); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(18);
        }];
        [self.BCtypesContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCtypesTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(21);
        }];
        [self.BCnumberTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCtypesContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(18);
        }];
        [self.BCnumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCnumberTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(21);
        }];
        [self.BCstorageTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCnumberContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(18);
        }];
        [self.BCstorageContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCstorageTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(21);
        }];
        [self.BCpurchasetimeTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCstorageContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(18);
        }];
        [self.BCpurchasetimeContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCpurchasetimeTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(21);
        }];
        [self.BCLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCpurchasetimeContentLbl.mas_bottom).offset(11); make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - action
- (void)setBCWardrobemodel:(BCWardrobeModel *)BCWardrobemodel{
    _BCWardrobemodel = BCWardrobemodel;
    self.BCtypesContentLbl.text = _BCWardrobemodel.BCtypes;
    self.BCnumberContentLbl.text = _BCWardrobemodel.BCnumber;
    self.BCstorageContentLbl.text = _BCWardrobemodel.BCstorage;
    self.BCpurchasetimeContentLbl.text = _BCWardrobemodel.BCpurchasetime;
}
#pragma mark - 属性懒加载
- (UILabel *)BCtypesTitleLbl{
    if (!_BCtypesTitleLbl) {
        _BCtypesTitleLbl = [[UILabel alloc] init];
        _BCtypesTitleLbl.textColor = [UIColor blueColor];
        _BCtypesTitleLbl.font = [UIFont systemFontOfSize:15];
        _BCtypesTitleLbl.text = @"类型:";
    }
    return _BCtypesTitleLbl;
}
- (UILabel *)BCtypesContentLbl{
    if (!_BCtypesContentLbl) {
        _BCtypesContentLbl = [[UILabel alloc] init];
        _BCtypesContentLbl.textColor = [UIColor darkGrayColor];
        _BCtypesContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BCtypesContentLbl;
}
- (UILabel *)BCnumberTitleLbl{
    if (!_BCnumberTitleLbl) {
        _BCnumberTitleLbl = [[UILabel alloc] init];
        _BCnumberTitleLbl.textColor = [UIColor blueColor];
        _BCnumberTitleLbl.font = [UIFont systemFontOfSize:15];
        _BCnumberTitleLbl.text = @"尺码:";
    }
    return _BCnumberTitleLbl;
}
- (UILabel *)BCnumberContentLbl{
    if (!_BCnumberContentLbl) {
        _BCnumberContentLbl = [[UILabel alloc] init];
        _BCnumberContentLbl.textColor = [UIColor darkGrayColor];
        _BCnumberContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BCnumberContentLbl;
}
- (UILabel *)BCstorageTitleLbl{
    if (!_BCstorageTitleLbl) {
        _BCstorageTitleLbl = [[UILabel alloc] init];
        _BCstorageTitleLbl.textColor = [UIColor blueColor];
        _BCstorageTitleLbl.font = [UIFont systemFontOfSize:15];
        _BCstorageTitleLbl.text = @"储存位置:";
    }
    return _BCstorageTitleLbl;
}
- (UILabel *)BCstorageContentLbl{
    if (!_BCstorageContentLbl) {
        _BCstorageContentLbl = [[UILabel alloc] init];
        _BCstorageContentLbl.textColor = [UIColor darkGrayColor];
        _BCstorageContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BCstorageContentLbl;
}
- (UILabel *)BCpurchasetimeTitleLbl{
    if (!_BCpurchasetimeTitleLbl) {
        _BCpurchasetimeTitleLbl = [[UILabel alloc] init];
        _BCpurchasetimeTitleLbl.textColor = [UIColor blueColor];
        _BCpurchasetimeTitleLbl.font = [UIFont systemFontOfSize:15];
        _BCpurchasetimeTitleLbl.text = @"购买时间:";
    }
    return _BCpurchasetimeTitleLbl;
}
- (UILabel *)BCpurchasetimeContentLbl{
    if (!_BCpurchasetimeContentLbl) {
        _BCpurchasetimeContentLbl = [[UILabel alloc] init];
        _BCpurchasetimeContentLbl.textColor = [UIColor darkGrayColor];
        _BCpurchasetimeContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BCpurchasetimeContentLbl;
}
- (UIView *)BCLine{
    if (!_BCLine) {
        _BCLine = [[UIView alloc] init];
        _BCLine.backgroundColor = BCH_Color(242, 242, 242, 1);
    }
    return _BCLine;
}
@end
