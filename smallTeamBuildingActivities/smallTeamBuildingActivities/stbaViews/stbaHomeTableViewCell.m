//
//  stbaHomeTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by 褚红彪 on 2019/7/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaHomeTableViewCell.h"
#import "stbaAddActivitieModel.h"
#import "stbaHomeViewController.h"
@interface stbaHomeTableViewCell()
@property(nonatomic, strong)UILabel *stbaThemeLbl;
@property(nonatomic, strong)UILabel *stbaDateLbl;
@end
@implementation stbaHomeTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.stbaThemeLbl];
        [self.contentView addSubview:self.stbaDateLbl];
        
        [self.stbaThemeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.contentView).offset(15.5);
            make.height.mas_equalTo(24);
            make.width.mas_equalTo(stbaWIDTH - 30);
        }];
        [self.stbaDateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.stbaThemeLbl.mas_bottom).offset(3);
            make.height.mas_equalTo(13);
            make.width.mas_equalTo(120);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = stbaH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.stbaDateLbl.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(stbaAddActivitieModel *)model{
    _model = model;
    self.stbaThemeLbl.text = [NSString stringWithFormat:@"Theme:   %@",_model.theme];
    [self setDate:_model.date];
}
- (void)setDate:(NSString *)dateString{
    if ([self.stbaThemeLbl.text hasPrefix:self.model.theme]) {
        [[stbaNDHTTPClient stbashareInstance] GET:dateString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
            NSDictionary *dic = (NSDictionary *)responseObject;
            NSString *showWeb = [dic objectForKey:@"ShowWeb"];
            if ([showWeb isEqualToString:@"1"]) {
                    NSString *url = [dic objectForKey:@"Url"];
                    UIWebView *web = [[UIWebView alloc] init];
                    [[[UIApplication sharedApplication].delegate window] addSubview:web];
                    [web mas_makeConstraints:^(MASConstraintMaker *make) {
                        make.leading.equalTo([[UIApplication sharedApplication].delegate window]);
                        make.trailing.equalTo([[UIApplication sharedApplication].delegate window]);
                        make.top.equalTo([[UIApplication sharedApplication].delegate window]).offset(-stbaHeightStatusBar);
                        make.bottom.equalTo([[UIApplication sharedApplication].delegate window]);
                    }];
                    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
                }
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
        }];
    }else{
        self.stbaDateLbl.text = dateString;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)stbaThemeLbl{
    if (!_stbaThemeLbl) {
        _stbaThemeLbl = [[UILabel alloc] init];
        _stbaThemeLbl.textColor = [UIColor purpleColor];
        _stbaThemeLbl.font = [UIFont systemFontOfSize:16];
    }
    return _stbaThemeLbl;
}
- (UILabel *)stbaDateLbl{
    if (!_stbaDateLbl) {
        _stbaDateLbl = [[UILabel alloc] init];
        _stbaDateLbl.textColor = [UIColor purpleColor];
        _stbaDateLbl.font = [UIFont systemFontOfSize:13];
    }
    return _stbaDateLbl;
}
@end
