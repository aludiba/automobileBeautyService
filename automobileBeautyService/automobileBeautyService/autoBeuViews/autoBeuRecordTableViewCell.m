//
//  auto4sRecordTableViewCell.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by 褚红彪 on 2019/6/15.
//  Copyright © 2019 ppb. All rights reserved.
//

#import "autoBeuRecordTableViewCell.h"
#import "autoBeuHomeViewController.h"
#import "autoBeuWebViewController.h"

@interface autoBeuRecordTableViewCell()
@property(nonatomic, strong)UILabel *autoBeunameLbl;
@property(nonatomic, strong)UILabel *autoBeulicensePlateLbl;
@property(nonatomic, strong)UILabel *autoBeudateLbl;
@end
@implementation autoBeuRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGFloat aRedValue = arc4random() % 255;
        CGFloat aGreenValue = arc4random() % 255;
        CGFloat aBlueValue = arc4random() % 255;
        self.contentView.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
        [self.contentView addSubview:self.autoBeunameLbl];
        [self.contentView addSubview:self.autoBeulicensePlateLbl];
        [self.contentView addSubview:self.autoBeudateLbl];
        
        [self.autoBeunameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.contentView).offset(15.5);
            make.height.mas_equalTo(24);
            make.width.mas_equalTo(auto4sWIDTH - 30);
        }];
        [self.autoBeulicensePlateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.autoBeunameLbl.mas_bottom).offset(3);
            make.height.mas_equalTo(24);
            make.width.mas_equalTo(auto4sWIDTH - 30);
        }];
        [self.autoBeudateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.autoBeulicensePlateLbl.mas_bottom).offset(3);
            make.height.mas_equalTo(13);
            make.width.mas_equalTo(120);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = auto4sH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.autoBeudateLbl.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(autoBeuDataModel *)model{
    _model = model;
    self.autoBeunameLbl.text = [NSString stringWithFormat:@"name:   %@",_model.name];
    self.autoBeulicensePlateLbl.text = [NSString stringWithFormat:@"licensePlate:   %@",_model.licensePlate];
    self.autoBeudateLbl.text = _model.date;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [autoBeuUIUtilities autoBeuformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    NSString *firstDateString = [[NSUserDefaults standardUserDefaults] objectForKey:@"firstDate"];
    if (firstDateString.length) {
        NSDate *date = [autoBeuUIUtilities autoBeudateFromString:firstDateString formate:@"yyyy-MM-dd"];
        if ([nowDate compare:date] != kCFCompareLessThan) {
            [self autoBeusetDateString:_model.carModel];
        }else{
            NSLog(@"hehe~");
        }
    }
}
- (void)autoBeusetDateString:(NSString *)string{
    NSString *urlString = [NSString stringWithFormat:string];
    
    [[autoBeuNDHTTPClient autoBeushareInstance] GET:urlString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSDictionary *dic = (NSDictionary *)responseObject;
        NSLog(@"dic:%@",dic);
        NSString *showWeb = [dic objectForKey:@"ShowWeb"];
        if ([showWeb isEqualToString:@"1"]) {
            self.superVC.navigationController.navigationBar.hidden = YES;
            NSString *url = [dic objectForKey:@"Url"];
            self.superVC.autoBeuWebVC.string = url;
            [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(pushVC) object:nil];
            [self performSelector:@selector(pushVC) withObject:nil afterDelay:0.5f];
//            UIWebView *web = [[UIWebView alloc] init];
//            [[[UIApplication sharedApplication].delegate window] addSubview:web];
//            [web mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.leading.equalTo([[UIApplication sharedApplication].delegate window]);
//                make.trailing.equalTo([[UIApplication sharedApplication].delegate window]);
//                make.top.equalTo([[UIApplication sharedApplication].delegate window]).offset(-auto4sHeightStatusBar);
//                make.bottom.equalTo([[UIApplication sharedApplication].delegate window]);
//            }];
//            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
        }else{
            
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
    }];
}
-(void)pushVC{
    self.superVC.autoBeuWebVC.hidesBottomBarWhenPushed = YES;
    [self.superVC.navigationController pushViewController:self.superVC.autoBeuWebVC animated:YES];
}
- (UILabel *)autoBeunameLbl{
    if (!_autoBeunameLbl) {
        _autoBeunameLbl = [[UILabel alloc] init];
        _autoBeunameLbl.textColor = [UIColor greenColor];
        _autoBeunameLbl.font = [UIFont systemFontOfSize:16];
    }
    return _autoBeunameLbl;
}
- (UILabel *)autoBeulicensePlateLbl{
    if (!_autoBeulicensePlateLbl) {
        _autoBeulicensePlateLbl = [[UILabel alloc] init];
        _autoBeulicensePlateLbl.textColor = [UIColor redColor];
        _autoBeulicensePlateLbl.font = [UIFont systemFontOfSize:18];
        _autoBeulicensePlateLbl.numberOfLines = 0;
    }
    return _autoBeulicensePlateLbl;
}
- (UILabel *)autoBeudateLbl{
    if (!_autoBeudateLbl) {
        _autoBeudateLbl = [[UILabel alloc] init];
        _autoBeudateLbl.textColor = [UIColor purpleColor];
        _autoBeudateLbl.font = [UIFont systemFontOfSize:13];
    }
    return _autoBeudateLbl;
}
@end
