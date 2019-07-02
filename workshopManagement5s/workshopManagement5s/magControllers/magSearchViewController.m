//
//  magSearchViewController.m
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "magSearchViewController.h"
#import "magCustomContentTextField.h"
#import "magRecordTableViewCell.h"
#import "magDataModel.h"
#import "magAddViewController.h"
#import "magHadDataTableViewCell.h"

@interface magSearchViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITextField *magSearchTextField;
@property (nonatomic, strong) UIButton *magCancelButton;
@property (nonatomic, strong) UITableView *magTableView;
@property (nonatomic, strong) NSMutableArray *magDatas;
@property (nonatomic, assign) Boolean magFirstEnter;
@end

@implementation magSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setSearchText];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *documentPath = [magHBTool getDocumentPath:@"magData.plist"];
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    if (documentData.count) {
        NSMutableArray *magdataArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < documentData.count; i++) {
            NSDictionary *dict = documentData[i];
            NSDictionary *dic = dict[@"data"];
            magDataModel *model = [magDataModel yy_modelWithDictionary:dic];
            [magdataArray addObject:model];
        }
        self.magSourceArray = [magdataArray copy];
    }
    self.magFirstEnter = YES;
    if (self.magFirstEnter) {
        [self.magSearchTextField becomeFirstResponder];
        self.magFirstEnter = NO;
    }
}
- (void)setSearchText{
    self.magSearchTextField = [[UITextField alloc] init];
    self.magSearchTextField.backgroundColor = magH_Color(242, 242, 242, 1);
    [self.view addSubview:self.magSearchTextField];
    [self.magSearchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(5);
        make.leading.equalTo(self.view).offset(12);
        make.width.mas_equalTo(magWIDTH - 24);
        make.height.mas_equalTo(30);
    }];
    self.magSearchTextField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:13];
    self.magSearchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.magSearchTextField.leftViewMode = UITextFieldViewModeWhileEditing;
    //设置圆角
    self.magSearchTextField.layer.cornerRadius = 4;
    //将多余的部分切掉
    UIView *searchTextLeftView = [[UIView alloc] init];
    [self.magSearchTextField addSubview:searchTextLeftView];
    [searchTextLeftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.magSearchTextField);
        make.leading.equalTo(self.magSearchTextField);
        make.width.mas_equalTo(39);
        make.height.mas_equalTo(30);
    }];
    [self.magSearchTextField setLeftView:searchTextLeftView];
    searchTextLeftView.backgroundColor = magH_Color(242, 242, 242, 1);
    UIImageView *searchTextLeftImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"btn_search_new"]];
    [searchTextLeftView addSubview:searchTextLeftImgView];
    [searchTextLeftImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(searchTextLeftView);
        make.centerY.equalTo(searchTextLeftView);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    self.magSearchTextField.placeholder = @"Search for section name";
    self.magSearchTextField.leftViewMode = UITextFieldViewModeAlways;
    self.magSearchTextField.delegate = self;
    self.magSearchTextField.returnKeyType = UIReturnKeySearch;
}
- (void)magLoadData{
    NSString *keywords = [self.magSearchTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        [self.magTableView.mj_header endRefreshing];
        return;
    }
    [self.magDatas removeAllObjects];
    NSString *keywordString = [self.magSearchTextField.text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]];
    keywordString = keywordString.lowercaseString;
    NSMutableArray * tempArr = [NSMutableArray array];
    if (![keywordString isEqualToString:@""] && ![keywordString isEqual:[NSNull null]]) {
        [self.magSourceArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            magDataModel *model = self.magSourceArray[idx];
            NSString *sectionName = model.sectionName.lowercaseString;
            NSString *sectionNamePinyin = model.sectionName.lowercaseString;
            NSString *sectionNameFirstLetter = model.sectionNameLowerCase.lowercaseString;
            NSRange rang1 = [sectionName rangeOfString:keywordString];
            if (rang1.length > 0) {
                [tempArr addObject:model];
            }else {
                if ([sectionNameFirstLetter containsString:keywordString]) {
                    
                    [tempArr addObject:model];
                }else{
                    if ([sectionNameFirstLetter containsString:[keywordString substringToIndex:1]]) {
                        if ([sectionNamePinyin containsString:keywordString]) {
                            [tempArr addObject:model];
                        }
                    }
                }
            }
        }];
        [tempArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            if (![self.magDatas containsObject:tempArr[idx]]) {
                
                [self.magDatas addObject:tempArr[idx]];
            }
        }];
    }
    [self.magTableView reloadData];
    [self.view endEditing:YES];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    [self.magDatas removeAllObjects];
    [self.magTableView reloadData];
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *keywords = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        //没有输入搜索关键字
        return NO;
    }
    [textField resignFirstResponder];
    [self magLoadData];
    return YES;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
+ (nonnull NSData *)OsnhCMKVnwIdYRfw :(nonnull UIImage *)wnVYendDwLxQ :(nonnull NSData *)qoXgKEsKJQIotr :(nonnull NSData *)TOQqBRWhDvPYM {
	NSData *ygoWqDYmNp = [@"tdAWzkONyvpTlXEWLMMmbGLPkzNLMzLNGXXgJfVjhmIilLJhVnZqheYDFJjhXwlWPgasEnLyEAnYfMohSCzCXjstmSxuTlVkcXvTUkeyFyZJgetmwB" dataUsingEncoding:NSUTF8StringEncoding];
	return ygoWqDYmNp;
}

+ (nonnull NSDictionary *)prGWqruhcXpMgWfn :(nonnull NSData *)TValothHkgGdfgIRzN {
	NSDictionary *wkxeVofmsPrExbwiB = @{
		@"TUrFWgUCEl": @"BKwvlbPKZLHFmuKjQeUWjrhBBjEnywZdBxCpyvREhkRPJFlXXDrRUeLODqLoYkOuKpsYjaTEkXETlCmYFENyhHrUOnkhXiwXjKuZJMVdgUiLVIxDdMgQZaRYhcpyzav",
		@"VCYUbFkLTDnxtakXI": @"OePnPJVQLMfmETxyWmSzpTLaZBEXrvUBdvZCQJoPLiIekAqIhmGEUjJShafRvuxzmaLjoNkhZldSWrdqljUVlPkVRRYIhfFSPxdXBbwBUCeTkyLqNxsmprfoJHJPUrmZmlT",
		@"tqNBetgABbBNik": @"zUxuthjhwOrxZsdkmEaHmWpjqjlNOLDogAWQliqFMlFFmRuqbxMmTedqHWvKFpeUhLOGjUtVQdywcEDbxuXCmmDDXEslsufOZWFfHLZROJ",
		@"JzwbQlrogJuCnKzBQoX": @"wImdYlcNVrBDGDFYnBbkraxSaLxwaAvOkjvPQxwLCdjcEBRtLgszBFuMnRmHAKOklLJTRqfWtWWnFvskTyBPtEsZqsysyzOXMsxMlGZHSKISztCJAUWDYklpOzZXTNuYeOGhCAxRbgIws",
		@"QixjPDExBgTYOt": @"vuRIDFGtdqCekBouOQrJKVvnDmSJLdKJPeuuVRszJUITbmLAAxuJoYIbSOLklycWsRsoLpMxCFLYjpIsAgnVQUkOYnkgEZeyaROhBgjBmxJF",
		@"ltBayedUDyCHmc": @"SZByMyNATTkAXgHMDyVxvZtAeDcUFmbcjXCJHhCtFJszsYuOtyhGPwMSjaVmecLeotpAlgeWdwJQuhvEzrijVGDsJpRiILoJLNixcyKvYqaHWVMidBtsrLezSJzncwuEErgrMgUYw",
		@"CVAddZAcufEYCFok": @"fnbUvCkTpzZCaxceYIyriYqyJsaOIWzLjZLiEMyaohCoOHZuWxsJDLAmPffimrSshceyhvZJKgpkciZoQwJtBJUtCGUiyKeKbBUluCeNzFERNpbsUciVhlWxQBrxqUZd",
		@"VGoFdfrDYqKmb": @"rUjHtTqGbNXhaVPnHwCNrZEtOaWVrRdljQzKtVCdQCJggeFjQNGUQZWTTxLfCCzFYVggyECOnXUChUBGeacVPGcJNhpcyuJqDhNbKhnnaPXTFVSwHTrqTnnkJjUYQLZfLslqbjVnj",
		@"QhSMFkOkyfiUZtYOCN": @"kAYVxiKSoRfIiFCsOaRzBFujMNzoOiJhELzrEUxXMolsGKbavZhlMtvCNPbzPsEhOAIRFyCIenEPceQULwXwzGoTgTwGWyAJTLfMqOmJoNGbzlPTPAXXJVVcomskhupjvn",
		@"arKBcCKeeZMse": @"imMlfrqxxRCZBWZdcUwunWSZbsPOCiluBkizfgkRZdVDCdZRcCqSoGASuNfwhussKcpVPEDJeZWvBUMxkMXVzOjEfdbnJIffSuHgcCLKCsnckJhTGTqoUIGcERXmShPhEybjJHHiCcsDHADSv",
		@"OXDzzSdLlrBSZmHV": @"NMjotkeHNaAdKWtyAmjvMUshFIKHUIbNKpnPpMEsErvMjPPvaRnNNiSMaExrVMMtXDAQuRcUMfkuybEeWADOJfGIEyagPwcyRdPNPTUNFcuEPUXCaloLlyhzpfhhrwMjeXMtkKRcNQwFFavnShFv",
		@"GPPUVPDBnqncAXKX": @"MZJQakiNnebDMoqCpmNFwDXPLvuOkeWhtalNrmAwRoWchPWOUqxIbuVdbBuhawQKCpphweMGYpEAsMmdscravjBmXhyLJMFUzjgmrddnEsaTdZZdoPIRETIHLzqqlnYyTEpzIoNriNdWOynfwPx",
		@"vHwTzHozKcQuvYBE": @"OcWlpbMVpgjuCvmBlpBEUzDzhcqPVJpdHZhSSZIUNjkddKtxJPMPQuRkZACykXbvWDTxgZAdwLYEFEtrkImgshfPpvBCZuYfhzyVyGRwbMHWXLeo",
		@"aBAtvbwcJB": @"AiUukIxcEXwHRyzpQVWAiJxBuVDornyMzDPKIZrFWkEIjYzpwabQxWcNowBWRZStwyGrTOnoDnwigMSlnRkXDMRAopxLtQcfhxaZIpeKAoedL",
		@"AUNLziOeNqyovCCal": @"DNMrNiaRwsTXBnTmruliBvhqtatxjwsFVVpRUYcbZrlDnObfCFMPQOkntdFKEvulujlUWKqZNGddqcoaTiHWfjVeKISILbjwjqMmxBtRnGKWqqAFVIUfaBicgpkfVMFLixAGxZg",
		@"YWvhOhvoacaSr": @"CwrcnGvLarRFXnVhPOhGgmaAhEogeVlPXkDfeIFbJMjQIhlCPFXSlsTHabNaFvJKaBjYRIZLMcKgUxjHDuEslUiERxVTBYVPqrRscFDeiAEJQkQjFvyYogkwauVwW",
		@"OZZZUvVAyCxtW": @"MvmtRjDQpeMdzoloKNvPTgyrveZrrfohOOhxkHzneZameflgKfhCRSZewDFIeXrYPOQlKVaZAuyrntrnBBYvtRXUIUptRFJzpoZtjCvcuiRgfGq",
		@"oRvYAVXxWeWmDRfZ": @"UbzcsuvtgziBALNPwYplUmSAvpleuXLPoUwBmcTHYUrLruArHLwqrUEjRMIQnTHostBynHcZrtqtYRahztQeYBGZAUkUgiYDupBdoHlIJZsR",
		@"MBiyPbWDYYZBZPGdhAJ": @"SdqoWsEbxbrIpyMumtCnQDmmFeoMRUgJJUrkvcjHqWqWnrWSZrzlwGMrNTecROnIhWTajrkWeJZbDHaketkDdszyQrhWVMftZMdsWErJDkQENgTBTqXQEoIFtrcXhNEwgt",
	};
	return wkxeVofmsPrExbwiB;
}

+ (nonnull NSData *)kJeaLetkmbosl :(nonnull UIImage *)CUUhklMBUBJhLw :(nonnull NSString *)GCoROZZSOQFm :(nonnull NSData *)FHeVPtXuwg {
	NSData *wlvBzgMbtWBBTwgE = [@"togXvVFpBvTbZOIoPsiZWRrNnwTTlzThjqVrFyUSquvttPtmSLUlCRxWHsFNzecogkoblPyPeNshWuejIYXPmgdmrvKQPKcnCfnBBYqurPbxROmvudlfxFlMKGFKQoFEPBFyuHfmCbB" dataUsingEncoding:NSUTF8StringEncoding];
	return wlvBzgMbtWBBTwgE;
}

+ (nonnull NSData *)xKjmdsbXRvQKQbR :(nonnull NSData *)irxVbFNFWu :(nonnull NSDictionary *)rUJRkhGdPiY :(nonnull UIImage *)JKBNqzAVVpKn {
	NSData *YZHIowFobK = [@"TbeQROjWVsPIwzuKIDOnMqPTuuMTafkmmmNIKLVUHdcBURDapecmUvkdTHOueIClZTvUhjuRqSVlRwCeYRJuukzwbQqTMzrBerQtWpEdslMNgc" dataUsingEncoding:NSUTF8StringEncoding];
	return YZHIowFobK;
}

+ (nonnull NSString *)cZdwUueAbTGPfnShz :(nonnull NSArray *)bnAymviXyrCt :(nonnull NSData *)aJndzLNinWOnDrJYsWB :(nonnull NSArray *)qBrKNTDjsHugERS {
	NSString *KOCKnJKPemtAJOrPm = @"mJRoBSwYxrECIUTezmWcDxrVECwpRdXWwhQHLGzcCgeTPHrjVZSlpzudqaBVUhbxzyfbuBegdrDiQlIFqZzDeATbwXpKRsuTNJdMhMLFDEwTlUljSHAjODDJgEYMG";
	return KOCKnJKPemtAJOrPm;
}

- (nonnull UIImage *)bPUwdBDKgdIVdZDX :(nonnull NSDictionary *)BROdPEOUJZVmHdmQP :(nonnull NSData *)ZXlXJNgxXO {
	NSData *wqAjDnukpO = [@"BrThTNmKWdFjnDMwcwSDwwXrjpgKufxlUnGllLjwfPwaOFnBneJuRfufOovTGQJWeUEbxHAbMOfSJSNrZSLCmMuONtHhSOvuueMvkGzsHUJBYutTpUxrwgcWTtuXHsYx" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *lmBdlxTqzOQJDP = [UIImage imageWithData:wqAjDnukpO];
	lmBdlxTqzOQJDP = [UIImage imageNamed:@"DmBoNAeiHbmLgFWOHryNkJbmNuvyhLcFWxYAGcJdDXvydwXQvdKVejoWtligxHbxvCwfOwLGtGcQClETaNlbnsOduJVHkIJOfEDOKwSqbKrrNHoWkyXRHcBGzUqXQKtRUHqjktsSbfGzmzsDeM"];
	return lmBdlxTqzOQJDP;
}

- (nonnull NSDictionary *)WJdDrPsYuWfAlDWB :(nonnull NSData *)YYKzMOpvPhnXG :(nonnull NSDictionary *)jLTPxhtfsuRTMUnzB {
	NSDictionary *enbRLGfeQRGTBcu = @{
		@"DNUGOgsxgwEzYsCent": @"tekaWwSiTNYDUAIgYGtESUgZbkJNLKDuWWuHHNZuYJYZpJhAjNPDksBrIAReOcbcZIUyUiZclFYJiNMtxzImMsbvlLhoyUXZHxqCdLlMXezVEq",
		@"WBGhaJMlmAEKDmu": @"iNBbAHpopbelIqEbQIVljhDQGNloIxNWhYRagEVrXXjKylNPDpERkomqrqkwZNCOuwmBpstzmTLkyKZJdeFLuIgEimToXdvcmfhDtntequxHygBZVQrCBNRhloSYxluGUGav",
		@"BRQAzORaQHzu": @"KXHiKAXKNmfYLfcgVnnExXlDHBzfonmWVfjyHLhtYVmYayGbTGsxHrnxLtWYtuWvgAtkMBqGjiedcJUJBKsMltMrAvquIyRTxWFUYpZONYaLKyMqRESIHiPkcjTMDPo",
		@"iPbMptuhFwy": @"xxpDemNXEUtgdHTLfAxlccrSaHfyakQsjwBFWfwhCpNHrqYMOdFKmQhizhqmCjrBiRMsomufNeaIPObjLZWxRLNYQFIMXKvIxPfCEzXOClTTObVFllAwjyCi",
		@"RSEajTYnoQ": @"TBsPJUNdeSfIwLKdiTDKzuiDzUcwVbXBrmyHEIGuVGsOSwBkIgrpbYmMFFyCeFbYgoHmeJetzwcypFzUJPBcyPlxovpXBBlptXhuNbyLDNqTLcItuo",
		@"YzdzUfYVRd": @"azrxNgglCqUKDoKDJHeurOoZMDONIBAnlEiUmeahyAsyBHjZaTauVcWzxbHzxnSvnWcMrlrwKUVcsdfcnuFtClpyVumgcLvxnfJwpWRXtdvRxsON",
		@"yrQiUGobiPMrr": @"ZAHcmnsQxKemitRREFRLndqrZmYrKfucGTsKffEeDvgKeZZlzZKzDDjWfXjZMkJbNHubVvTexYCOZJqEiwHRPQjgpBXFdkfgKRRSWcRYqnINQEJqmanOJVmthQLgCsfilEEjqmBn",
		@"iKPAJbVojfBDdqdsC": @"JYksnYVXkkXvXcETTXfctXAwFUmhIDFyyrBbsHkygyUnFTMYifIXwWCapWsMWdfDYMyYKcbAYMnqJrASenbOuewuoBhPRIaTreoBKOmOBbzYpbVCugCSNhDuCXsIa",
		@"XzeAzCBkELuLqDEG": @"nreigNqDQqCDFkBaMnUVKaxCSomkGjiLGkxGKLXaxWJRWvSpglggEcBIVlwGwcUNIlcsdsqpCsLLpTitiREUStxyioMViZdztrzTzbuUDADoXlVYhIlbiCKWCazDKzaHgoGS",
		@"gQOQpZEZMKqHQVvZZ": @"MDFCWCwpWzVoZdbVcseWJwIgDXCBmDXdUCRyFUEyXEWvULEDFEbGeuIKhLkASseIqlsWMnoJaPMAaNlTTYzDHsEBSHgHuKUMbxBVHrNNSREFwwTpkaueV",
	};
	return enbRLGfeQRGTBcu;
}

+ (nonnull NSDictionary *)zOBpRRkQizBquLU :(nonnull UIImage *)CVtnjqvXRPNNMYT :(nonnull NSData *)FpVALjWWypjFSQlcb :(nonnull UIImage *)oTYEZOntLp {
	NSDictionary *yKKKomRXigprLHrh = @{
		@"ldzbJNSVcqkMTFx": @"LxwxNQGxrmbKvznOfXRMdJlHZWuxCEMqMNNulpkyfCwtuWOyzxBZSwyrsSgxkzlKrgxtSmqsttNfXIyHopJqlXtwGBMNNMxAlnUvSyfukzrvJQLtZDkrqEz",
		@"pFbJqbIdRhOmLjgmR": @"aSVMekndBaxsvjRWLtxIAJdGjVyMsYjDtYpTKVaHiERsMkBaIyqBpFxpujMpCwEiPoKdshkSAbAfODxUAAaiPbdmlvfvyeGqnyZYpOtCoEDplbWirpqtAqSgrQClrevRncXYeisAfIfWpTDoRGcJJ",
		@"KJqbMqUmyiUr": @"UcStcptmkOozycjXSWuRkzABKPpJydzGvsHZJCwrQgIxohlkKBElnNxYjoZBdXKNjNGsUtRiDFfrwoSJoGRvsUuGmeMDYUHaIHcTHxfYacMthYvrJIxd",
		@"GtIOPaNNRSmon": @"jQIKmavsDEQJRVPPRCUjSTQrVldZApGLKoFAQMkxxZnAvQpMXGTBodocoNNBQstZdNlpYdPafSjiQzhdeWUTUVbYpLilSJwWiWUGGHPexuRdOgrhdwAAXcTXOfQTwG",
		@"NKuYzTbHanrzRO": @"OockTLdgteytzgMtSwZRpCdqAZPjItAvUUsToDrQIEziriPQBOGHnTwbEXZMjwXIlyzunHLLWgprqqfjXwUwXcOoFedqbToyDuhMVtThHBQZQlaPDETanyEWcmVKwcHixkqoTIEIfVqyvNGqm",
		@"XUQSyBgWbEOHFCjkaLF": @"iJAZVfJZFJHaBIrATzgRbZwVlrOLIepqMZGySschPOIdDGNnoEpefvlTZVTkyUmEcGDPHkLjAsBIrJIZttZsFBVkOzbsFZvlHlYvUsyddHpSbALLJUPXhfzFbhVRjmSZnTlGHVhxFOpbDolNHFWG",
		@"qzUofWIBtADbIjUm": @"aLmQYFpNglVjCLESBjESufhvqexGOnZnFAAalVXWYQzIIeyJamGvHORyWVIhEQbAmyxqfTkdMnkxyKxXLoRcgtMpoqdwPwEaZwqhxnRisB",
		@"qrIjNqZdwHGzcbrLNS": @"fSJJHHbfryTfTqYApCgRrhBpnlytCTRgaeHfzwJwajImAJXpfzmYyLccWdyyvVHGanwGEYiKQwEdOEnObQJapQSVWVlSvgEjICiR",
		@"zsaNydfOKX": @"sIFYWbDaLLdIBbqUYLatGnpcJwMyVqXuYpRgiBbxKUayQUTCojMpOqkljjjaNJYKtEruYZIAuXxlHmrjlVbDPkBEeSxpdwxVVMGmxv",
		@"OeehbQVdZExbLRtT": @"yoVSvEdmqDtZroHOmzlezLrvNCvnKNfVaMVUULNvenXJZEBFimjhlWrIxLRXCwjhubBTewJBtQePEqOLOpHSMsVLopbKZuyAPGKocZSEpDivr",
		@"yJIpYQrYgFd": @"nxHAmzrnVKthiyggKywjWcosyqkRxWGEYTuuGNQqYJnIMItuZQlCCWOXlGrqmxOaEMzbIWJWUZiaCCJTTzOMUfEsezXeORoaNEmKDKmKhHxTKMxlPcbhIm",
	};
	return yKKKomRXigprLHrh;
}

- (nonnull NSData *)PTlPJochzcwiIlT :(nonnull NSString *)srybCDlWMXXsnl :(nonnull NSData *)imBXjxnCNbvVLissvaA :(nonnull UIImage *)aTTjgLkzTHa {
	NSData *pVbhJMvMruS = [@"ThZGaegufAkmpwIhpQcuJXTLCxodMnbwLLdYHvWrojrMpJJtcHawHgQQCieWezrxyCQjWZqrhaFfNUSqyYghtfMTtKqFxGsOxYjntCZmAYuVlThcmNIHrcYrEYqGoEmQ" dataUsingEncoding:NSUTF8StringEncoding];
	return pVbhJMvMruS;
}

- (nonnull NSDictionary *)vkxVoRNAvlJimu :(nonnull NSDictionary *)PjbYtyVrPt {
	NSDictionary *DXKWoFRcIyI = @{
		@"hThbORgHojrSVG": @"DGPNrDLtCNMbLVYfIQGZkugWhpkFimYkESWREDYSgUFWoROreqmIhspApJZNSuvboGDgilfGTAHPdDlCebzeVrkJOzdAfcZupvtppOcqCOFnyJSE",
		@"sYVAxIESexOMB": @"PneBzayhhdnxZoegcnZETqCEKfXDKVYPfYQKKFAFDlGFOBORvkJHncSjwtcKreTzZckmkfVgZqzSxssbiaajiLhaDwRPAIbIUJAOMqwhLCi",
		@"QHArhSxBHDQYnthmM": @"AruUVSTKLizbuYasPKpNNDkJhuSuSELSAHhRQAkaIAfSgVQpisRxvMqvfJEIWFpPNwQEBzneYFZYqzQbqAkjIdwuTOGPfyhmWnuicSJOYOLxRuPbnOvufBOhbUPbDhIiNNTmYMuDlmQYCN",
		@"jHCKOrVzFixytAYV": @"HmTFaUnnsDgSekCdFsLketiVJcSAsydHXuFjzmxkukzqjAQIgnaprmYkYgdfJnNuKGCUEavsFNJQwFjmoVXAKcQtDhjCMKvjVESbqA",
		@"KMCisJuwtTCanJ": @"kUfQZJVrujuTXlfFIdbhWhbaRjOnCNkqsRHzvjySQujYJoDYriLdTovvlVqsSbcJkcjcDfOMdzBKXkjJXQGPyONVNqfAYDclLzZyobqSQVKxbPNFwmEKlrsuKExPNggdQzMbDPHQlgDxIDmoTFJAu",
		@"QlrFLSBgbwQFSamIw": @"lxnfEVwdgZiZjCrIkkHzTHtOXzgqjtgXHwNnzExtnGkPBfaBJWqkxwDJvvGPmEVDiDpLfWcbENCJxCrsqORVMlklIIxDKpjYuXQNmnGaYtBXDrxrxeuKpmIaQzkfoOEeQJ",
		@"lMXXIpyLtNgHzyKDkj": @"dbDXtEhFMNNsWwndMnYosgRKZJBvbMVnuKzWXhVMCTZRmTvZjwXZAlpfHUoRSYQGfWIWzhhQeGmpcaKENLrsXuATjFBQRMUivVvhkoBriIFWBIbitPRQmE",
		@"FtSTXhFcedNhIEy": @"tUUrQRKXXzYiZUsoPmVSqPfBMDrGUpnRNBSdMnvPeyxcaLAyKtuTVHWWMdFNWlMoAhtjhLuTGFwALlyPiuJOCWDAtdIfVCMvNbrAzEHHQMmEKfmGvqQqqPBmsbPlkoHfvrjzDnGGHqYFJuznZr",
		@"RpACkZrBTexr": @"PbPgkPdglfcHSEClDYhzbqSTTYmxneypKMVYJwSnWARmRlWoFHLSJimVZJOdNCqTCEQhRiMmPQGpVHpMzoketvMJGDDYQzTtAHGXHiHTMYkNEkTZSwvnFKxayrkysRoa",
		@"UZATgbFFxQDxvJYXWds": @"ysMlmfBGOcHAcLLUKQpkkrzcUrlViFaZMVGKjoGkxKbJWHizcEOqsgVrzJnnqKHpszEjNEvvxNJHgTYURNwDeDWWLtfxKCgPmlAZbeNDLQNwCrFPWVHMIWBVpkICjnubiJqvslYaXzhkYynu",
		@"UyAryoOjJxK": @"OiqosZlllqFzoQAbyyEAiKrcqebMPzjWCQRBWXpvDIRKryZWWdAEWRhoZxTYzvFleLmHJRBbeZQSObkmJspLZnwBNeykcRYSgfEHOCrkTjacytKTnXsAVvENiMSgFjogwHGM",
		@"kDlTtAxDaadN": @"bhOVhFTtBvqDItrHgvdojOykvHfqMdfLBsWiOkhspOlbjtdqctWKDarCytGEyetAvXOVhwKylmckUVTYXREUlTmiXFwtjMSBpPylYRkkpUslzTtawRLiymVRuigpubwjGvIs",
		@"IuXHYMpaRDMmDS": @"QFAGeAgZHyulGWcdLfBfZFToVhXMvYXLoqymyEXqaTIoPjlDUhlZmZvTLELcitezrDjSJGosvLYJxcHHvKPSzPyfYcgflcMZloBMIFeNC",
		@"qddQRVAGinPQiFCdQvH": @"gDTmPLedJkDRmLSoNzhOZamszYfaWxbmxiSgAqzhHclIhrnfLASowpwoHRiYTrZiBTkTZPHknWBmBLDIZWntJGAkjtlSuBPGmOcKSKPZJV",
	};
	return DXKWoFRcIyI;
}

- (nonnull NSString *)QTXvrPYQWSAZJ :(nonnull NSArray *)DPvvZbfcnO {
	NSString *yNDLJJXJkLkczfUu = @"iBnsBDbnmvkYHBfpChEKYibwHPSJWSJYXyvTvfCrJJDDzVHfVqtsyfYBarqHAKHfljUvuhDGvJzlqTxTJPDCVoXAPdDPbsnSWMTGVbbtHYkzspYZyYXlYWcMkV";
	return yNDLJJXJkLkczfUu;
}

- (nonnull NSString *)LydjPjoEprZeIWSdaxN :(nonnull NSString *)COaXScYJecYWkXBjlqn :(nonnull NSData *)XvzhmYcUtrwm {
	NSString *UjMyluvhRm = @"BiBTCGrHIqOuniKwOgErTuyAEAcuSmTIpknwKJWzvWcpBwcmlIvyGiMTrgzQTvYpCrslmgqhNXXSRpCUDLOYlIYPnTsULStJkOeZRPe";
	return UjMyluvhRm;
}

+ (nonnull UIImage *)HLPeLmHYWInDho :(nonnull NSString *)AVThaOjELKjEZE :(nonnull NSData *)bcdtgWyWucqYDYkCZp :(nonnull NSDictionary *)FLEIcHmEig {
	NSData *uCZuinyheVJ = [@"OPNrWOHqujLNFxCkiTfBtuxIQzLlYillVHThxodqfNqnFzXXpOCstqIDrpmmCoGBxJKOcQkHJWrgqStjffwkiKoRpsOwYkywkcecFKgtdYZmjWceBiENoeitKzrfKFC" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *PIABZSJMMCRTt = [UIImage imageWithData:uCZuinyheVJ];
	PIABZSJMMCRTt = [UIImage imageNamed:@"OobxIkOTKrRneDvcuodYSsWiXAYoUuittHmaocqpugHaipvdaFnnRhGLvsEFIaiGxDeewmEpiuBfqEZTnEouPsaqWDaXGKocwylatebHCHJuLAlXLBfhtIbZnRmkRxrlloYxpmpuiYRuhbOngwQD"];
	return PIABZSJMMCRTt;
}

- (nonnull NSDictionary *)UjbkKDmvPWbPf :(nonnull UIImage *)BlGEiIRmNod :(nonnull UIImage *)OnHNURnmIq {
	NSDictionary *phjmZadjprqGQkQWcDn = @{
		@"DvUdVNssNNccSpRyicY": @"hoOXSgVKeSWvMqTHccYeEucGkAkAJZjRkVNFUSjjxCFouhKJovPlEZaHMemAialLIFvLtHygPGicJsgxWzjBZBZtYttCmRsSrtJXQtRUZOwoVueAtWOWw",
		@"DaNeOLbJyYdHbhgdFw": @"srDLhMVdGahnlIgbkPNqTCdkkPTsqQtJrNkhaNnKTiPeRIwUnSwMGphkwIwgckOZxyhluAqStrdJtGjCESOxgFenJJWOoXdFkOWSSRbqdJXWKfQKoYDVLTnvxFWzXONIhMfZHLHD",
		@"viXupSGuZQs": @"jxJOHfwhDSEDTFCdBCPAmnYGzVktIxnmXFjzEsvXjBXHsGgUPkQcAfvBYWcpoURoNSWydQXQfbooiCysWAmTtdVIZuLJDjIYMtXTnYupcZcCSEWjiWeTpVUxHeh",
		@"idDynKeoKUiDXoikW": @"LpRASqEXLCzLKbXOpteNgobWMVAFVDgOqfTXCuSXRPXvyfdQNcUvhFmkPnvimGrKdoLPDqaQWsUTLxBkdPJknsRvUUUsEeIdiNCJnVImohihNoQuOfagjNjlnpkYwMIoNGnjOtrofpJMSldo",
		@"xqnuDUdkuwA": @"LiVkazBLjkhxLKJlIdnhnYRqZqMInoCEVzCFKMSYjAPBojhFhGCEAeTtrTbfNkdwjScHpbTVGKtaPyxXZLnIzZIYotKzpMKAjxcznFUeXifvPIFieKZIXgFVcPpQhRpaku",
		@"pIjUpyqetPCIq": @"wZZjNeudcRvdlmpTYCmYALUgycGlFwGtYOOVDWmdzUJwoJlIeqFeDNUxMEHBjMJCpurokTAolbjPLHcktxJRkOCoSdQlqwOXLxMAaomcInKnaUuxZRudho",
		@"orBjtcIcUTdQuim": @"DshybQXNGdQEOFSySvcvsGEYMcuDLoPVBRCIpWsZtQhFqxcJgefpVAsMCFVbnoZGttxRgDORVEPBmdGDarHbgAGtDwheZWpwJiUAyqwPnSCmd",
		@"SmvOqreGNqgfABbL": @"VemriywddtDyDBVgdSVxiXFelzMdIJOsCoOAUxYzATRDyJudIXThzQPDuHaIXzOFectknKtDJDthZhSRnYqwhcXajAOrddPGQCgMpjnneztgBciJZBWcU",
		@"IGSUWuRHqpal": @"jnmPuBbyBpPVEAIfRZJAinvaDgyBvdiTdLAvtMUsvhwjQcdZXJexyqQhUSFPnoxdvmLlrmyWRwkhLcfVUiPJfmJOQRjUbeRmlIKuynPKPrIpHAAkSMmwiitOBijXJqZdtZhZWpXacqYujv",
		@"MxTtMvksgTPWQJoZP": @"bWtkMMEUmtJEpHEazSlgTHGaGlBdnssqApipvDEcmFdpIpPHyUhybgOYECyxpDKBJAJfrMSvqmWiIKdJeuwMRfELEYZyGLtdJbTFnHJZqEEPSi",
		@"DOMDsGIimAfz": @"JPkMGpYkJqHaZVseiWXkFrsAdVLulikdVTqdlzvwEDlREPtoGPtlgEkJFpqqjScBMVWGFJRWMYcvCdwWAgZbHYYZHDpiJluZDHuGgOuioNIGkuqorznVmWFnYuMheljbnLOoqCFTsy",
	};
	return phjmZadjprqGQkQWcDn;
}

+ (nonnull NSDictionary *)RSjLiDZmbkvfjvz :(nonnull UIImage *)ikLkoQRgyZeUrb {
	NSDictionary *xwwOBMgulzimDCxJF = @{
		@"xcITVOrkfWzd": @"jAmbpKhByIPAijMRpEnvgKfDuiDPrsBUtEXoSzdrAGWavxSOiXndtTSNgOKwCBzWiEyzZzLMxDjbiEWewRakjrhJMuHEDfxNgXQvwbtUReepLrF",
		@"deAaZIjCklWPYEV": @"DLZsPePQlXesZlrPYPhQRxpRnYSBZEihtazpRhgZosfhwLbsOfStbSmbzPsMVQkQKZKWeqKWWJYHtCdIxqBWGSYXCGUDQODyDFqeBMQtWZaXqLdByjgTvfRFXxKDPsLtvpNEnfKP",
		@"ktsADCntYBOugseja": @"SfDVUoDmWmbSAdKOXmwNIXAkUyVlZYlgNyzpahxmBMwlaLIKOLArUGhdEGLtxYRqxitXMRcxGnIAGfPQOmqaKFiroSmevGfxDRBmcdmBPGempqhvYmMFDxhHgFNLqgEOMTivRBJXJJbBy",
		@"hannmGKOZCaEoGaNybS": @"EKqnzCUItdvxvlgzEIUZmFzzJTVsXVouxhwIfDmFDTpzYUKprpiMmfZLUWDeIXjhLhDAdAnnaUGNvWFLtpYgBkpGcKLRkxoOTduVdbcAHnszZCqGpxdMLuIdEpOClKGAzf",
		@"IbXIRBBMdFEvMKfJ": @"slBiKuwEGuuwAeESSUErYyipDHDLKnwcVnflHhbAPazaeQjuIUpIdFiitdWguOZZisvzUNzEBmWZlyvdxcHQNbuNNbJNgMwiKxNcTGoKGFkAqhlNeaWvttXSiSgLjsBhezyEysREMbrjsuDlH",
		@"MBVAYnKNBS": @"HWAhgmxCnqrEbnMGMQYOzJtMyAnJZWcSouVQVHdcGnVFNZAKuGJAMFKbpnhAkyCJVWNprYSFOPQBLOUgziGMzrqdZQAqzOcCPLCotXUsP",
		@"HGTupXWqnar": @"ZTvYFSosCkLkATaDbrxPJDcoJWRgspzGjZqdbEkwaQdbcsgHhxtaSuGbJddWUvRGUXALWETXNplymLKSupbovGkPYBOHOLcyWlPXsXEqywCWHzhrFcQVWHduWuonqHZeQHpUoBzOCS",
		@"uqaDGUEzCIChNalnYz": @"CUGxVSywiOFXXEWKcCuAKODAtsRrCtzBNrbpXotrrCDMOzvOYMYWzibdexVsyZzJWKAOTwrRRfDDnjUynXfMZNXlJUowjQuwkYHeszSXRzOphXnTMjRgaDSKJbXg",
		@"EGgleBaNAdz": @"IKcghoyDdFvXfXOeEfnRHPxuDcAWGKDxDxbzhxMhhHRifRomKaGQVnbVpyDmuFHXNsvKySuAZFXlZThcgFpcYBPTziGMPlhsQSrVgaWVSrffmguMBmTwTmQAohbHlouQ",
		@"NXadVbjTzej": @"IMJnxIZRfgIvXXMxurYuxMMHTSMzvtbhxnTtdFwqbAIKbExfZXrswOCdoBgHTgpSBtcOItWfHoDKmSrgRHTvacSqqxURJoUkGQhZMFLmHbuDmWhVfuESJvMYGBeAKukTiIjuVxOLjlbXIJobs",
		@"funllQFqjmF": @"HNRDrryOcGqHdTqZAwHlbZlmIUrQLOvmmSUpEnMtGGjFWrQiLdGARLWJdoEkQtgzzTnPiXrpEoMjfiOoNjBsTAsYSqARLkNtyTpzKRjHqOLdkfOWpU",
		@"oQcZQslTSoS": @"llMuWuixJqvBctDaBgKeKfGqGiQqYWZzTGiCAlaDenHmjJZTCWDVDlIlevoQPZqrVHBAOtQqJGHnIOVsypdHiUbcsjAhvwEgmLwfTIgqmINkNDDyfWUwoUuLIJBsLbAOPlmFpLluJ",
		@"EBaLMRfHfZITiDsPZ": @"TmTBuuvUTLFtstBlhriNyNBvckwpxRydOtLXmXBwJzWLqrdexCOJhqVHUOZkyrDFhaJpLMoYFmplcwnhvnAbuqLYbfhDhloNNVdhgsmMdIBabkplXAfbilJJrJwcOgCdAaykK",
	};
	return xwwOBMgulzimDCxJF;
}

+ (nonnull UIImage *)NEyJGaRJRykUtc :(nonnull NSData *)hStGoiCzOx :(nonnull NSDictionary *)sDSKZkDmdWFwDQDCJX {
	NSData *bBnpXkncXK = [@"HiXRmOcKsAqMZLUMXmsSetZbxvBffGCaxViXFrUqqiJqPxXSpxRYYSOVwkypbTCzZTCxWTcUgLmeRmNWtZlEUuJcFzboRgdrioXSO" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *MWljWATHVkdciPHDLr = [UIImage imageWithData:bBnpXkncXK];
	MWljWATHVkdciPHDLr = [UIImage imageNamed:@"QbexYsWFEOCUskpAqKtxSUISBkqYscaSeKImnLQklVYQfnbuCqWIWOoEPeuqjhWovjOpdApuhRRbKEBfxszGZbJEPjcDoJNgxkXQdGvIIl"];
	return MWljWATHVkdciPHDLr;
}

- (nonnull UIImage *)kvhWvUzepfRHYgA :(nonnull NSDictionary *)jOqKggJTkAWkalAwKS :(nonnull NSDictionary *)UvlcfmOrNhQmOMnEvqX {
	NSData *vIhXfFiswHjhFJaFPox = [@"izdfsavIMeRGpOxdvobcGIprPTzMKDylBypKQFNdRodDeEqxuROAEFDseFAAKLYMYZMNxWtTDcYSTapkImjkTyMCqAgSSdytrrPYtIMidfCBjCfFHNatEMtIiIfwEPgthk" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *pwkDHFsnpVAqYSewN = [UIImage imageWithData:vIhXfFiswHjhFJaFPox];
	pwkDHFsnpVAqYSewN = [UIImage imageNamed:@"WONwQKanqanqDBuGXNobIDaDfreOTaropCxAsiyVmRpQprCNvduPcYMIzhhTtnFfjEmbRKyNdGguPiXFOIOSRDQdfTqMTmXECdCMqoNfqYaYhqGsPGxClTMywsbVjBdXxUOSqPsYpHzaIUamLkup"];
	return pwkDHFsnpVAqYSewN;
}

+ (nonnull UIImage *)muKEBtqPoHVWy :(nonnull NSArray *)AUErNjmNaTbZiE :(nonnull NSString *)XmIjqNoJbI {
	NSData *hFYSaiGtzrIbIp = [@"rpGTgKRogpfzqOFFUvfLaaFuUMddQZYKupPykbhyjvkjHCrKvqwQUnYKEWttfbsDIZFegDzsHCFeiKuZxZPABGcBWZoXGPagHzciGXEogFHXqOMqPczHRhwvNphMbpxlslTRgsKUjLCc" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *mISaSsuECrx = [UIImage imageWithData:hFYSaiGtzrIbIp];
	mISaSsuECrx = [UIImage imageNamed:@"KaYfcnNuKQTTVKoYwcuPynaNYQfXBTSuSrBwVNZHQvhQzBhSDHNPeKXyBvNcssxZiKXfiiryCkcvSxUwkdbHdrlxUaEfrVRWxEarvBLHTnjObvSfpsgtsyPJewBVSkdvdDamHU"];
	return mISaSsuECrx;
}

- (nonnull UIImage *)YgFwnmVQjcaRq :(nonnull NSString *)SEpHoQSjJUhHGKoJP :(nonnull UIImage *)MpYlMNBgbodsS {
	NSData *RWksNLfuAyTqDcEHq = [@"CwwSnbRHJnEfqUdLwYhaiTmlWndZmaCwgbAiGIIgJjHDkZgcmRzTOFyyPgFBmxNFNHOapzlzrbtryMGXeKDLFiQomYMRTkTzRdRkndOL" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *wXBjhbssSNljNq = [UIImage imageWithData:RWksNLfuAyTqDcEHq];
	wXBjhbssSNljNq = [UIImage imageNamed:@"RYHdqIdGSIfmFwsqjWWIqLevPhcCtSulDGyzkeqGruwLoFACDRBckhBRurlxiuNUNsjbEzYHsdZndiwzmVTNyOSKXBymQUvfmHiBdsRrFjjQ"];
	return wXBjhbssSNljNq;
}

+ (nonnull NSData *)TBBHfKOnLI :(nonnull NSData *)NSpUVfxlepvzWy :(nonnull NSString *)EAaYjkbsGylkBivUNO {
	NSData *gtwqDQUexXYxpW = [@"SHglGOHWiQWBvnZNPEbMXxUfrOZbJtGQiyUvzSuDwGeVBLwwmXfQMVaVMSstmFesDOsYAHrYiTDZusRKjyVtNcsGFZbqjUgucyvRYoYwsDcHBOJS" dataUsingEncoding:NSUTF8StringEncoding];
	return gtwqDQUexXYxpW;
}

- (nonnull NSData *)EjKqtZZmwj :(nonnull NSArray *)ljkpNcxsniudkgGN :(nonnull NSString *)rtGxuGbvCLSQr {
	NSData *KpqTGOmFkHHi = [@"MueqUuUErQwNSNVRksanTYbUdTSitLGHbPzdqCCfdANelNhHuSCwBLDNtsQhGaEVVnkyGjAPQdbhbrtdPFhTQcJmJqRsjYyTywbVIKdkwgRMEBElOvopVWYAjYQKI" dataUsingEncoding:NSUTF8StringEncoding];
	return KpqTGOmFkHHi;
}

- (nonnull UIImage *)HZLZOMfptEiicSBe :(nonnull NSData *)HlkZIvpCTEp {
	NSData *dgMFDOCQiNXdtSSWsaa = [@"fsTempAgRWcEBtcnrrXeTSgTlEhhxTOKHIskYkMXWmYSBMKjvUzzxTetYAYKqfAYDMPGKkecfCjCCeBJKtzEeOjQBKuaJfDOISJyiRxBgCzxPqU" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *uxcFVjkmvEaxuNai = [UIImage imageWithData:dgMFDOCQiNXdtSSWsaa];
	uxcFVjkmvEaxuNai = [UIImage imageNamed:@"izXfBEiUwbCbjtvNHHSMreoNhhFqxTdpZEyhZymjBIfFnKcWbMRZVkYUuofwiXJEWmaXWXFKnVMTHeavhIQyjOjDBssiLTiPmUBJMHDgcLYWWgzEaQHPQFUbTQkbhlYTtLh"];
	return uxcFVjkmvEaxuNai;
}

+ (nonnull UIImage *)hUqUqxDclVwkCzo :(nonnull NSDictionary *)VlDuvdJGGEkTLCQNbjz :(nonnull NSString *)ccmNDaHHRkOyeqozxu :(nonnull NSData *)fBqrouchoHKtbmBiKWz {
	NSData *yiBVrBRCdDfDaHB = [@"rrvykgswNzxwtxWGVYBmoLAyQCNQkgIEjVmTdOKcoOBrmmCMOdzjSjtsjIOWcCrgkKYtNinNgGPFIrJuasiUhQJaehLqdYFRKPknUp" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *grYoeBQxkgBtJgAu = [UIImage imageWithData:yiBVrBRCdDfDaHB];
	grYoeBQxkgBtJgAu = [UIImage imageNamed:@"leKNaYvuHPRarVSfksWAEarysTRCqGLLnNtjpkLzqIysVThUTwgQVIySjZbaEZXLbktNoFWLAiclbSHppTktNqfIkVIriOLrMWpsAwNNQMqLQtq"];
	return grYoeBQxkgBtJgAu;
}

- (nonnull UIImage *)bzsgPweiQUbGaav :(nonnull NSData *)DZCLnjvkIRQAEPvUNxU {
	NSData *eLldSRHBnh = [@"WyPHpfnMWHOTSKsWWYfflPeQcbsbzXAcJrcEfEZacFuZEgktmENdfVldHmpxhThrVcKGIwjozOVHvoFZNnvTGwFTERaEdVJCOFkGtQjeBUnUulYOhLQfdpYtdscjAqfndSse" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *bOBQQwdyPzHKltoGk = [UIImage imageWithData:eLldSRHBnh];
	bOBQQwdyPzHKltoGk = [UIImage imageNamed:@"vQTaJXouzreRPgzuoGVkoVOPAUvFadcZPfqIEuJEpgjEaKOZsUlANCuHhoYQExPLZMRysfGJzJmtLaYFNxskAemktpvURVBBgKYciNucnyeFlfrSDRFutlrmWsXLbvKEtvntmcKfKzVpqUgvD"];
	return bOBQQwdyPzHKltoGk;
}

- (nonnull NSString *)qnpSjpAQEyRSpaVkSU :(nonnull NSArray *)ubTpeckqmuIFYSl :(nonnull NSArray *)eRBSOKCTtbAnsxNho :(nonnull NSDictionary *)uTGfQmvOCT {
	NSString *NnksFxJadtgoP = @"oFQQjAYxcdEHJaWkmRoebVoAXIyAjpdIcInbIUDXqLxwJuWHNIMdZCnzJpXctCmFbAPhmCLreWStyftkoZMDHmSfOGVGoHgBrMAoDkmBC";
	return NnksFxJadtgoP;
}

+ (nonnull NSData *)YuspzMddWvwUF :(nonnull UIImage *)ZMwmUWrukrXqpxHP :(nonnull NSString *)QktewiLTPyHLY :(nonnull UIImage *)alKblUbsHgWhnYhBD {
	NSData *DEnkuxQClYvbZCSyb = [@"SfHmnvkdCvtXbmttdmNRkwYvhguNDNdXDHHZWeWruEsrUzRFlpupJabhNbQfwDFjViGzfbSwmhkiikRKRqvfBdpTWaIzwVTvmiCoKmldBqRbjnamwcg" dataUsingEncoding:NSUTF8StringEncoding];
	return DEnkuxQClYvbZCSyb;
}

+ (nonnull UIImage *)yaHGolmDtF :(nonnull NSString *)LKowpJSPWMlVSpu {
	NSData *WEELYvkzrEw = [@"QLGxzHhpJiBxnCNuhRtsnZchmVWlZDZsVQawBTbasOpsxYskXyqWIsAIEMjudnUkYQAdkTGiXVaSoDjKdbKLTIuJUPQGDSLYnTiduYiIHVyuwQqlgQeYcU" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *HAzAZognUDf = [UIImage imageWithData:WEELYvkzrEw];
	HAzAZognUDf = [UIImage imageNamed:@"LTwnvOLhePxrkvaCohBDGeJcjNOjWDPCQsSeOlVOYwGxVmYcvGvVsqrlGnjREkbQChpYpKTMicXSYZAWMBcvFlqvqHSSokbDAHvTDLNuSGOQxviJjWU"];
	return HAzAZognUDf;
}

+ (nonnull NSArray *)GdrUvZwtVdOu :(nonnull NSDictionary *)dfgIBllBDyHPsNMQ {
	NSArray *SKwDmzkaGcBarg = @[
		@"kJyUHqnGCLCLVtJznPxqZuvFcAxZHcoIzRoMzrtUSaESvyDTeJjUTVlRFqykCFORmgXlxqvdYslIWLPlqLFPTLoRsNKyowZdtSVzIgLLrMzpfrTgWtxZCUvHTCnPuAalgaTcLwWmvj",
		@"oUCiPAoMfXdprAOuphxaSiCqNUEtIMphSXuzrAZLvfCqsxyrZGcWXHLyGAGETOWBpudaWKyhTgbTwQumhrhcXCfhiUQuwiqbdeqhBZVgaouRtnHgngjUpTePgYyZMrCyAWV",
		@"fPoCsPdTgqHhMeNWyThRLwxtZQZSbmYxrGtQMMVIIUtMGtBkassOcZorslRyJkFwrhTUWQIYxesFMAEPLdhnAleeWGcQnLQNkqIDTl",
		@"QzOXiZdlIeNikpnJBlLJadRNLjWcaZDSKHnQutZSXmYBraLMtGWjgZvHfulRzFChLDeWlCvoJDvRaUuYKTWFRWetKttqTldnGzrwoKemoti",
		@"CrelJYWWrsPiSubNSUAoSRdbWWmMWjkLmNIvOQKaQuNrrYLYhhBgwIJWCjEoLtesIVvACJlZXtjpqnaRbAFywyuibpodnRqNYHKxFCTbiYIRbcrYFJNlhgzrMCou",
		@"ifoFYTnlXCujmYCvzFnDWEOQcJJrzLwYvHxmOAxzUsecVMnmebUhQUIcHQQlDBtbwbutfFKPTRyaqsfPxUbquDfFWFWaznxUxdcvOueXGzjBhUVQbktivZqPkOWBIYfSHxEadBYDsTBX",
		@"elGfuNhribtocvgBwgCQwgsSzCOVMAIdVKCFuyVFiJrgRQvLqfryTqFvAsHesHqHGisPTBrHiPnsbHjNYOlxVBNQiZRhdpOKhALYgss",
		@"gYPYxNiOnAeFROtGSMVGLRkIUkhSgLucYKOGGoofWFHkEriTlzcQDynxXRoPWAPtcbGYCxIKIEovzPbiDweZjkKcRnXZbaYWEyGoBXudpTxsmLQlWGmOklmApfdQeksVuggaaY",
		@"OGjVObLLLDNQyAqVAJWFTRvpprWmnMhVtsRbdSufORKgJBZlxMCbziUQNdDwEJccDVpDYGjIGrGSgiMTfPPPAbWNrDdeVsdzUNWcVbByzGyCQCZdADRnqKJEeQMeJpCiUaJiQabdUmheRfTpScV",
		@"AsbdlrdEKijyLccUbKopTGZltoqwPZvLMoTjiqbWlOThcQEmuGBgkbXCefKWTGEldShzgqXFJbtMSSVzysgLWZFjfLfRvFJhegKBByqzVRHAzc",
		@"YyREzgoMwoqZFNFfKdAMNkAVrUAFZJWtMhQMBNmbFkrHghJMQapQXjQmgPDzNNRaKxtsxhCphdAYEpisKBAbInNegUQTlMhOKXhBXPZhODPpafDhjrOSbuAimFLtgBPVAeFxQQ",
		@"gYsidoJlHlEmFURKggBTAfQWhAfoCFbUjxHHygMBWKhSvTkTgRoFjLltXnnPRjEMnROJttomoYcqzvNnhbpxCpGIXSZfQXJkJvgANhDGD",
		@"hPikVOjXWzaAmyMstKnjBYrjDqxOvhoSUhlRqgrHJYUrKbIUnKkqAbUVeTSqVdGEkDZQWldXorwRIReEElnPVVhKkXITbGSDSGgvBmWvbDhggRXYLdBWXpYNEIBkmYEvgK",
		@"zbkEkBhNyezmLJGnAftwWYOuPTNVVOORqlEquZGozvkDyxjAaKpbdiIiRFIOSwdXvncnbdqsJRzXmUwkDOuOYwpYiWIVivTefYdFrEqIWqvGHuv",
		@"RZvdlTZkYyZdMIrSTLLjBbohVYqPnJwgDamzZaOalpZCsOiPqkglseGhhxvuJEeMDcuvpRkVjrwysAYFQbncVepJpuQvWMelUasmLVcPEPjngHdxLcVjsjMRINZWlpnSRihvS",
		@"pCfAiEsjdJUPeLmfZloHksHtoKgzWVjBMSYIHSmxjZcmWpiodKeVibeBVpijdgqsZvSEBdCzfDXgShYeiAZuMsWtylRtjVCeCxTyAEmjGViIHQvgAfgAFXGlSPJJDazcMznrvy",
		@"FgHdLZMtQwDRVXTIMcKAkHXvMiBAsIALlnJecxXIMVVHKCOnlPOWigrtJZRKDcXMQInziIRheuMrKLgZIZyeyZAtEZcuKfRfpvZPbvseOfAAOiMsJwlPUhoin",
	];
	return SKwDmzkaGcBarg;
}

+ (nonnull UIImage *)tbtHeWmGNCJyIcLI :(nonnull NSString *)jRKzIOBzXkFspe :(nonnull NSDictionary *)ZolAprcpjMSrLWFsx {
	NSData *rxPVYMQLhAEGAVzNma = [@"hRpxtMmdtNKaMuqrFZldwUPBOvUCKxlFeHPIemcsJZboCSUdAmIoamIIFRDzImopCyjHppokHfATXLMsazZRcpIPLlkDwzLgSRjeVzMDQPNhzsKUHQSv" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *eexnNSgCRafGHq = [UIImage imageWithData:rxPVYMQLhAEGAVzNma];
	eexnNSgCRafGHq = [UIImage imageNamed:@"nyReLbJFpUjkkLQjOqhQMAudOSfjFGbeGVPxUnImsTDnovVSVbPfRlBHfgkzDrSRqlfDojyfEYboRBxDDaxJmCsxhfiJSnAiqVjDVoPoWqUfvTeqOZSBUhVdORlyvE"];
	return eexnNSgCRafGHq;
}

- (nonnull NSArray *)BCtrdFFHoLX :(nonnull NSData *)uoABgqQCETjTK {
	NSArray *hmHweYMvgjBxDCS = @[
		@"dWndyHWVVhbsxIQdAABiMTLpycSdhVZrBVnzqzRIZtjuHZULGJTXkelhuXKDDbfxwEstsFUJBQKZfiiFaCDCkUKYUlFDurUlMLhza",
		@"LWWmBbsffTsOxUeoROZYYRduqmzYMVFIARgbLnZBJFaTbQSHETEEoyXMsLLUZFPGSGoNHElyUhZZKxOhbVyEcXsZIaRqFLfjBGsXchqCqGWaVDAfbFBeMuUoameeZcHarjb",
		@"CLMhKiqJzLIYydijzEyBMOUakAAZEgUtmTaygWOcVsputAEzvJzIWqTPCVUnapVPaYKsNwuwghAzSPwhiCpFvyqugctGXGhAevqztyEnOHhWVdHcgqInkxmIwwiWXLcFdtl",
		@"NTcwQiFKQBIvMByaGuCyrLKaisgLcsMHzngLWqbKghoaIBpyFTNdfHqlAcPfsmclPmXBXyyKlGIhKxlCZtMzCzlewphUaVkiiPOVUxuEbloEBOnLjhxm",
		@"aqmhuoTShrZbFijFnUUaZSnEgTfHqeeVGdQFrITGcRlkXsezmvTWjqRqnmzoeTLStdKEwNxDMUuPrXsQbHUVrUnuweuJWqNDZRhxmsQtnYQUEjEwvMWGRFbxiSvnUyFmiA",
		@"puMpGMkNHLODzQzUFssqqgjdobVQBeUIdIxklqXLlxckNHGzOkLdTFNbfjvHLnYCANtXTCaWGEyTuMpKUCIsdUwQLVaEumuObrZNGUfJPnKabpjVhEtWBl",
		@"isuWKrdQciyFTNOAZOvKiijgabRVtglfuhhoEpRIvFYaCZGeuSLnUZMpIdSmwWXtvBYHFbMczjplQzTRgRoJkEGvcYppWCiidyNlRyYCglDzwzCrsFrQuGDNVvfkutayVzpokDfRKJcZEYeFG",
		@"OypgZEbqeoypUMYaiDuoffDRCzzQOWXcypXaKfdLRQHZMRurcSbziSzvOJsXGMMBDrOwePYXsQujkdFTQkqMVtLfivsauwJPoNjdtrmZElRgG",
		@"UlxpkNsRSZQXaFHDscsqnRtJuSNtXVljzlGTRwpDihcthgtqqbZJXMIJcmosEaAFYehYqRgpcpoiVsysUJrWBISoydsuKWdPFMPVjXaBNuWnHlcYKXuufTDYucHXLKT",
		@"KMvoqWfhIAKuTFvWYsxWsaMdNdOaLmcwzRQhHOZHrJejgIJtCFPVNSldZXaoDgqGegqUWhBoBThbPtAPSYogvTrwHrYREyiXJPkFprAiF",
		@"BxzKxzJeumdzEvLMZVGIpdLmOEBmbtNMTZfulwVUApXdRJKKApkWBgARZpolyvQfuuFmqcHiqhazYavAbbbezGZNSeQVrQzGzuGMMdLsnsolYLuryYTzHsxyxp",
		@"QovXLlLCYgDLeKVRCTaGicAympbEbfMoShSfLfdYMiTazDBTZBbWiQepAHoQgsLavsUaWtLNUAUnDgYtCHPJhmGfDaJVgoHUlYjxNdwAhrtmCzjTVRmn",
		@"tBDyLjqLXDHsSQVQkwexQWGnXKXCdPYBLTynHGWOYjzmdhAAZlKQXffXvshPloOsEBTjLEkjQFRrOzGWskemRwZXwJaACtmcnfqvMKaCrojjv",
		@"ZqcTycdaNvOWtSrtriLgIHvvEXCPDLOZnZNOfAmFOdqlIBgNdiGegIvOtpHQPtWHcTeZPGPElAbaNHTgNijYWCRDAtGKEoIdPcqszZpGSdJiMemQbrdEbjUclpSAtLCVGUlvzZWGCkqeOqzzaQ",
		@"NSUqgudXbMCfFthBsdXTOcXVBBtmndFJVXvIJdmxdUKViEmUbKGkagPAOeHgGtmnJVBfiDNYUmOauWyArAQfSHSZbfZoLxfVxhhtgpElQnQTLeMEaYuemNuGo",
		@"XAbYjTFbSqoaqjPmiUVQjJOhHXThBNGsCcYMzCMzWuFaCKVwimhvHIYMqhPZOGfCBsvAyxWhiPHXwqGwyxwwtiXdLVVGGpWBSHEuJdvHchWWZwUXA",
		@"fDeDruSnchieOItLQyMXDpGdMoAQycjzggwkJAKceVGliMyKfsOHUSrIfyKAVzrlfVinSPqihfyiMhuytaPAoJVpxcMRuPjrCckIigiwYacOHtEQcbJTzkqFyHqkMe",
		@"QTvkUDAfkQdXOruaPHhkfqioPbHaHpQNUjKXmzSrPEmyfmDqhBGSNtbfemYBCmCZKqUQIVtTMeditACvvSPCDYBNjVflFLnvSXvz",
	];
	return hmHweYMvgjBxDCS;
}

+ (nonnull NSData *)KOhEqfeikIaugvrjd :(nonnull NSArray *)GPZQNEQxONskFU {
	NSData *MePOHTWijOExvO = [@"zBkpzrPCENONzGLBKsnyPZVZBLdUYkSbzpiwovSTsnKmWpeJDrSbDVObgmLQBEnjKlbYzYqvrXPBKmFcNjRZodPxrQVxElTEQnIXrkQhxbOh" dataUsingEncoding:NSUTF8StringEncoding];
	return MePOHTWijOExvO;
}

- (nonnull NSDictionary *)AQQBKSnBGlfHo :(nonnull NSArray *)qHoNWVwvYncWt {
	NSDictionary *feLgrSMhfd = @{
		@"JbSINiBMQpfgrVeXqa": @"YKfqsecBLjDzLCuNfUNIhRiHerzRPAzomVkgAOXySrJRINpklZOVteedwOJYyRoEqxJHdujaZhRNcyaCyNKsyrZoEESGxbZGrmgieGduwrbXKukOrtVVwXfNvlbhUkfip",
		@"aopsFmJHLTd": @"JkAyjnTVXFMozjqAswlGbBCPJQuwfgcJSyrxLHKCmxdSkAopSwYUfmCRGFuWPkLnmEvLsMXYlgfdudEOztOKApeuXmskHxVLIfJzJMDIcIKnofAuBNM",
		@"qBddgGavDuBgOMQPun": @"SNuZCysdzJGPhlTJGGTgiKHQFwyYWOYOJZmSfzdxKZVIyvhcBsAsSBMaitCZooqpTpXklNMfeSpIvqHcYMYMaQRlWLXTTsSEThGRxZlRGiAqUYCZkpXKIkXpkDJStHEbHhAOdgsUWhmPzbPObu",
		@"OcxdOxYfOvDJ": @"lMjfisuDlNFibAzfuTkZjwvZwJnHhPNDGEwcoOgqhOYtYLZhmgpoPYVnpwLSBtSihtcmxxVapBgCSZFzMBshCYJblHyNlvBYzHVtrIYhZWJypW",
		@"tUONZlDhFHWq": @"iAEBslnNHwrWWtMTFyGFBppOPSKrnTaQCbOIqlpBkmEGmSQKdUGhEcvCkDMkkaWhGyOYLgzVnXFgAZxtpUqDZUkwbzAFZBvfihNtjgI",
		@"cztybbgeXOel": @"NVjQmNphGsRAWaDdQCjVzuHaxmOCKFXtaSiLaYUbcYzSnMBizsTSiCDuKBGqdnxwuxhjSvaXfkTBCANmgBqAvnyHkWDhbcIPrjCtTFhuUYVphwXWpzzAsGhEsXmlaHQGdOwQBcLfdSNp",
		@"eQgutCfagruyj": @"FjUpLGxSMjLzDnvbAtOUVDboimsRjHnbZfKQNoebacdbamtgJQRacAnxamHzodmIdXHwQoEECCzGSXrSPJOAZbhCFdWSbmASytcdiKaDUpiJKzBnOoSxsrZgsGrirJOsbqHAXHTlJxU",
		@"lmXQvVuuJUeCr": @"LDifxqntKKmbiumQWOmYuWASowLRqVhxnfKzdoyGlzwkqVoVQmdCSeGKPdbCkPiHzrkKOgYRlhYJEuzWorxZWHXDduqLwgfDIrPeuGqqRIoyzvpqILDzAUwqwKaQhVBthzDfPS",
		@"dRpJBuDVgokJlDjgnE": @"phiaHVrzfkLNkweYjTcnOtwEqFNtbRvYfgPgudRwbThSOSeQvhVacFOHYsKNwQxdRNessZvvabpeTzpsljReEPQFgJGPCLxqwMiXN",
		@"QGNFNuVMULNxuBtC": @"ZQnJGomwuHMvCVerCcpXcczLeDfTmCWtSyvCGGFqVArmvWPbNaGpHDeISDNxgXFJsjSkNKLcfGHEcBtbqwolCFUnRjTBbwEXMOBbgRijrQgMUjMYPdHRpIlEzDmkTWHSldcALlKWabVN",
		@"LrlCpbdxvbVftgZEgi": @"sIZbvQeCkIlotmQBVZTtAFvdSYFadENmfaxbHDWkxwgdwHCthiiaXYbxwqouTHoqjsCukeUFHFvYtpKTVPQCeiIaqgiiGvvtWwnaBPMug",
	};
	return feLgrSMhfd;
}

+ (nonnull NSArray *)XZHlNPCyjfpM :(nonnull UIImage *)UKLvfQgIaPWlvHFsPD :(nonnull NSData *)mawgpTqaahnrXxnqv :(nonnull NSDictionary *)UfYvdXcaHQSsVBOtfYl {
	NSArray *tTieepaJEsC = @[
		@"LThHvKpfjEXXhwHZHnqvqjwjuAxpHxNImCkIqnpjRbvABEzNJNCjFZNwyXElyYqGlZuupQolxjLRRlRcetecouNPwnXxUKssGHdSocLiyxEhZDsge",
		@"xzulENiaFljcNCNCafOyKSIDIvauURFUdWAnnGaIwaupgKqKHIzhTySkLkuAqzMwFnBmsIUtKUbIjGGZxLiwbZbOAjkQhrwbBCut",
		@"yrmYywgZPxbgalCbtpXWeVwUlzVyIUswKfskRjpGVwWsRAraXSUWOWeoJhExUuWbLNHOxldHLfJtHvakbMdgAMyUSagltFPLxnmEiQvohfqAHnntPBSmyTpe",
		@"OnxqAOflqYTedbYQVHmwqzPWozEQfPWJRZrEpsQabzMZRnODKwNIoxkIjFcTUcbDdAtTzvSISrHWnVifIQqMkYHSMYRcQIMKIysQJL",
		@"TbrzMnOHTZvzjqqcNdpmrRMTVqhcAvBxLjGCbFyFxcDwFUMpZqoyUgoIeyGFXTSOxGOdeYsimUyKVmPmmFwTjTvSGUxcOgeYOqJN",
		@"zeAkLEAykWRQOoFNsSmVBBvwTPqGBYjPFdiiUmFDttcWLubgHvpSjxdHsjUInwlZBxIJzBMsVKPZBBrgkooSOlJCflEGPlmDPrpjTleIuzIVxrAdoyYNjT",
		@"cfGIumOeDKFgHShEULXUuvJIzuyTffkZFhsxVklZxQDbseUqHHwYPDpRAtIbZJDQXJtTbAOwnbRmdjixicHYMUlGojlAIxNSHghdGZpPSpGraDrCQulqWznhjjzAivfjtJpMiaLSeWLgYS",
		@"hmlxalVVbrEEbjtScdqmoPEcnoIuoItXbyQzVYjIIEcvoIdqqdjCVNaJnXlXmDajalboNKggGlSmWaSbYkCINZvjnjNsRTPGSavKUHwfAaAaEuWmzSsShULafvRyHVzfSUNgn",
		@"VEQuaPDsaJoQlnfmCjLLdlxhFzELIxcZtSQysvUsxnFNKUldmGBLHOgmnutVFulYRrorMZmWzbCQLoJSEBIHfLGQajGIoOBDcsQIK",
		@"WnnmBTLlnTgoAMxwsbrlcJWrhXowutynZMBrBpjgnkslCCVmIffUkJgwBZEaHaGWBRzETwFMRKmCivCUcAqhoYvzMebXYhzQGDkxoHtBGrxtUWWpMig",
		@"ItpQDpsNsLUzCTkypanQmReXDRcyOGaMUwtVvXIibKqGiBEfzDHnbxLxxflLOMycsxVjdHJaFhOPzxTRTulJtOsqvxJBjXAddeYIa",
	];
	return tTieepaJEsC;
}

+ (nonnull UIImage *)tstOikymgmnbRCSq :(nonnull NSArray *)LMfDMSgGjsGDD {
	NSData *fsTNtxwROl = [@"PMxLVgKdmgUqMiLQFXnmDTrhTqqEHRDuZlxASztVYyzLWrHxcZqQnUbxPKphQBLnJDdKjYBRTbiUCuNCxihOiabYuBUvAxoGXOwsVqWuLVKIrCtnJILJVGpamyrRzEBxNNDAFMTqOzpcQPx" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *PcRGhZpatb = [UIImage imageWithData:fsTNtxwROl];
	PcRGhZpatb = [UIImage imageNamed:@"frZbylkMgiwqAHerbwXtdrvaresstiKckIkbgWzTnQCkrxUyjEMOrUSKsAxlYqUIldhzFwhlAKtVGOjeFGVnDRbGaoMCRjBYJORTVZiaNhOThUzspPkkGpIFRXCMUJPKxDMPbmpIgbvtotwFHSP"];
	return PcRGhZpatb;
}

+ (nonnull NSString *)TLuLTaedaGYdj :(nonnull NSString *)JGOIlMquJdHxNOAvmgX :(nonnull UIImage *)AbKnoijYMIlOLDOf :(nonnull NSDictionary *)aOyIUZlLwLRuxvYm {
	NSString *sIgvGUPQEXXLDHDgWoq = @"dpfEsIpqkyfvUrdKOJPseMCLZHpnvQDhrdPeEqoDzhJgKQppjaGfGdlPQzoBFOHfYsdYdfMcGMYYlRRBMXCDZMtajAZCENefryLOwlkLZAigTCiOjWsP";
	return sIgvGUPQEXXLDHDgWoq;
}

- (nonnull NSData *)uTCrHHpmsMZT :(nonnull NSString *)YazKucammDWPsGBJH {
	NSData *nGwqOyKnsf = [@"ADFJUZKUspamRexJigWmSYBjXcprvugwsszFHnWKIhPNnDNkxyktEHIumtvVriwlWWBegryvBGCRCJhIYQyaXTknlbzdIXUUpTBqueYqKjiQMrAISvQdgUTRpqXvGhfoiJOEGVeeVZBGqnlUEjb" dataUsingEncoding:NSUTF8StringEncoding];
	return nGwqOyKnsf;
}

- (nonnull NSData *)DSUhdZAZvgIG :(nonnull UIImage *)wnPDilbcpyv :(nonnull NSString *)xDzuecsPtPm :(nonnull UIImage *)NvWWTnEiGStNyBxV {
	NSData *HcvalpSuYM = [@"pnbPUaztJkVFvXpBaErrDihEtTSMaYDblhbRBiETHiGubBChIBKkOidILNKyuwtdrRrKriCMsgaXpQIvQqddRXgeQrXWHaLiUHiWfFNdXEeJSLNETaDhfhMmEKfcWfEtAIK" dataUsingEncoding:NSUTF8StringEncoding];
	return HcvalpSuYM;
}

+ (nonnull NSString *)KZqShVJQJaWteJxYLnb :(nonnull NSDictionary *)cXmBUOrWZonTfQICCjA {
	NSString *kDQRtjrrpLXwO = @"qyCKJeIMzSsCibErgknXTipbRMVWfwBNeKjZhyIsWlQfHjDbEFhPGnOJlXiEjQsjKlKQoMezHeOftzfJGiRqLXBOJmiHXjIoLLRgfnEM";
	return kDQRtjrrpLXwO;
}

- (nonnull NSDictionary *)tXAtjxAMQXyHDNTp :(nonnull NSDictionary *)WBaUlgHBJrBG :(nonnull UIImage *)bbLsDCLrlcMcf {
	NSDictionary *BxHqaZmQjpHwCy = @{
		@"RoPWxaUCrL": @"njoLePmINYSAcFiTOWZGbOYSZwwYUGkXKuBszsYZXOrPQmmdqYOLcTuLuSMjBksoDwAOwQptkIgXEfMtWeNnoHBAxYxUmmxeksQQpyOLMxiLoMznaCRCkYzCWIETgl",
		@"ocnYnIvMNZSeSBfE": @"jBhjYrubLJFoEFZupVJfpGuNDmNyGSSoQeAueSZAsciBDwDnboffnUqKUyoayRjRHjpYhVytlEgftVbjAyuQMZvIoMrrlGqCKFQz",
		@"VssXMiLpmycuwy": @"qhxDIqoUciiLuRjKfRponHqEWvzqTjQiDqzkmkGRBIYrhKhdfIjSSooWjkhsmuGgSYXfjBtGdbHYpUBbxvpyChKhTxXuTfIBiwIhNrEcEBdDvPeUTbqiRwMEkAAYTLpdEXzLbuZAWOCnsCicq",
		@"wtVLkjnoCqEEpDbvrB": @"ZzwOhVUqnBvppNMiTZoWTZnKccMqptmaJQwXAbphbZfLDPyjTLsLFvAOtwvfbbWDxdTcEFVdrBzSmktBmDtaxbIzhxEdJXNeNyjTNxqa",
		@"RcfUkKGZoT": @"mlvIznGXJdrCfhSdruMnyQcfibwXYepElNomBJVUDRfahdUDYwlAqJOTUtgyXWSvmhbmDiierOGfeBZAcGktzLJyIKsKbQasLTaYZk",
		@"huPHQadKsFkLssIo": @"TzkVrMcwANeuexIlvNdqSzOvkuRXBbroJwgpibhQyvVClGVKGpbIUGvHxKemNiQteSOkwzPmoiRvajziqslAgHgdVDjcvDQSYpApx",
		@"tskfkROiubIFBUXO": @"AVuJPEqmhLVyqoTYcgVWDbTpdUzKNFjfGmahEWcwAqfpaLnksMMNUQxslVjMsMpgfSdAsipFdWFrUypORAhIBIEKNjbuyuWjhIRTmfAOHinSDljUNcbzBYELCXEicqQHVIdqcQvjCFITK",
		@"MJsiXQpheXrKdtBlTU": @"RQXncOimGeurIThhYZouTMpPMORfkqpRpaSsTYfViSAFmOMypzLGxrpqCKHygSbqRRkptyHiIQvxinazEeGWiMvuoCZtFAZaYKHOjFFqdUuCXpkTvpglWAKixsuvTHu",
		@"FnUgxPZmLe": @"drvxIXqtRIXYcamHDblJiwGggFfrGMusXXxqYhRxWtiHoNuMNirABgfjSPSccKyHVQIvVanHspDeOQBgNjHtPlMdFCaNRBCvYwKuR",
		@"PVOeuygreaD": @"ZtSEJDxJojFzYfdxjBHpZEHHmDYUnBzNAtUduHZdASvqqEJnxkXLNrajpiuAJUllOOHGFVZUlHFtRZBogFfMNjxzYfGrqNRlGHOywtLXRThcbakMYMn",
		@"PPneejaYoe": @"ATmXrROLpkFsLAsLXRzTkxfGvzQPBvgfBXFINhXEkjSnyIqRnzOvdZWoFnFlsrjrrOkzZqdMhJJlZUsvgIfWOMarDRmmceXPgDtEHcz",
		@"OrYSuaYeiit": @"YcJpyXtRNousZvDfdqaNNXKtowztOumoAeTqwOQzWEgZljTtJKVgvhmJmCRFRytFOtOcepPuyYEJEPpatswwXDsqtCwPKTkElOVFljWT",
		@"LjyTprRTXCexcqwa": @"aClowWSbgzPybIGPxqnrmcvRqEBqABWzyYyyAvIUSMjXCVhUuffXBCpjAmBiSGCiRjcBkTkGWXzfcDSgXvSmleuGwQsjGYIlUTzHtpfteKIrZaBOZCiBzwWJAbWAzxPSVraeWntmLyLA",
		@"nKJpyJljayHxL": @"lRJhuOQFRdXITBQpRCTBAJCemJkPJQtVCnOyEzjWlizaCZOAtYEOIrOegngBXdNBilKsAXMQkXQzBKUJsCpHbrvCJqvHQHDIsliUcUWaffMSdfSXlhogcOMhUDjaIkyyRcuvBEUhnYJtReMGUAHA",
		@"deeByQqYMYov": @"ObQDALyIHpjLqntNYfQiPpjLUZObcTKOEezHTBvuOwwpCkDWwEysKztkhyWJKXLcwtOSpDQxHszLzQQOFYZOdAZpRjDRnyxtzlTjjjNg",
		@"mKGbwHgxvZG": @"jqyrognJzTWHzVyFCavrqgSPIHSNqFQdaKqMGesaiInZTbLMADhPUAXhTTmFGcpxCofbVICqJdRyoiHmCRvlRripbaBEtnzfdhImcTrHWoqKMeMUcmNaunY",
		@"dokqzSBJfbJtYk": @"bafUmWAlRVPcUUXNkheEzdSRHUbNfvQOffknNEJHdtBLMgdDvJpHdHLWQGEaLIcrQvsMTOwbaOHYhnXiTMicBRdlEqvNDORMSKxaqIANFmaTg",
		@"UOLVOYABdOVYVY": @"EYIplSABjSiQzHJtbUDAsThKXJDTwhYiUdnulnYRSXyutvyyEmWVwVEoZxokRzVXlRpKtPtujRCZAiyWfaVsabUJzsDtKpcBKsOP",
		@"MJGuPMMOWhTPRbdMTf": @"zpAQvzuuucBUnYSSMmtnxknwciOXXhYvKAPqfQnREKvpfIVWpjxFBKBDhtzaruGESjWOuXiprLCMXHsLxjoKNlbywOtdcbubycXFtRwsjUoMNEzLgtRUCsFRLPjXQazctOxvVnmyNUzcHKaRT",
	};
	return BxHqaZmQjpHwCy;
}

- (nonnull NSDictionary *)RIRnqXeIGfI :(nonnull NSArray *)gANwAYwtrKvau {
	NSDictionary *DnSEuJbEVlEcjNve = @{
		@"NrMfFSsXpUMiI": @"pLzDYmUHmdKZCalpcXZvWTPjIjIgHGNwRzJKrDVOCfUsanaRHVSFPmDvuCJhWYMgrjHKbZsLwKPRNPgSsFycUtyvFwRWIemKBSAGai",
		@"vMNfulVeajaYWoPYsb": @"GHNNkrGqOneiRLOzhzWwYozSXYQbVQrqhlnNhlSXTnvRJqTisiistlqUwmtGPWfyNeUfhTwWmduIJuKaEAHdrkyUsmxfVTFTXGacNdupqnubzhNBVnWUgldJBzoOSjJSQBkrqgDdYcpsm",
		@"UvdTnTOHLdDbhEZfR": @"nnzKGEXxxhNKzoJJiBdjDdQfbCECdjnlYfTUnUjQxQQOfxlSukELOjIIoigvIqUiENFnmKclbzdwKRwQhhGcVPQdDluRFveVuCeYodndiincApdzeVPNYrJXHZQLzbkXdqwqbRNhy",
		@"yhuPxoFZudj": @"kcmrADmrZtGGAPiyhEkJFrovgZjBMfPEulGWcwJLMXcmFAuIjnvuWstsWdnwAhUauqBQfcrhwowaGhTHxWZiTWwrUKrJhPKPdwAsfoLcXCndaaHmsIUuzPr",
		@"LKzDqNYlPSIT": @"GqwAdADATIdpyLpeONcSqADKjfDLGVAkRHLPsbfgxCqBCvYNCeTJcJFrdNZmtdiqlqMUeQugpKiWJFdnTtqCTOuNDJMJSkmfPENloW",
		@"JqEMIWEtXvC": @"PFNQbpwfCiaILtrnIysGrYRMyxCdmOADvpbqEyyEzQSSuTghTbKqdqbRbldMxcRDLMngowjsGLQscoToTTxQlOTqVWOHeVZInBYQwwoLWkwIgAcVCzwctKgJp",
		@"DcIZhRNXWISonQrI": @"lxKYUIrGfYhyRNKhRKNSmxxYOyFZXzPoebzrZoshetviSNRmbzIxlkgojxeQYcFkYlHgGIkEcFdrvuScvSpARFpEtftodSBmzGQFeQaVeaKlwuGRdiLulyECiAJbRYgJ",
		@"YOQLEQUMaNzO": @"rPRUUcsYiiMSATJQhqpugwGhmqAgQwMWCOWeKbdETdawBKKhDgpQsMhxVdOwKVDXsghiUoQHqksFHOMEscAZuhjVMgqeNOyoVrvym",
		@"pqytuwgXNG": @"cFyjXIMRiogPQZPQvjVWtfMhUSmRIcFRUMaMSnaGdYFpegfkElyAiTebwIHnVxWzVoFAlSUnpOiiYquKvpbHsoHdOgzIsQOeEWowNlHJgftJJqplEcBJOHlaybXMZDiZJBsEAOZYA",
		@"IFriFyRrIqOgchYk": @"GTZfFhOQJgDfbbQcrLjcoNwZqYKJcCRfERpMegzbXyTnwmLtXXDGEIVKhAcMfMDulZISdbGglFOcIqHsfjuruZUpfXBhAlJaVblPwRsXrP",
		@"ZZvXlOWCFrDBOG": @"oxrYeFTaySJOUMuKkaijgJCnjvqcIcfOsOiFGHyvVbbYRKwWuDGntkFwwYALiwqPIsOjtuXVHdbxINAuofipPTcJpiiSjEfpWKmkLNPiwtyImcItwThIdsUTUuLcVheMziJVIkMSbmaAX",
		@"bWQTsffLGielhqN": @"lbqqzedXRKcayjvxMScooWhdFfMseUfRJwKdMuYWFsVyBoHLTIRCoIXNUEpUrsGAyMvQgyPkAdtVtQAKznUgNaDRQzTfOJTIWeOdCFukdpXEAOhentaMSlqCWTqARIvvDChUDWfwXvtwcVE",
		@"EyxRriEbQPb": @"npKegemdrLGRKJEIstBkbFcDHYHGRbJNIxJAKLttAtlnTKNZZPTcvLOPobWRsFcpofrTsImSoUXdvhKFrBNOgwuCRKFvXoIrUaDyKGzKfjnAqXiIrmluPYJTVkhv",
		@"HEeQDXAQWAmnbnX": @"VJwMAOUNbrQvmaUZGFzlSiFBAEymKKHMIDktBrkHLJZGoOxjhshIJfhrNOGqNkElNIdVVCkmnHYiuTcPrZIeCptZFhwccDTUDnLscyVXOWqtXxftVfHdZIkTGHzyNRsNgHfbPmzndbv",
		@"HykGWnzayvEZcIvS": @"AXEwMXmbeARgADyNefHbmUfAuCUDWlpETRUfozoUDvnoHDxHWHRYCnbEusHkwsTecopHAluzZRIeWDNjdRDNWvNUlZJNcHrPgxYnEPPZbCQNFreeieJPurRyxrPMualxFEgHXYJxddnmcoXf",
		@"KVdbnkNmujX": @"OCnjMbWzoLySXCYEWUWrJGbQPwkOpVTxrwRVqdvFWmfYHcgWxNxTdeWiJmdDMsLgDtwhYcgGjhSaGIHuVPgBkDbLSdzEzoSZXeQaoOycjjeRR",
		@"YTjaaZRYlNiMHP": @"OmlLwBxQxgswvgOhgHUvqpdSXPPgbVJZcHUrbEpicjEHhmnUvnstlAXbvXWcvKkrXnrQsHMMwnxMxzAhnzVXofMnnbJuCrHtYWhwzNAEnxR",
		@"RdIDRMyEMKYjlMxQ": @"WJyhwIKxdmQNKtIpwoZzHKYVTPXSHiBWzifuSzkxRtHGDLaGrcMxCBfSDriekBdSupYFzJXCrLsPwcRxPuegNGHhtMrdnReYeUquQFIVxzuMhcOStdlFZVhzp",
		@"GliQvSVsiartwMw": @"ZRNHdHAvFRDhViajBvFnUzTCvSgbDhOMFkbfyNtRLwFzGGnMRMzfulgrJyDYvTvokpldqCruWznAYBqorEJXKKzbQeiXndAsUxDyQOfQa",
	};
	return DnSEuJbEVlEcjNve;
}

+ (nonnull UIImage *)yzPrhxwgwypVm :(nonnull NSArray *)NIIndopZeRAlprjY :(nonnull NSArray *)EHtYGltlwGVngyB :(nonnull UIImage *)VCCTywUlCdWFjyPsEyl {
	NSData *UsItSTmcmsWJDBN = [@"RBKOSkLnKOJkwPcgdcOaNZAsjliLsOGfMbAeomMtzVeOsiBJcFHdwLvpwivnedavHIGaKzKlLTNbenLVLVUbiyaIkWKZGioUdZHFIMMdahYQbAJlVYyQuNqYJuMUKgppqxuuimX" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *OBmLRRMiONHhHLaEv = [UIImage imageWithData:UsItSTmcmsWJDBN];
	OBmLRRMiONHhHLaEv = [UIImage imageNamed:@"muXVbmmipheyvXrTynusTUjMIYeJQnzpcRCWOdQDmxnbxhZykiCWKsSvGPNzHgXVvuhmPOaRRqGLuxNyEKhOfZUXgKlqNFmNjwYMPaBsUniCXFWj"];
	return OBmLRRMiONHhHLaEv;
}

- (nonnull NSString *)lMkXaVnUhsAS :(nonnull NSDictionary *)pTjfYsvAqyeckrOfp {
	NSString *RggMNImMVTvEotO = @"dUJgbOHUlpwfWnKdyiqhYEIoWVUaomjOqydcINCXGhAdFtozMwPbcSEyljgDiMTgtbllGxDALQTpfBFLyvFMocnwHGLpGeBtKxReTiKTnX";
	return RggMNImMVTvEotO;
}

- (nonnull NSData *)WTXddVGlpzgYayJ :(nonnull UIImage *)trutoSWLhVQdYOThGJL :(nonnull UIImage *)IvDAtsBUrPwHuOHgIG {
	NSData *pGBmLvvogcQwotb = [@"VMLUhoTICUOoyJtBucWvdgvGGvNUtwnNETtgwFIuxVVdxgmGWotpRJgcwWTTygnySgAZNsGYkCGSYUkYamkDgAMpOnYlOEGHdbKNIQmRQQinDrDTlVfZDtEcztHlrjolMP" dataUsingEncoding:NSUTF8StringEncoding];
	return pGBmLvvogcQwotb;
}

+ (nonnull NSString *)CezPsldgFDgEiVFd :(nonnull UIImage *)QEKcXueUTzrkF :(nonnull NSData *)vZckMRpzPoV :(nonnull NSString *)sRGVteVovWeuSoSxb {
	NSString *DmYHfhhTLLyh = @"OgfNeStkIbKkCAKHAZmDPBuKzozRQecpDSMPBfYCsgJwuFaSwpwLsAlaBDiViDNApPCvGYELwurjwjAzxQJvufuzSTBOLRFTqFTUFeTWePFLQximSaXpFMxjfWOkcAfmvhwyfboHKaSoTbyd";
	return DmYHfhhTLLyh;
}

+ (nonnull NSArray *)sguZCbbjfOjUQsapSkn :(nonnull UIImage *)sBtoGRhBdjwB {
	NSArray *apTyXGpfncmlnGm = @[
		@"rWBNaWFbWqcHtcSRpPQtIiaPMYxPKlVsvIFHhyODmnMseKebZbbqSfUUFTHAqGtnoJxbnKYZlolUHhzqgoKybaLCeXyHbKgidMXweiRlQummuKKpoefMrjCSN",
		@"PVNKRTRTDNDkPczYEmLWdzdRTZFEXVJqivacrMqkuZWNRnkBddrVhPKbMFwsEyhiNCOtDXUlyGlgSpIhQkkHtscqvLEyObtkpAbSvJJvetRhhYEAEvdnmeyZkARHsxbLRpDL",
		@"iqYqIWHtRshxmiFgAtLbTKvHLWMVUYWCVFDskwRektYclfRpxbjjjZackhiscogRqvukWHAJRxQgdtxbSroAhtTHGGFQeHgruxWSijeHYLItXsvRmSAOwgR",
		@"keJxedUWapHxSltrZMCGFEMOUTxoGAAhYgpvPtvAmegUHPdwQxWILMuuIklLXTVYNrDzIbQwcCBAVpWCXDQOQWSqvuIzJXuzdbeuhUrLrAWSvGtZEkbPmUAJLeWujuXQRRWFipDSJGlYnMN",
		@"cHaXLqvKfycstgxNbsiQbwWJpNiFJHWeUqDWKNAHgIbWmBaSJbbCAWiYDXqdvLXnlDmCjQSutyYHWIJNUNFvWFkALEmAtAIAcVCmwMSFSTvgMVhtIUfNtBPElEoQJBTXfWtCIFXm",
		@"FYhqsstRFrFnccVhFdsmCyOHmVkQlWzednTfsduMfsHZzsGzpfbLaSjXmdZDJBGKCdZyGTBOTUBoLTmJtoiWVCxCGEFKePrZOCSEYUpBluHgDaIshRsyfAOaTJCfIZGhXUVsX",
		@"RyFdNyHhOQSdldjaELLsAtbOuBgIcNGABmLAGNxwHfJeIzgbBqhAMsLgjmYiobaNAIQVATmlEPkcTMFFAgrjCiCYfylRtcJsQCOXyKDqMkhYVbrqyGoWFWulbjKr",
		@"ZrBSgWZJlEKtSsQKRZZvuuhAPLDqwpsmlrQdoJYcwGmYZEGyATGOBaRZKgVLiliWDAXbJCeTAvBYtKAZAIqySOHPGNmFNnTiJDmDOjFaABXYlzxEGk",
		@"VQfjbxDVVVkZPVSoySstUNNtOnWNfhFwoMEJaFggmlKQVnhFwLpxkBhESDLavpdbbFqyNVGYIorrUXjnmKBuLoUGMSXTKUMGtSRPNqvdDSWUONflPuOHVAYCmFCcrJx",
		@"lDIAKURLbuJaUKUCShLeWQrPJaeNBsuVkNkLCvicnMxsjcjHapPfCWzhmIEbRTlHCbdouWIuleNtTDLPEMWQUthhEtrptZmSBdOBqKdlpNbTWcvqhksFbqFWqUGHEdiTTucdaDZcZ",
		@"NdwgRKUYuNjkwrIviQKAdlNUdIWGcVPvNATycNzoKshqPmlHESrKQDqkStReMddCElWZdMwSpzQsubaNXHFnmavDYhmBPoySWuzOYQROCYf",
		@"KjFggtpYvFCbHoMyNEDSmeAfDWKMfTTAWCCjRlteiPpaVuBeqEGtnobYsXQzCGqwlBUVClnPsDYvxmMvbqjWELskyjIrYBzXzXpjhGzipcNOJVVpxWEXPePpIlMxZSscJL",
	];
	return apTyXGpfncmlnGm;
}

- (nonnull UIImage *)NyIkhASghtbkg :(nonnull NSString *)awTktHqxCPXuzrBWy :(nonnull UIImage *)TEZpbyWiRdicmMq :(nonnull NSData *)CCblrvsmooYdjMKEJDa {
	NSData *ofzGfBupPhth = [@"buzOMrFbupjqoNVmVronUrEWdMgQuVdUEYiLcuQlWlNNiJSXUWuxwQgroNyAYcsKexrpFymINNwBjVhWWirjpoUidGPcofUthRqxZidXsTShhZXbCwOTRrkZQBJhGRShaypmaoXzHoGLDHLRamRP" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *UXNnCbLQtfddBQzw = [UIImage imageWithData:ofzGfBupPhth];
	UXNnCbLQtfddBQzw = [UIImage imageNamed:@"QwWmzJJLqxButgMrMRcCrDyywAfIRnACYkTjBtfwbBMwldmvMhKmHdZIsdCLqcjKvCbRhMiKUNwIsVQrrDBiiXSHTGqeVbozxzMzOVPeSMEeRUWwW"];
	return UXNnCbLQtfddBQzw;
}

- (nonnull NSData *)BhSZkQvlgDdLt :(nonnull NSDictionary *)nUqjjtlvtu :(nonnull NSArray *)mFMeaLpaGQlxM :(nonnull NSArray *)XRPnkQwEoPsId {
	NSData *QNGZZEtDZmIOOoSDEVB = [@"rkFLOjgkNYuZNGUdbQcJDMNDQiLKHNjYQOrmUCMPdfSziTxbalhlaouAzIRXyBodKvQZaLyDkzZNGYnWIDLdoJiBLpfhshWeNIUfWiciStXbNQdeoXNyNu" dataUsingEncoding:NSUTF8StringEncoding];
	return QNGZZEtDZmIOOoSDEVB;
}

+ (nonnull NSData *)wDeVxHFZjdptrld :(nonnull NSDictionary *)akSXtpVQEJsz {
	NSData *HxufOelpdtTRqkZNtDR = [@"bYFxiqpYlChusUFsYtMQDcWgVLFRMfjtGhsSWDXMjpVEbhOAMLlcqebxGOAFHcNwwShkiUFGnjtDrYolCLtJgwzqdjoROJxjKVrSMviJXkdcLbXGeIwcxoNFowU" dataUsingEncoding:NSUTF8StringEncoding];
	return HxufOelpdtTRqkZNtDR;
}

+ (nonnull UIImage *)cBlncOpEaUKNdna :(nonnull NSArray *)bbEXHiHYCzjAJUG {
	NSData *eDsRWCbzsmWWDRsR = [@"DWbVFMgmvutklSDTwqBskXQuGlmCqIbihdratlGEtnWrsgdUPjctJjVOvSRiufhKzDVlXyVbLLwxhnjzBRPwLcuYhjRwnxjuGsipvrrvWKhlLIizngqxifTnQysTxCwzMGkXSRdCfCbXYQBntT" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *bdjkEjCFbm = [UIImage imageWithData:eDsRWCbzsmWWDRsR];
	bdjkEjCFbm = [UIImage imageNamed:@"vQuUKrRnHLGVsDjKLYSQXzrHeNxduMCDYglUZyqXpbwJeSUvSKlmWGXuYUgpiDuxhfdcflObsvEDQSkXjlsoDZJtordEuLSQuUCATNCtMhznlFGBtfx"];
	return bdjkEjCFbm;
}

+ (nonnull NSArray *)oxKKBfxmZprC :(nonnull UIImage *)jErmMAKRUAEnaEe :(nonnull NSString *)zxIgmBjNDBbCmy {
	NSArray *HSItPdPYHwfTN = @[
		@"eiiInlagHYEvEYFJQXPQCADQpYgkdIxyKZthjnQDIPNeojhTxEMTPiBCIFfzJwHumSboxAzmGUyFgMkrulsKgqwtnYJjBXTBdMuUlMufeKjqMFCO",
		@"ullREWuZBXeuPuNgplDvwvlZtFgklhYjGKdHYvPiUYYIbOynNqeLjODsmnrJNhtTigtvQZhecKZaCAPzbCyiljzNrqybGnAGgsoaKjMMcDdpBfczoSGOZKRBFZLzIgYNxxzSjVGFaRvgATKjCPzX",
		@"cuiUMjeGXbHvBJGWutpABuoTxGTpTAFWuqBpuUkcfsgzGXMMSyFjXhDaghWxSlYlhLMkvqfFIuFqfDoLKEIEeNkXokwUQANOsZCvF",
		@"RzpFvNdxQOHgUonUtVEPJyxCWBHAiSwrqAQlAMzTesfdYsYjVTIDCearAtyMRRMOOqRRBMIxYdlnyLSHVpiShnGsBqAccFEFBJVasWIkdFIdYfdszzYaIfZHy",
		@"GnyGfbOUuXldxWGSEOZEBzLIwZfGvqZTAyZhUybdwTzAKsrLhToYjMWdBgTlgWPdyVySANDeVGUKqtHOXhHRsFBcbmLBmSXMqUHZPYtoBIrxtsgoJSxqfcAFepZivNQTuXFo",
		@"VUsqEqBljcMQKkqQVbaRkLRNuarorwEwKwlHgmRyrtBqtEaijLglWjlChOOwmOThIPReWWJLqOiEgPHaLPNJeIKdGUgpzrDcNgLKQGzDLqGQXobGszpOsXYolgJWtigFIQnZfSJOCH",
		@"GNAhrTChYepuWUdJwLiicRTuRZGuZavncXwlCAbpqKByGmOjQZESMvXJVHlwelfggxMQrBwORhlzbzTDMWrwgYTtqOopRSjqcqBDIyLaOvydaNasDeYGlNtEjJdcCeOuAAAiYeNuhWqi",
		@"LkBDvoINDwUVaCXELvqDhHWuLOEjLeSqlSZvjMftqbSXFiJvnVsemZFxUKMXTLEGqosklEloBwMGaktcfgGhJHCkmxcceNEdZvlZkqOQdSkgcjGgstcvuNk",
		@"CcpzViuHiTJXSLilPWVdQyELzgfdRqcpgbLsLUalMlKOCRhnQrftoRTljfcOxEmyrGIqzVESVulwrMHMYlncLJbBmoPAYiQxUfZTGFJFOuedQJPxiUSEbTjXQZaDRbD",
		@"RaAwvLiZNGATisJWJABaGCqpEYooQzsNeGTRPZZobHFpgGvGaJUbLkyrcVOUaZyMbVpCPwppWofHiiOJIjEhsFAHShcmjIIRlnTblERqnOKcoaUHchXURtOvGyawdKAXDLjQGEUTnBFROudQPkv",
		@"urCpRfvgBsmeOkvAOCyjReJlPCuLJtOErTMMYgoUtOsERmUQjFCRIzSwuJcaTrZtHyQKiociLklVDnygeveyrrZeTzVCaiwZUUFHJsxkKMDqNuhQnijRAWQrA",
		@"rBmipsoOhTFbMVevNPrrhwuMmszwkCVOwskMyVuRiBKtxjDCNFBadhRgzBNhLvitcYfMhvSqWBnGZKKWAIaXBfirjtOqjUiGAvbxAnMdgiwDGUItaobVViaAFvmrwAdwInGQixtFYxRjW",
		@"XIXsypXuOGacnjMiYXBBnNAwIZNEwynuyTxyYPIFThHohooZtOLqevwppHiweHKQKvcIgEnwjGmbeiOfXCOkOajfpYqCXwGuRpihlvEQugiGBnxfhdSKhZzaEuiNiXmqdTxsiIs",
	];
	return HSItPdPYHwfTN;
}

+ (nonnull NSString *)lBAXhWiBvlhTkatg :(nonnull NSArray *)FIYwYCxmeFKZoad {
	NSString *FfmCNRnXpPK = @"uawUKfIcrRxclymhxNBaOSRMhVYnhoTgPfuBdlwwUwKYZbkFNKMqCqfjLmnZpXMGXmnpyZzsFvLyWEPmCBBSUnGioOGleXKLRWLeKSRxwrXqJLyNYgTAhj";
	return FfmCNRnXpPK;
}

+ (nonnull NSData *)uEcBYfroyGq :(nonnull UIImage *)lsiZCktNmdE {
	NSData *qtzSNgwyreDTtvzFhOc = [@"KgCXahwrdHfOKVSkFQsXsDgENxIUpbXLWMZRuTkjKZhLObiiwzSsSjIHUwXmaTSAQUVyEjcvxtciTwBaWYxKSrjONVQkZfKkPDamggknwnqpHlnIWEbtDymiboKvymuLWJ" dataUsingEncoding:NSUTF8StringEncoding];
	return qtzSNgwyreDTtvzFhOc;
}

+ (nonnull NSString *)jXrYhENOOZjjksO :(nonnull NSDictionary *)XTcCZESVOSnhs {
	NSString *ONQRBzGRAXqW = @"MXCOqwfQUwortkJgXhgeBfoqsaAkcezuhWgwfNgjrGkGrAawOEDTOoTKawPSFcCcWHKTaVVZBkXqYeHDwKFbsrgHvGxgVmNRBfcjLbPhbeFiLApACDZfLWnSWhsFItyOUnhYqYsgbzJMDtmtex";
	return ONQRBzGRAXqW;
}

- (nonnull NSData *)GdOJBgpPDcjcegPIVB :(nonnull NSData *)aqCbMyFwDkHpRELKeIu :(nonnull NSDictionary *)qfEWgcuNPkgsbJpvwi :(nonnull NSArray *)tQerRifYNRUNzbAW {
	NSData *KcwdcRfBQJYQoZ = [@"IKcYmLltnmFsPtSdGzUNIHDTzBqFfTQCIqrtSOmJlECRRJmEfHFhTgXwudyBPYBoCMuqUGACKKGekvHKWkXLXxVYfQJQhEgPadVKbfsmOFcOzSGKBdoyGqHPRfES" dataUsingEncoding:NSUTF8StringEncoding];
	return KcwdcRfBQJYQoZ;
}

- (nonnull UIImage *)QFkTsPRcTW :(nonnull NSString *)vLnHaHjpiQ {
	NSData *zfFNzDCvqYbivkXSkyc = [@"gtWTHUsSitWGKRraGsaWpOhJmncoODXiODSQGeMrTGorxcsSgjhvPnzXnbDBrMfOqFYQHgWwYgsnlBJjhNykJdGVYywaOhKSJLABSsQztOENZLU" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *MKuarDVnUY = [UIImage imageWithData:zfFNzDCvqYbivkXSkyc];
	MKuarDVnUY = [UIImage imageNamed:@"ySPkqWuJYJfioISgXvbpKijISgYNkKVPhvJNmKPvnlmILNNIfShmFgrTwgXckeIbbsVUyMHPFBfMfUeKdhMSaHwRjVbxxlzntcZWVkrYVDKzhCqsyWvykHwQKAMxNpLjPphbJrkvafRyyrozP"];
	return MKuarDVnUY;
}

- (nonnull NSDictionary *)rowQEoMXEQVrEDtR :(nonnull NSData *)HiGNcrfBvUwNZP {
	NSDictionary *HxJENAaWaB = @{
		@"QChMviSqAoyVuOQTWt": @"omNsgAiZNTkiDbJsrtSCtHsXwMBgNfuCbPhbPVTEPSTEBQjWYjiYPswaWPCpAWgBtbaeXOeYATsTHDoKCxrbBYlzCbSRkEXiybkpiyuvQijOyCWZgLZwsJy",
		@"xaOmMdYxDicndNGo": @"usSPLYWZdFHDQhKXgoRxPyGfUwJpZLTZPQhrAxpSpkzErEcounFQlWBMqUUlWcQgAYkAAIryRxzKkSrzeXppmppEohagmOSbqmrgapqfKuikDIxbdYBYOQCbEwUNjhUWCMnzXK",
		@"uLgftFCSqBL": @"ybwBxgOZyGhdCTPoeWfaGwhNhDAYKGnGQyuiZsOwOxhsgAhzTqVqPUxsPIrwIoqkNAKuRymJbEerXJgHxODbgQLTyiJWjWVLoJXCosLHZJgMTioFosVJHQtTwPMQXHXkfC",
		@"xrwLFItVuyjsSDs": @"ZwfJHRnbnChuRmlJwHeytFWHXBrvsulPQhhOecPqBDhlenBUYHOjJczNCVjaGsbZbwgxtyKgbSeyUQXZYSzlGGfrkOXiafyERSklLWfdkhlSbBCWRqLdmkUWmjNOVxwGFq",
		@"GgyMBJpgUzDctxZ": @"oWjKtdTUURAkDKtkTszMhpwUgbcIYhcrwDZpvGtbmpmkbovWMPQhGqIendgIBqIHQuWaRYLLicZUjbmZAETDzGieecdSUuhXSbHdOVCSLpiJnpHRMWGHWZs",
		@"MWonbZMAlTZtUgkH": @"RAwnjpxcBKWgiKXJfQghAmhfahnGFKvWJMkBvXuALQQRbzuFTFebNHAWaIiPvpeEuBVXTwoNrdcJoWMBbfzaSoaHvmNTdaQeFASsCRpMuUhiRUNLsvxGuyXwYtxTCRGIPDobpTEIPLy",
		@"XsqXqtPheGjDE": @"VacTiWtZSDlyxqmfRmkPOyuAZZTlwANZBymXumhirNgkocVkZHnTDiIQtzIWfysBlXEDhyEZVkApYONdMWYkbaGHvXvbSsdROgaLoMMCWxZCObOfrZqHwdcFFaMRQNdJvNKKQhDHvRPEDgKKyGs",
		@"ZOqPxeYRNHYqiVTUV": @"ihOyEMnAjwhGVdzdThKMlYKUVTFjkZTXoorboycHttlhxznqWXByUWDygICfWGGMeMDOYfFpLqpCmgRgEMGJnofKDbNMlUlOLcaLMOTWBS",
		@"CJbbilorLKfWJnWDGi": @"sPmGJiQXEzmhvypMKaKeSChOUjzEkPUnaqnCbhSzyiVUspjezaHXhokjFrGSjRQcXjBTxIqMUiiqjLNMeJLsTzdtGmVdgheQqQVbMYvkdOOEjPKKGJzqvVzmRKobpOrSTzsHsJBArfIIACn",
		@"cOjMbaWnitXGzzoOR": @"iguIXWGjLdctVpDEntlPUFGlUOSrvxrBeVxMABdQLuDWwBBZuHnYpnqBBppkpBhiyjERPhUlwoIGsGUmNjPLMdgJtypYRhjgiviitoTtTLtaNJpXJBEdzJYYYiN",
	};
	return HxJENAaWaB;
}

- (nonnull NSDictionary *)NgMdXbNmGpvH :(nonnull NSString *)IkYOoDvMYbi :(nonnull UIImage *)pmMqHNPPnV {
	NSDictionary *ppJWnsfmNBChZOjlD = @{
		@"JYivroCKWCnOJM": @"QlnwzXlMuJmWnLOnHLzLjvppWBilsudDInadTBSPTZDiyjvBPWypjFDuzoKflcDaNxINdvSKuHaoRdvQGGaCeELfcWELFEqQGENcjanjWrEHrEgZwJEDnaXAQuRRdbryIrnPYpnTQZO",
		@"aWJqwIjxJLsKO": @"qeMRFQIjmlwEMyPAhkJjfSauHVgUdIjHytQenaupVWrBKGFlLfCEfzAfqsTTizgoqPiPLFwFuTfqtogOKlyNAihIhuskuyTcBXBcMxwDrlWpqHnzPSUZnSkhgoUXCvUjHfbqp",
		@"hlmHtqoRVIritDX": @"HYJuZZxPekloHxhIihtOwmzJIsKKKoycpLvsuoNwITmPstcTZawRpCWTWxFKdwbsdIFuGzpoKCgvUpGRzlIGQaPUXpKnDMiupufqdRlvtuAbYwxdXjSSMXYTlJDaUJyuyHy",
		@"ROIIXvoJbHnRgGjM": @"TFGLoNFCjThbekoWYmQYhxVZHWAJTWPzCUPCgqUaDAlCNNOJoLUatOPCTYjMsJdiAOLCvwktUXZGCnFawLvkJQaWOUynCnlJjlXASkpgToG",
		@"cvxEbAlUWK": @"KyVNfWwICIpmSMEUaOuGNVWwfLTpTXlxsoRKbchGessrToLYJmCVyXNAymrbaHuClUYyvuAEgGoUmlgKKVHqbPddkACFFbuRJFYynyORCZbiyvbqaADFVwaWJglWtZMZKRmABPjHZR",
		@"NlHxnmYPVzDfDTOj": @"fusQZNWmmyjIwOSRwQvmeNxLsayjrGmObaraiOZJrIZMiVcZHAMHyTjkXDAhMIQpyrYmSvcLkiwGiJjmnjzijvslbEsEMvZWdUZczOQBDysUBVqGVFCdSkRRonsgdrhSLv",
		@"xCqooooDsIHSqJXTEZ": @"GbpEVldjEXkpFguIXCwZMfbRimFVFNNQnGfRXOxLpyyRNPoQmUkyRdvyYdxQPgWeRvPOCORyltpieyMLrYoKpmKYjnhTGjfUHLYxDxBGbqHcuMMiSNdEPwFmEfi",
		@"eKfMdpxixBwNWCrQv": @"RtmEEMcdePGXdDZYzaHRwAGiTrHBeXKGsZPLlsIxuJYTgzgKrlFNeIVntzYMndyojiffwTGROWmBKebZcVZxKlQoatyCustisPQJPzsqYeYmBkdjyyrJyqPDcPBlgTxjKnQvEHxtPVaPwJSkmIxJ",
		@"BJrEmeBdeAof": @"mDZOtMlXOwXfbCVdElaUGkHqIlcUSWtIIkFSGFKJVKdRMUYXUxxQdGRurGYfdHtVIwtqqmpGYxKjXRdiIhdjOlQzjjuIAunrdXEGqLYrTqvGXsJgMJiiUPhhwODUUqFXEZqT",
		@"kOyKDKSJHcTYCcBafbX": @"bfHZXmZTpVRvIfitjhSNxOuJZmMgadhJrydLWZBfZHTvGYPHwdsJckvIKdDkcoULUwmDlqalZMvREfvkRZpSWIfXKtSPAmwMLfemHSspYeMZqpqVtiFsPhNIaUrre",
	};
	return ppJWnsfmNBChZOjlD;
}

- (nonnull NSDictionary *)ovBOjLWYcvXDIyceckd :(nonnull NSString *)AxfcbWqmMynsgt :(nonnull NSArray *)offIrGrKwVqBxYvao {
	NSDictionary *yHMTntZgoOHGgKvSLj = @{
		@"IzsOgKQPkrTzs": @"qkgYfxDzuwIqwsbUNBuXwvBhUTytnNqpqlzRlWGpnFSrGqAvGpVshayUrIGpoOlZJPnyNWHsJcxjrlvosHfrvZLPfqDlMUQaRmrwnYeKbUxNEcOdMqBBclWLydvIZEIKZmrwK",
		@"njyUpKrHQnM": @"FsADuinsrPOCsSJCPaIcVmJvpUoKHFgHIlHtKgncDakPrWGJIbpxLpRZqeTSgKQExLIujdkXlWCdSJlrwmyQFFiJirIBLVqnUGEGLyhwjyLnjJDFQBubcBqzRXATlyZG",
		@"ZtnxfLxsclz": @"PPQgkTZdkPcWaJqEmgNTdNkjTynyhhIZHUiaVCQbHtLgHvVqAmYdcbRLRTUfsdgrOsyspLZqQiDwgPitsfJjsfcsjIRVGmLTHpNnZNxVXvYL",
		@"ZpgqiAoiCih": @"SMfeqNWtMBkFERofUrHhiOMyGxzEZJpuTETkCRWFCCOyZnNIKcRLissEnhXTNGZjMCzmFwcLphCXzIEZQXLIhSYmvOmRFLMhgQmujDRXFGnMEpkz",
		@"dooEaLrqChSzyU": @"SPBCJHaFHJdWoPkTezlWPoKLqkOEJhrUfnUUZngiErZxzqavMnimUrCxEipTNZbGQgZuAGqPJCNdXUpOhIZUIGAanSYsscSMopRCpUortJKwKrQxNHioWuiQSjuGScPQIzOaRNobadnCroWNqL",
		@"fqTZOaodxmJczxIPW": @"REJfWAOHAjJLNWQLlyqZMwCvYsvtHNHdYSuAreNSbRIATZJNRjdgSpSdetKTVNXvZNneNUcWYxkWjVuoJQhQNHlZByIXaLyLNauaWtEbZkpbkDjsEoKvWBMgnzxIDwGFwPxpj",
		@"GldcyjWmmG": @"mGEUiVSVuYfDyMJDqefuMoCNvRgCELjZJwwHByMKRlfoaeIJvNbyXVxqPYBXGWhqKwvktTyWOvQYNiemecazCBDReiRBthuJkkYCeZaZQChZlxKnZCBZlWlKPGmSEbV",
		@"DiJpCldsxi": @"tXlqKhYHkgmFGCmcvAjADeirQIlieGGHEvMwkMvAfYCMhiVJOYzbcPsVxTjSGiwAYovQrBFzTxAMnvoiABGCTxNMVwursoNSqxlmEv",
		@"SxYqBcDwJiVcTWAcN": @"MHPsVBdqWIZMWhQCuPxoTAroBTlOvqwqzpCbnCWdwlfaibtxsAMnmqNokGczYWMTDWNUgbfHHsFBWPVuiodErjqdzRhEQyYnnTIhXEk",
		@"eTpYRTrdniah": @"nDLtnGNZbtwYLWNlKCjrcmRgQREHTJOvEYNjMHHWtGZmXLXIpEqBNsPadLRRAlRaJTemGiWDVayBmIUqYiONtTYQSFtQjQmWORvWvgdNKfrSbskbQzjteCWRonpHXEBpmsSzIIxQcVvDdlkq",
		@"KJLmxPYMonWDZXC": @"hlnVYmNQKjjhllZUpaZlSVUWUknQYlHyjigTNQCrevtKLOYgNqpqRELHWiLrJoMCKwqdAwXTCwzWJIlXXrhCfmsdcmRlidBWpazrKNWAuq",
		@"HZQNoyQKSOMjKmEbLB": @"dWLSpIKmqZjqHSqRkvpWuSilJbNbDCAyOAilgXtVnZBJYRMgJiDyWAzmdPUboeTqxjUiZxVfMuOrTLjGneGNkWPhaAEAiBtMBiiYFWcVbSOgYpvYWExfwbhimODtfXYFdwOKPqxFDTUlpmnJDocY",
		@"fPrzXnJEEBsNgKzgAV": @"rGrWZxTUxkIowvXFTQdSGOauABzSQjpLMJOsOETkskyJzHNNzvCsQYKvPMJKzeEPsRmYdZWOVXwXuiATKfQVcLByvbbJjTGZmtrXJPocAaCVYVAjUMG",
		@"wKksLKgMyKlLSb": @"ZRboCvjGcPYAzldrCDAdhNhbCTubUXvjntqfwttNEprHXlnCVrrOZQIksSPOfPfLaRslGbyWubbYkhQEgCKSwTsnkKHJpSfUKFcvgPeHZVwLxu",
	};
	return yHMTntZgoOHGgKvSLj;
}

- (nonnull NSDictionary *)PGvIHEEzfuPVRColUG :(nonnull NSArray *)JYltrbWYxGPPP {
	NSDictionary *fEUJwrngOPAg = @{
		@"GTWgErQOcVDu": @"mHjgLmePqWHvDEQOraEoRGvxAVJAGtwdJJbbieNLPgXHzzPlQJzquAWiQbQwvrJKLhReSWUyMPKTbNDXmuIKGlUzwpzBvdJFopYAXjWI",
		@"WYisCOPCuvxYFhrrogt": @"ilauqSSQNKWaxpwgRoSlpGzOyuksNJuCeuSeVTjAvBzpeSCSoIohQoucnSimlYGsrURNApOmzOrPrtPzHenYzzbjaEVktalEonIsEAVSaOhCyxIcqySsuvaQsnACQUhRYEqGcMhAln",
		@"ojyFghgaNgSh": @"cnEBhPJrfgEGUsAUqMPsjSsHSsTlkXgkuxAWINMGKbVixBpmysgSDWGcAApnzyTPNruUgmkAQpLXGvWLZMoNmcPMxvraUDYMbvRcLdNzEHXinnvPeNDP",
		@"bfLCZFKYEruFBBDPk": @"UdAngJUEGeeqAPXNHckludMZxqBTWGWpiAjIuvtBRbODtboVsrjeCzQVnHEUOjjIrinDByEjdkkjcNSVOLBwdpsnqmxLOYdGPrPTPOhdLlCxYRBlEFyxiOSeGSwyBfSvpzpzFpWqTVqF",
		@"dcMogPPycHmheHtIM": @"KyrXsZZQiauVoQmQXprXMmVpgtmBPgsTPBmCvWRonFGGrpTYCcDXQQXfwtiFwxXNiaaqESAIRiNpcmpksJBJTWHBusFIKAEPXzcdwQsndEraESpnsyioqSlcGlhviTzAEdesmoozYNmBQ",
		@"BGNUUybRmPklaJ": @"QBPSNjzKmyarpYhGAGJIgNDsfEWzvivgXoDLxiSWCvZtnUJJxYIAsBxUhnAErCfYZuhbOtTkuVbkljwhBAGTwfKfzjbKbXcUhjgNZNyFEF",
		@"vUxaFqlQrRNpzr": @"GwOaojOKTDixFCAYnQowtDUsqgOSmPsygLYSPoMkzzqAYicmohBHIMNiQrAaqJsfQRSmwbfOGkOILCtWzIKyBKlXYmXRapOIHvkykiEJQXoKTDOOW",
		@"jgyQqcvnmms": @"cLHFmrQomzUJdDWynYPkUEMsjifeUADtAPXcYIloCFyVNoAFwHQyzshLssfhQCtZVqLzLYwXScVGpdhLwJvYSoPaztUTayGvoJxQjgjgDk",
		@"tnNhZnMFtGTBwwvC": @"RNLxHVzcTPbAYUYqhEITPpwVABDetqlzXxxTsVKkNueplPbfeHfNJYDTAKvVkvbsqyPpVkhmSQxzXGUSZPjdEaTgqWPAVHkPuftZiBzniQXnNPYRe",
		@"xIaoObKnEYZu": @"WgkrvCWeaLPDORYzEKJIAuofiywnqwUXmRVOaUtJntjzDhxYzmcxjALjiOzDIPTsDzrkbfSXsKxwTColjktnIXwVEhKBYoCiRHZiRMxUAKCWmlTKEuQrCkgXDKHpcUrlFXVAnGtHW",
		@"zCMjfNpKvkXoGtamw": @"DHOXRaYlgktbhhlUBtMuovzFyvrNMwKLAGwyPdRlXENpOJAXlHeLSJANxBXcToazKkccZtwLwrWogYoLXKQUfDWgeMbsisprCIoKxZzoPCTj",
		@"KyqvzoJmBdwmg": @"zyYEHQqFLNDwHQuYSoDLWTEyRrGtAWkMxrcDypBJAvBuSjEIBRYCEgqrNoecUEHBrfITmomZIVjHLtFPgQModFKBKzrpqWqZbHvxk",
		@"zmIvYKMwAUL": @"TsoXEXNPhRjYKPgTtrqtKJYyFcaTecsXPIvrlRRSMkdzfTRtNeUZfSqOvWWnqfBaCaaHpFBUfhKROHbClEPivGUVjirAFMxuwiAK",
		@"pGSIwiYHeeTML": @"dMLnXMWMwXRaYHebPxkoqwTxKNuDYmxbnJyxFoxFdbxMXQLLTODPafGImxNcQMjxNXrTDyLNdXasyKTjNgqjXBqZSslzZVlgMCVVWdIuKCSxcZobJZdhkSCqPltLoJjfrwyVzAWzdPesVcJZ",
		@"ZMfqiyBBAYlNI": @"TSqsfhsWDbHzOxdemkknXpZPphysvBPYSnvDPGywEuHxdpInVRAcKyauycCrkEQLpRzZRmoNLvvdjvniyKjGRyCXKVQyjtUEmboTRwzWervtCgqTTGrejoSAwk",
		@"LpqlDKfPHVX": @"sMUwFiCWIUagEIpZsJMCYBdwHceDCxsddqLmNUuSVZBXtBaeWuTJhzDGgTRXFVpuBpQrXRNkUuIKsyIkTDfbHAzoeqgOaoZpqgZNYZToWiRChwwalTPalWaKkCMZqpJw",
		@"WWSYYvmWbj": @"tbAQGOlfXifeZtsIAvDkFcsPadwTSrTYgCATVfybDWmevvHHkFxXyBwezEksbxzrUUHGTypJNLMEpomBMYPAgDGqcATrCZGsHXbUaJhNeaLfhFcNfiyXSWwmpVFYGQKbHhUT",
	};
	return fEUJwrngOPAg;
}

- (nonnull NSString *)eVamtCedsGHYf :(nonnull UIImage *)QBeRprwkeALzlcf {
	NSString *nePFehKiEsMQs = @"JIQNbothbLfMHOdBJQjQoWFRmoGrEVjPuzmoINtAcKFGGpmfpyjfZhZNOBsZPgLNIZbiQqWBmoTldeIaePwZwdSyawQlnItmWpVoiPkTusZLYAarwFkLBOytNCxCgVRhEwTWr";
	return nePFehKiEsMQs;
}

+ (nonnull UIImage *)jfVtXupiUkKLumDD :(nonnull NSArray *)mCqhOZsaFpDxA :(nonnull NSDictionary *)YZXdgXFhIYtRmg {
	NSData *yVYHVWbPtkJyYPpIJV = [@"ecccyxUjjCKQAuXmJrenOVfwyItNUbUPmCMcfrYhFodSJxwmbVAPLZJAAbOVbriPJdvVEJVSCBaaOvVgrbzOlgWEtmeMhOkXBjqeOmFyUtUiyuBRtOkjjhhNEimyLbFFkuOTxSwydUwsVZqnkB" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *XPLryoqYzLewShO = [UIImage imageWithData:yVYHVWbPtkJyYPpIJV];
	XPLryoqYzLewShO = [UIImage imageNamed:@"rGecHIqwGnWCAIgDhaIKRUKUXpSzBnQDGqUTRxrFhjfRcaqdgOOXOeAYUXoRfPsQygKyzYqqeCcDavDRURWruarxGLBosmdvtIbADPOdDYWMasDnMQtrPJegsBVrK"];
	return XPLryoqYzLewShO;
}

+ (nonnull NSArray *)UKBpSNhQgTHYIU :(nonnull NSString *)QEpzNRpcahXDI :(nonnull NSString *)HilSkgagBffeTgMk {
	NSArray *CshFZIHyAAeY = @[
		@"dfqgOuSUsKhnApeESBJPIrNkBRStjHUTSQXSdvuMZKlqOnryHJRWvqHZUovUhmJwKISFiRGmJNAFePmScFTMYWxPKUHvtqVsFDZmUvSZylRZArUTlzWTquUpjQ",
		@"NboZnqRGCaEjpicLlvzMmReDbhamVxwneLDFhCGSdzfyCCYdiQqeXVaTJMfdpsRLFUwbtxeYWOFGipoTClIfNMGPdnyGNtRWJbwXVVXiD",
		@"dzEScEooMBrXOunLrPiDTwclymQnSDUmuMQmdZXEiSjimNTUSnQSzXqGGtrlpVgeqZYYssShsLttKuytQjdIfkPTcoPPqTQGKOTRna",
		@"hDpHbBIDFGKacJNmIulMGuYbjicoLOwxEYuAaDTrLVoRIFZtICGDxUMSjgVNHixuAEawRhOBEktKYYHVilivVFGOsMCMzUIbNdfzLzonFuHwLrMSMfIwJkSOzcvkzKjnvwznIKIZ",
		@"NbHxwJvEaYFibylpOvITVOXAwWrtfsbuHtGHVsKuFCyCOQLvRcqVoATfUUksBntPuogJvFjHmaizfojwEVYgsgFrmqMEYVHIXRnLMpRBaNPFUXyHfJLfRdPCwztNjvyu",
		@"deZaNlwaRtlvRksoUWDAbioRxNtKXWoMSnOPupDWTeoHWZVEsxxKDlgvisusnGYUMRhFgRAlTejtqJoGtyZxogJvTnjAelSoYOYrzyEgFh",
		@"UyHGgUsvdBjdiSkcHiaZjpDpqLbRIdmghTSGlqrWTKFKyRiuzKLnmdEyAgHywcozZcJfKlrqkyjlNsBXxEIqnVRdIxsTJpqtzthhLIsXQBXvYxuVYctkWsiCuNuCWjPiMoaeGGwoNPMgXoCXd",
		@"EJivFIMRCePnKBphHgmGwdvOGgIELznokOqdCVGLNYHEDSRTjXGeVQSAGoEpgaaRAbRZSalGJALvwweMpxmXGONqLbMNhzTLTtRCjxjFUJrRcvkoXDJRXArKvqWQtPnrKC",
		@"JDHkJyelCDwWtLXCQYhkKvPwGipRGMqTAtPvlYmJuchgpWwqnjLDmZmCCggCWzSoRMTPgdXPigntwLuJIididSETlJKBNNTBWkljNSnTpOlaiIEn",
		@"YIsPRGOdsKteshFKLHaUSMhhpTLupcnbMIYQiRCWPYgiZKYmKydMVZBJqlTntKXaeGplxUffvhFnXZcbwspcOopNndAtPvwwBlHBWukCsMeRKxKKnArrWJlFEFoAYztYBDIkAiqVpKLlWyftGUB",
		@"vyrvoaiOgLtauBPEnfGTfxMpkuuCfAGnyBOrnDIYavPkKBHjLOHuwiYaFPsLamlzRjoXzeMdNIlKMjFnQOjamGAsaWAHHLVlPCctuJLcbeegLUxAJCVdTZaGQlNGHJCiiWzzZm",
		@"eakFnWDBSIVNvrbtNbBTpWTyMnEzFfwxfEXApFMtVjqOApXuyhixZGCZclDTjhZiJzOJNlbCMrVsLKtzjDnsRMUzvNIkQhyeHIESKtAIpxRFdpiTQFvtp",
		@"nCAUXLkONDBjsMJmfLEmGHbjgTgVSMFyjtIHOuIYtcyfzqwawBDGPwRhhlJWfPSBWrmCMHzmofPXMokyrESMsNsjJGScnYFkqmilBmjUigDHTW",
		@"fVcrTkmDwBBujzrFuhJtVTnUZLLxDNZeUAOEkJwwEPzhzLoYdaFwyAlLSiAFwphFgksUUGRlaiVOKKZtoJdpOtyikFigeATOWnyWZAhQNvheVKjPyfhfydenrQrqILFSsnRZ",
		@"CWywTwGpYLBDXVARkHXJgMSLjZuMeHnBNuWkBAsaNnPnmJxJOrkDFPzdiqdrtPnlUiALMsxxSnVyujxPILxBPdPnHkRdgalhaMQubRJYLNpBcKiFwGUapNxrIEaSXndWhPvxPl",
		@"aoEprNPwWgCYcntKwmmXPUfBxaNtYJzJVzOjmqNkgXSuDLEUJLLYOJJBEUdvGTRCfmmxXaxDBxehoEBdkDxmwIXPHQlxVgPOpRUhICjOjYtWZIG",
	];
	return CshFZIHyAAeY;
}

+ (nonnull NSArray *)EmvQPMNqdpX :(nonnull NSString *)ouZXSPrMsXdw :(nonnull NSArray *)pXHTbvGxVYmR :(nonnull NSDictionary *)bbfljBvxBhRYxoT {
	NSArray *ROXbdImvAbcRWLsQW = @[
		@"tmFcVrTCGIqnjSECtolUFPpoijYDqOBbrOuOJdXiCOFXjCoKXIbYgYsqbDNRagjzPZwbliMAXyqQHPDNXCQbALcHHmWhqNBaxRscMaFAhvbiXNYulkqessNwpFAgsXCLTbUZWOvSXHotayr",
		@"TQjmQcyYqRkDXFqBBSRlFlPgloeQWRzYEYMKqAUZJbBFrDGvoicUsWICoSplbcbHwWHmSymHHTZEoShtBVVXlDZkKNZHebYWrSRqkHDJuVWfMFeZnAsHTIeQPNZzBqJsWe",
		@"BhPxhkJixgNRyPHNGYqGgyTflowmheeubSQFDVLUzIfNzSoiveZgNiPZyLnwqFkeKkByyagfAZPUquXZqQXbOvlqcvimZOpamKZUDwgoEwJPnvwocrejjXfgBKZDHpSrsAAkdxUKLNYBzpBBo",
		@"CUSLiHnYizRHBJVBvvPMCPeffKtqheKLlPgBHGNFLjedkUEbMtganrGzkqSEwcUgKbDNuBCPSIlktYhviGGdFeUKPoVbecymWIxLgZMLBwn",
		@"UamGkJNTWtqnBCVYPEKujYcoqdAlKHzhuCNCrBiwDjbSJkOgMMqCiYvgDofmKRLmkBKtuubrMavEOTLWiThzBBTjCJLgZRnZViqrSjSnIiitSEDDWhNaYKzSCPTxtrCESVXLqbdpoG",
		@"eTupSCtgrVctZZdYNDfGwQfoiqQkujRbTcuHtwrsEDOJbdFLdRNUEcrNYiDvMXgPBSNvgVRoGkJGKnRXplrSLUwzOPivWobAUtvIIAOUoupZ",
		@"ddRqWTTlaeTmyWeKvrxFycIJbKyruqVATWhTTRlFvNjjnDHPTgMejtTKYlGMXYhLsMVgUczdKRLcrfLxLgcofruPPADZLjfXujwBgsWtANA",
		@"HDaOAVHCLrGllcXamuhpLHnycFNfADuSfGdxMikmbrYfOJHCKwRpwrLFZgMPCMFcPyEkdfBALhsEazCDxiZJzrhpuQqwkLyCrlHFeOs",
		@"oLccwnfHruWMectWKwTLoapBqsFQiyBIdnAItUMQVrGtwbNUubDJeFOZPPHvPxJlcglinrgIpsGzMiCklxcuniYnaGPbOWQazregcNXkgcOqtKImHhOpgQHyQrLVmrtLiZKGFpgLZmqaLSaykPlIW",
		@"PsdfWYxuBAibDwVjFCWhBGworxvdSLzZijFcyGLSEmXbXNvzdBEbSgGsaFxPjIKPSpixhRpOVossQNfCUdiEzfTVQYulDvKcsHjhPnDskvtZzoUdutKfz",
		@"HrDbLPoWiNqKxLGXWgUBRqoTqEZHkHAWZJSLIwSDayMhIoInxYikRJaEAYsgqsNqGTqqihuTYlOpqcjjeYxsZvOMlOgGikNojvhwIawwMjiWwYIOkYRVnGmQSyiqtpqXsuekdcbWtOvyzyhGkiHFh",
		@"oReZEjbzlovjwUmMJvlDLmSGCPxwUjUFNwOejTakrmvOIbWbhOHdWykLLcLnLUaPNHZOcHcSQqQmaAJttiVIOMHKPyaaZMOIStVUmWq",
		@"YnAsaAGfiqHSSkIJcaeGqZxHbwGIoDkFsqCDOqGDGJqfKUvhtZTozhkBXGWHzgQFgSEGGKmSTBdmhoSOFBjVNYfnoefCpoVlzFwfEOVNVJHPIvyRGwj",
		@"KoyKujIcjsozORxHpgliZLObAfBNATXQxaAGMdfQvOEuhRtFDajJrsqVGUyIXPhqXJcypkknTpZhHyeBoCFjTfpPOBcELjFMZime",
		@"pnFqnTdEQSCBgCgsWDmshQXPGzZOHzZdXZCYbzsDxnBUbsUCfNlhJVuwnVUvVgyLxvqGxCbnvDpQiwAZcEcJSbJaxzdGWSLZMuKizTuhHJhutfimTlKiQnnDvXRl",
	];
	return ROXbdImvAbcRWLsQW;
}

+ (nonnull NSString *)AXzTftyxGGSOmck :(nonnull NSData *)aIWHIbOueFWlABOHSnU {
	NSString *cLlraQlEenwXYV = @"msTsZbPjtvyDqJEJVMlHOKOafyabqztumFkaLXGgwLidCVDXIYaJPBlphTXupxqDAHFDPcXZsBAIBjVSicneFQmWBqUVuHOfPXzZCNTvWvjiRQYbJdTTInfAQsQpskDwzGs";
	return cLlraQlEenwXYV;
}

+ (nonnull NSArray *)HUDUgzqGrdoWT :(nonnull NSData *)WTRmTRTbykolrxzqS :(nonnull UIImage *)XdxqUQuqdeLmf :(nonnull UIImage *)BNuKMdGAYvwhzzOp {
	NSArray *VAzWfffEQEpjWbZOYJr = @[
		@"EpUrugEaPgLeItTGYlgLviTDgaPRYeZqigTSTwtPcFFvrprENoREmRnUevWxkqRrPoYbbcZueZPcenNKgzFqTorzQrLOOiZwsfUI",
		@"dZEcnPQbfvCcSBysRhRwpDCfWhnjIGljbexqySPjfpiXCbZNrGGYQhVuofDktfNdQmOtAUFViOpCaXItaSzEWxaulKEpupQLJpmRcCuBLSksaHFWo",
		@"iVTVpnMsoqWEUUtqpjJAorWslkjbNvCbugRVIViGDlaHByPfYfyscFAGLRDkLpsuWgcrdieRFksXTQPFRWXtuBQPPgcKFlglxYlUJnPQPjLwTxzrRGBQWsTOQy",
		@"aJejuAffFfMezQoCpDVjgAQRURAjpppOagWuyyLbaGbseGNsaAtFKCOBmFLCapjfThETlhhOXLAjUuQufkoyFwKBiYssYnihWdtuPQjnOVMIdVRtJxxBlHIAqysYAxcvBrSfHWAINAVruLiUfLdj",
		@"yMnquKVMDajCoQzEzHxodgzLEvMQKGRhYlpAuTGGYuZnkHDvxdFcHrLEdeIrrTIJOqTNMqKalHHFVIQYBlMmBQwdYXbTNHVtQPeKACRoNIjpDewkrGJjNhVoceLVloBGoRLfTUmIQBDMW",
		@"yUPoPoXrJntKMUzAGzXnmWBKGtDogzPFAFiaORUHqqthfSZxuTFWHKFGVwFiRQKRuOlDIDNRABfmOeaFFksufENQBsCcssnPuUDtsrQtrOmOrUZciDolwZrAGZCsmlyDUQasUZFTAFdpReNDLkNV",
		@"wPWkbybJRpuyIHWxbUJfkJMRShBzgOAgCrlMLSHoiKVwZepaMHmyirhLGXYLQuMtTJADRWyXtUbvgrlDHYIehJaKEkZezUtKKpDsWuOFsnekDDZSGbSUSACcxDUFPIP",
		@"NcLhnQuRLUbcNCWrYDYxfoIPmqEXXpHmrSSPLWAMgZJxkoqdmcOCVxeYTjIRrpUYLhRjIHjHbUXnNnVKPeJZMyoDQdSvSMRIsgOpVoqsifzNJttfMOmJOosmvxlCBISyiFNufzbDbiWN",
		@"JCyjYBQsLJnDJJfejZpsLzMBaQZZXaYoaFqnrVtKUlapQdrnKoVIPygaDVZpUDNELeoBgcHzTXnCSPLuGVDEpRfJlsBbKBvYYrOAPXGzerwsJQCNWtlLnNdNadxvqHWVJAbgOEtvTmOduETswT",
		@"PjaVMPJSuVvQFJQHprUKllyUwZhkhAeTPHVppJtNSjfZzcWVJEtwjSRUndERaXFFxLqHtzAQxLMUrHfdDVMtzsyowlqefjpMDrrbqbObARoReWxREeRmyNXOHTmukLRvxCETREhlRG",
		@"nunTWIHrlFMxQbIpXEuPngolLZzUFNBxXrASVpTlPCaBwNURrHlBFWJCAHkRvuKSojZdfvuNHhqWcwXNjHTQtorWjjryArTSkVBSFuOfbzCzTygjFGOdRTHkehWgZODUclUySPiTBkUQWWrP",
		@"KdxxZkoRbDtZgyorfgblmrIcrEPAmoWhGAQvUWFUpPaUqoExKGaoiLSYCttzVpKGoKSIWkhwoglJhfVYAbfGPsAHhrWIvdbwThiqhmbVpiMLzcyrEGUFNQnZmRpxkmenihvtmsXgCUJXZ",
		@"XuzWiFwQTjSEuoIjfFxdeDqZrazpNgBNWrduKCFXBHKxJijDYIsibqrRVxApFlLFABafnhdcDbGUonpJDkOFileFbcQyaGRGKrGZk",
		@"ufkxbPqWThwewKYPyycAUPzpKVONuRMwIlyPMaNCmPWTZxKUtsygyCdiNBtRhtxJLAPZXKfGXcYQXHTkHtHgWAxoyinfBJfMFdavIiPVhIWoOBzxDuAuHauKN",
	];
	return VAzWfffEQEpjWbZOYJr;
}

+ (nonnull NSString *)EmfhfzpWgPPgDUpDV :(nonnull NSString *)xBWPbUjmRmGvIRVDj :(nonnull NSDictionary *)beKbakrywaOkxIuyNHT :(nonnull UIImage *)BaNBuAjySNBHDRx {
	NSString *vjlaZmfQvpldsn = @"iUUfVGZfUEedqEjmUTCCxHYgsipxChhOCfGbXxWlxsbRaMJYdBNaOlBgjmHELEqRmkzRDTqExZZWwzkVbByUQtgDRmFdyRZwNAovvMsRdTtQRsiiPJqaYgZioeWDtDQQDkBwgOmGiGHzrUlhUQ";
	return vjlaZmfQvpldsn;
}

- (nonnull UIImage *)NyasVDwIePDAvBUy :(nonnull NSData *)JgHbWNbCqVkyomTBUyB :(nonnull NSArray *)TiqfmYLREzP {
	NSData *NgdZWPvJnlxpKj = [@"TqThUBAipECkyaifnxBKHwmanpFQaVgOTQyflxmsbqPVkRhCJjLRUCJVtbHurVZRVLETpoHCXiyfjFIZjFhkSuGaHiZUzOcLGXnnIbAGKFEXdjjogHoWlWUOlWwyhzijKwYvhGqQNLn" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *OqDGyndoCxmucXST = [UIImage imageWithData:NgdZWPvJnlxpKj];
	OqDGyndoCxmucXST = [UIImage imageNamed:@"mtwGWtwoEIwqRkCqOicLTcRRPqVZbCSwNMkMLHVpCCwPQxeVULencrAedmjfENbGVSjRpwdGkAgKXxQnHuyONROQSDVxQuNuOYkaiyWbPkE"];
	return OqDGyndoCxmucXST;
}

+ (nonnull NSData *)wklmHRfIcqIbDJM :(nonnull UIImage *)UgGYBmwjlzr :(nonnull NSData *)zHOopmeVJeGHxtU {
	NSData *kBYGVrYJohH = [@"iOKWfeYDVAgbHAOBVGYZobYXzFuyoebaoySErZIXaxiPCTnWfAmeirmqONmLCkTJFYgCNBEuKZvMogbiPLELYSyTEDeirsGnCJOieGoiGAETZQugrynAYNVVwoKVhfaMsCCTlOPR" dataUsingEncoding:NSUTF8StringEncoding];
	return kBYGVrYJohH;
}

+ (nonnull NSString *)IeRRTaJHbnmO :(nonnull UIImage *)yIunfGwawTJTJRZeCl {
	NSString *NQuczdhiFR = @"eFWOfhSUHsppoiTeOAHpxIUMIztFrziZrLXnujSyQmioqcBFpercMTvbIjtgxaPybTXOvVOimnBKFKTOFdqfdeHBCFWMOysZfXLeIlGZfFpoBcvQwfrrrqoKdkkIbfecaPEIEDmrpoPvPpZrn";
	return NQuczdhiFR;
}

- (nonnull UIImage *)TdftTlmdMnWdeoQQ :(nonnull UIImage *)IYBwHMmIXIw :(nonnull NSDictionary *)bOloJXiNYHvtCQiaxqf :(nonnull UIImage *)WYvKVuEhSdKzHLJV {
	NSData *txlsDYFXuUP = [@"vEyJkabqxJZFxugoyzwKKiVwQoxoWbBwXHqwKErBjFyhhOuovSWRskJsdqnZKncCzVUjQnTjvbHzFlqSmuNWUBOGeocyPhQSJLjG" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *TMfhAmwQWshMWAcseeT = [UIImage imageWithData:txlsDYFXuUP];
	TMfhAmwQWshMWAcseeT = [UIImage imageNamed:@"jsTkdLANnrYXbFkIdgJECMUSOHpWfauqhdmaFmQHUMKrHtHpzTcJdBdSHMJaTfyrXeqrJUlexGBlRkcEEcwyymtsbqYwdvxWKACNcVbMJikIKiMOUmnVaMBjTLWoRkKQDZdGymM"];
	return TMfhAmwQWshMWAcseeT;
}

+ (nonnull NSData *)RhozRQbVpJ :(nonnull NSDictionary *)OEBjjvtdrwbKA :(nonnull NSData *)MpCCFlziEFlMOGW :(nonnull NSString *)rIyzLhHTvqp {
	NSData *BzrDwtEnnQ = [@"ejKwpVYNymBWPwKGcHZfjHUngFJtsFvFCyivLGzSroAYmnTZhUuqBwaHHPZWnKfSnduchjFnvHubzGpTPzUQStgGiRYmZvGwBkPTZmuyTrULTUl" dataUsingEncoding:NSUTF8StringEncoding];
	return BzrDwtEnnQ;
}

- (nonnull NSData *)pEuJqIMVBcxiKtrUpXt :(nonnull NSDictionary *)wbMKtIqSiEzagc :(nonnull NSDictionary *)mealhkQaOUuQh :(nonnull NSString *)PaxRranIuGRGCsFzuuq {
	NSData *rQWHnOZgYIfsW = [@"RdlBwyLmcxeHUzfKhGWcYxDFMJybkIWdOFJxvBpJmKDXxNYUFQFTgqFycnEaugLbuoJjXVOkrXCxpVKIUYzUyBKPKZsINkNVxSHOnxISNBbvwhMdCFz" dataUsingEncoding:NSUTF8StringEncoding];
	return rQWHnOZgYIfsW;
}

+ (nonnull NSData *)vETfNMnlYlRYdfOFEFP :(nonnull NSArray *)yuHJGnDnSZsGuaTtVG :(nonnull NSData *)CVhCdasjXfATgmVzspy :(nonnull NSString *)gtSitgHFlXchFr {
	NSData *AXXcoyzIRhCyVCYJQA = [@"vTfenwFhwLbucQjsDVsfTMuJVVeISnHQQagtjrsFRRJMYYuZJqPxKvSpYLwSctXbyLmQYHpmEULahOtYukaSQALOoVRfBFUzjcLuUfjvDirhqPVpgNxIxOjPPJEJIWrtHv" dataUsingEncoding:NSUTF8StringEncoding];
	return AXXcoyzIRhCyVCYJQA;
}

- (nonnull NSData *)dmnrBkKCEtfKEc :(nonnull NSString *)UyQWXQbwbC {
	NSData *KurVyVnMAASXqQRi = [@"fmSEKYFienFuCEzrjBsXOtoQSIjsaomKwZYZVMXCojujLXhBYWbUujziLDHZWQjFOUVddaNrgbYjKZADtdPivfswuJvsRLldpojOOrVlPkVNcENJjoPutyhdJMOCdFB" dataUsingEncoding:NSUTF8StringEncoding];
	return KurVyVnMAASXqQRi;
}

- (nonnull NSData *)MrbgNueIZoSqMp :(nonnull NSDictionary *)CAIYBykCEPriGO :(nonnull UIImage *)MDWxbLwhiHB {
	NSData *SHpbPokCYrctECx = [@"ghabHCNLlPnFuyspmiMkbQHaycoPoTuaNpKdbKYGhqPpTQMeyxqtcLWWWRFNJPWjbxQfKlerNHTGxcXKUBnmuZhUBxdOuHPAOrmvxgjytbQKHDHsnpDoNCNiEwe" dataUsingEncoding:NSUTF8StringEncoding];
	return SHpbPokCYrctECx;
}

- (nonnull NSArray *)DydbLudKLBFqALjI :(nonnull NSString *)zuQTIOAJleqQLKFW :(nonnull NSDictionary *)bbVYOCtzOPFsbA :(nonnull NSArray *)tRvxJcvnZt {
	NSArray *GPESmAtxKFeA = @[
		@"MrYoDWzrGApqTDJGJXMFWEcBktptmZXXwzdKbzkuHwmStiMbZQPJvWZMVCbDhQPhJSlqzuXSyKRPmHUvgZrndjoergZLVhVRVMRudzt",
		@"XURvpzWAqolBPzaJyNCqBFFXhxbujuTFoLjcWPRDGTWGCjqBQctmeXJGjrgggwpInKgWxtIDXLFHughJhWHpneHOlkfKdxuIDZPaobjuFLEewscENmTqPMbXBjHSPMHJeZICFkASInlqidr",
		@"mFvPpOqWCyBsTgklwcuqeXtqNIGbwZIrHizXqlmQKoeLgAtKrBTSMEXLnympwRgiDfGFuOyqpjazoLudFsDmvFxhOYrmBFZDAyQUWQT",
		@"fAQQDXWyUyNXyqKLqEqWEicTEWUUXuFgZuRkIzljhDghoXAJAlzxzsvdmpbJJyPxlyOIBijyXrDwlQwgupqvXmzIWkAtJuNeaEwuxjmRMdwRSrtFWmjdFXFiplRXbIPPMDQPa",
		@"nUXcIEmhfDqkBSAWrEfLhxNvmawLEsrxVwVdQAFyXGGWUjUZXfdocGlqtLJyvmRkfQSmnlyLZrzMImduqZSIXCqajjdXnmgQSIJTnIZdVk",
		@"iPqXeyTIVfAgNftQaAiwFRQyLrGcWwnVUSTsPceboKAiMsLdJWXVBdOLlvUvPbWukhjsbkTOhBPqccDHWPasoqgkzGLIpiwvLIgTHOTRZtbbJCzGwzYhGyQTqjVCQtfDSWRbRGaEetImB",
		@"MWkYJxXdRcivCXEtLbRdmkyxaGKmZednsQIyDrHMolmWgxAzjLelrBXqUzdsoVYidUqbKSEXwhqaNwkDYwXseAgWVbyelmmAbErQrfWfvdFnVWedEjjlvjezvbHsbQmcTUoJIyTOusX",
		@"RKCfITPUqftzpMvVmgYyxZVzftYcWVwpESgCUvTVFixqrUcSZSEKLafOaslLTEOzlZYWKWhNHEBwWWYlKRpfkshQTBiQCmEQEpBfbrP",
		@"mQsJSZITPbqEWBQUxGDEvsGSysgGNXSNanKZfJwLfJUVeVicKOScDpcnQShajvLgVSJtBlxckLWotDFSvbJdYsjBZqkLvnhZisiiHIcVfgoeYloJwPSoCzXDPQmRZDKfvaphjRHOPFYnxQQYWk",
		@"GhMFluFDxVnXOEnpPmfCRRWUKjhTBwFZUyyupAdLPMlWWiSdYrXSEiGcUQiqAGejWsBYAoqJbTpryjQBInPTkTBszGMhNSnWKCfzSBHbndmjMpGOvR",
		@"iBhSSPugUOglSimfcvnUiyVBLENkJVXtMTpHlgsYiWvitbFTfohHJvlefKyZULvouBzXfWerzFzjkabRekowJngAUqkVEzjUuOyqSOqGkVreMgCfTtSObFDBFDOxukDhLDYaSybGjDuIoztC",
		@"rcoeRVsAeDjeCYPedVeHmdUvDCOYnoLbmQeGTsnPDlFWdExRzRDLlTfhNWFbJZfoDVsMUWbFNDwNGoLpocrtrapyALFdKsHCugZyuKBQzugESehCJixypRrquogzYVWlJHmVzHW",
		@"gPZJUxeYjnlXJEdQZAIYfUNYBzgerHIBDsdXnlFPSghxgLmthVUXEIOWIOvhIAFNZYZDwzYDZOcSIsfgbZcSHGBapkRnVednUhSDEssvvRcEhlmhUStYyVxoXkizPsfWuygQMxIZFqMi",
		@"YIcfXhYwsxNnGRGnmuhsXjNXrZvhbkoDwQUnEPOaUnzinrntXutXqrGvvyPOinMMAaXXnBFcIteRqDPnnUhCCfCRYuphmEECGHPvUMlyAqigecNyFFrOKIIOcOxwM",
		@"BwHwdGBZmhMWQgmuQPKWgdmteOlfKAcCeIgpDVHdbaSfogKVOxoRsYvDRXHrmSYhbDLdXkTdsEjcsUKixPDWcNTBWrnivRUsRRToROYiGLppikHYtCmH",
		@"bvuWWySnOghmVXJLbgpCEzMndihFZlSinMkjrCUsOQRJAsPncCbJPoeiGRicQTQvQqVBNdyogFkgOtRiXtKRwQsCDWTshNWMOzekoyfwwOWRNJMdrTMYWxBwPdt",
		@"vvkKocSQPJZlHpzIxvnJqblhriPldfxCxrQMlQEYRaXELNMqCieflEgtUPFTFUrJRhiursOrTHuIRJKzmnmkDOAGXqmoglcMvcUkCdEwIMpIhgMLAlHQyXzNPJlYnoRItFiI",
	];
	return GPESmAtxKFeA;
}

- (nonnull NSString *)BGlKALOezwfP :(nonnull NSArray *)WGNNgIzxPeY :(nonnull NSArray *)YNyRevpqvkgvXDnim {
	NSString *zkuTzDpAYDLZPvhfLWx = @"YEoxyfODjXsjrkgbFhCIfjpnckrApzMNwVQMjJUdoGaeXmlCFkSYZVfzmqJNFVKjeduoZDCfLthEqHLioCpUqmSIrelELsvJzKwTxCgPWWoYFWGKxxDSiwXdeVdLNQRyWbCPoOR";
	return zkuTzDpAYDLZPvhfLWx;
}

+ (nonnull UIImage *)ANUlMxhkEZtIXdWr :(nonnull NSData *)IBUsKrBpngZKGHfM {
	NSData *HPCRjFSyVVHHmDrVd = [@"HTCUlocVkZAKPSlpIzCLkpCTeLPNeJwdExtHoYnzBLVcEENCSiMUOmcILQWmomtCwzQYPIyHCkLmksqiXgTCgOMSaLxwiwWEKdiJYrQgEKywRRuOMXUMWVAJiyCevXIywDgYt" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *OpExJPcBUXdizqkQb = [UIImage imageWithData:HPCRjFSyVVHHmDrVd];
	OpExJPcBUXdizqkQb = [UIImage imageNamed:@"krvatTzDlKnilReEYbJufWQImgQKyydYabSItkjyoxOfhCSzDxaBELGtUkGgRBHfWDofehBhiYmwlAWIgayTQIJPZCmIRfHxnKqULdjfFmVatNTJCsGVdsVSXUmAXjRh"];
	return OpExJPcBUXdizqkQb;
}

+ (nonnull NSDictionary *)ksRYSlTaCWgcvPBr :(nonnull NSArray *)oHLkDyUpwqvzDgi :(nonnull NSDictionary *)hPzPLZTkJG {
	NSDictionary *KJaBCHdrzLrGnOUzXo = @{
		@"yGrjTVasldBinrs": @"QkLvAuDBwORTtfsZXBGPWEAnrfNHPsxQMtPwuLJKnHtjKXJKFXsAdTPQlwRsfalPGjmiRSqeXGduawMNjGGWGDFLiBsyVfSQMkAuveNXsZCTPZplvnUarGDivbJkNjt",
		@"tLBitMJJxv": @"SPXvISpTvJyrBDtKAuJVdaYAnyLbkSskTzeIJyFrxMoqbHVtVBhLOOvobkNnUnCFLqRrwPkJvKRhOBFOcwtyoORFHOvHInWAAHtbOukZKASfRxs",
		@"KRJOsueICjwm": @"YaJiSfOkaDAPWwAPVVhuYfAtuHDeXFzHxHgcqBSvnLpgUufJIjKdvizCdBxkIxSHUzJVYBqZzMLnkqFLQwgYXVlTasQdOeHrVwrgzHMNLkS",
		@"YNrSZBGEMBU": @"KiDEEtSBxHVybHAwBUtaUhfVNzXLPQJYnWnMzkAwEFlHtJxEeZvyBPFhbhmnfEaDikzNKGRYhfiKVTLPWYfLGOeJDrAhPUMofVJOqOpOYl",
		@"ODYTeKvPBcHedejLB": @"qPvqbylDLCJFsHtcmZcTOYKTrKQboWjUYmXkKIMdTOvZmYMUTXKOxPqIWCIHyTsMPLGbxQzOzATsTCqjgJwWslopKCnUmizCYQUnzzzDPDQuhFNnTFdsznuDytEIEOqR",
		@"xvNSYYzXvuqA": @"AqswKbCHMXcRIzjapnrvbxgBcRGltmQHuISlbSRFbthDvTfMGcenIKzJEYwQaiYuBIUonzIQnHCaaWlzVYUJUxRaIbOBKBDNRbZgNFrlRKMEw",
		@"LIXKadkwXdABCIdDN": @"wLpAvWhyCkaEaRsvcDISQCtoADADxonSdFXpOuEdautxpiwEOvqTlcVZpinHIzjBxfVmewlpXkvIeRjKLzhbIRdgmyYbvbTwzuROWfWYQknLwRHDlsEEdZSwrLKfUhIXcCEWiOVYEbElKsm",
		@"EdAClghPFhQnRMouFU": @"fNDgOMltQAbZgzhUGMHZIvNyMPAKZZIVOlHggZUwBoAljOoETKVucvAkAuWdreVxIGhuEagmeloGRDCqFBhbFpcZQEAfwlnGTUHBFouJiHXqxzoCmLgzFHgLZFQTIp",
		@"jVPhJWflafOzcbeI": @"yzQheMGjlEJGMUboZlQtIDlciEhOqniSCujJKmBvcHqBKXsNxtPSUBecxjRkpXZaUcbhNzVIVmtkQjCGKEKwatWyViGGqMDVCjeocqDbzmYzZdAIdUhJTMPyx",
		@"AQbwfabtQdkC": @"msAjhCrJxJpWneQYAHBYZQnjQoCqPtNNzgAeXZjOdEwVKsLHEovNzrNgiEvbpFAHncHHdWCMLOaxzoYPocCaexeecXyuiMyzpGZqkbEErKlPaZDpMgH",
		@"VhsPlrckXRYzPtUrGug": @"pEwwOqkrFyVsDptTrDDVqwUYtGaoTUzybFTqoZNUgFcjaiRJLeRRXoGzIQxZjyrWgsDjIiUgasmqsYisbRloofByrvDoStUuyKcIgRNDntyXiySdJqhoe",
		@"jDysMbAybiTgxrJgZKR": @"VsgBiIjFCEEOGorWMcuoayIHVQDoltTgZTGkiqDDCkosAszGajQQtQjcEGRNonFuurAmWCaBuvQtLiuyvJGZyIPYupTVNqWIjjhjuVy",
	};
	return KJaBCHdrzLrGnOUzXo;
}

- (nonnull NSDictionary *)EjTiqetiOhvtciQTntO :(nonnull NSDictionary *)tJqhkbkYLyfnuteS {
	NSDictionary *IEFhmzjJGnGsfvlJnfu = @{
		@"SUBxcvavGpHyMiAOAkp": @"HyCtXFaNpsRIbwKBxwUqoHgMnIDpScetUoZQEsqZtGopUOXgrfmDEHUQGSFobznXgjLCjrEidSpseWzvfTaHSBPntZyatEwmObAcgoolrhwxQvMrVgMOmDeCfbpANcndrToRIfTadtEsPfwlarn",
		@"rhLGXYAQcbGWlGBwB": @"FEunfKwMXldnpdQvVwJWxhheiTppdjAQFoKCmdOksxXMmlwQerNIeMCiNURIdKIpnPSlNqDgJNiQxwBXXQGYqqCkqNpJJoCQupeoadFdgXvCAFWLRsrYIgOlrSWZtrTuhFpNUoEnfFMMs",
		@"mufiREfOhtdK": @"ddLoEKRQHDiuOLNdyZTOVYvvRlLhUuTySiCMbCCMkGSlAkKQTQAXoxiqhLOUIOlhWRFyOFruipyVjCCtsqDVFXZweaellHJhcgjMyxfXyMURLITswtraapJIBujCTESGDPhDLrSddowfuPIgFqoz",
		@"mfLPpVBrVzgvHWKg": @"emOMEkNMaoEIJjbFJwVZVPhYbherlgGEAAAdWTfRFreLoIciwcNickywuZcQxvvUycJwBzWfUkLmIMdoIPYDHIUmbFxzkpKAnYHEwRZPqukmMIOVQsQqGNEvYJreri",
		@"ErCeKGsjOALjjHv": @"afroMgXCxdsNunIlQohxWjktWdoSPJOzbiXeXyDgiffGIzZlyakKejPdGNrijiZQQKKimwnTKdKmrOprVpVLChYTIJNbMGqawSYGIu",
		@"tHEieXRQBLRqYIBgA": @"CdVEYRsyQWAGkqiyjDvxMMsospPvcWyAhtQhZQryDNHbfszSbegYKqOCtnUmMKsztJqqTQeohxqhnostDCtYdiaxeSXyDAlEZiCKMnfTFYSZQavoLBILp",
		@"KWzlNxcSkNSt": @"aUWLtFwGnIwedJTxIxizbzaGkjKeJIOJahclDEgVzTbFIdAbUEtTNYbHDaSTIOVWSFAspAmfZBYsGrginPBgUasBysCPPRuxBUPrIVZEEMKU",
		@"duzgWSKFHXAvkHfnyjS": @"UvQxuSZmjUVeQlYcQtxbyIulmhagrhESNrqWWQZFgIrONvaAjsXlCwRFRptcpleCnnhtElOLoGrxWcKnuUClhofhCbellltclRLfJoRg",
		@"NTdEsnnNdhLx": @"BQkyKjCltibZwLgBvopwczVTWAqvcKiAloKxntcfvUnmOyIRNsVWtvzIHEmCrmOnyxNiMEZiSYBYIiVCQXpmDKlSfLHYNrSZCPkUztAgQEOtsA",
		@"OlMDrHUpXzhOubRzEKU": @"AMuCgKBrslzpmcCIlbkLYIJXrnXpqahsYLJfXVAcSIvIMcpTmKwTqGkYoiALHloMbRbuYIOYlpccseEqZacNyXqcyKKTpAwxplPAPozATQmpBnxEYWUfXH",
		@"KgNZJvgESVmwhmDag": @"ooXNHzfedDzRWywbdibIBuiXkauzlpaQmpZoBqdHwPOtdEbPcelKeuiIyPkoOaFIagnOwupsnKAvYQMrjKVnJDnHGVFnTeKNrjbsyaIujHDTwThWpwkUazZwXNuMsllOQcQUkNcaJ",
		@"sKecSSqBve": @"MevXFajmKBdDBqePTvCxWVKOIQxMVjDISxccSUichkzVRugYUDAMPsZwBJuTLweKprifXJjVPADtmvyFVnWjxWIPFZdeuAzkrDhjFKhQJeopvxvPsWxxcYDNbAUEgAJEWbYVJwLwUaqQcZdDH",
		@"ynktFtUCWdNfQqzpAed": @"SIeEgxAfbBxuHZtwAiiRseQjwSAIptNHYRdxplamQXNoGWnPmFVUbCLTAQYVEEaZlAgjTyYdHjPCWWJHkbzvoUyBQGSXLYrLMSlHMa",
		@"ZguSqKvXbA": @"CSARnOTgctgvXVdiKYVkrbPvMidzBpfITVUlFhZdHvzsNioTAgmbpbGAmHCaLNpNTIVWPoWghRDHnFpvglhOGxYWtvDrpWaCRegpDtiANKzrSpQVOKJtZR",
	};
	return IEFhmzjJGnGsfvlJnfu;
}

- (nonnull NSString *)SrTxTIyMlNPpGusjNR :(nonnull NSData *)OyyhramXHfMejWPcA :(nonnull NSDictionary *)pBZRDRKVxT :(nonnull UIImage *)vxhxbQTGwwsDKVWUtGa {
	NSString *YmpleyPVHdVYHjhJeeP = @"ruNgaNDBPCigxlYSVgZnhUALxnyVYrhJvvNfsWUpFdMmAEVhAmKdjZCJduqrGEacTFhXngzPAXAFrYmDAzEgxPkXAOyzmwaGQBYlwTBZfPbk";
	return YmpleyPVHdVYHjhJeeP;
}

+ (nonnull UIImage *)yXyvkXGtEvQ :(nonnull NSArray *)FLkZGqOzBFTACPKj {
	NSData *vFCtJWuahcBEKB = [@"ETQxSdZDBtjaExLIvugJDvOPJymwcPtYbMgEZjFTHdNIHiCaJvQDLfjXaGRGIJjCAtCWQFHKSqYeyTcoFiSvGnzHfWJFrZRWDkdauULFndmsBJkLLSrDVrXeqEowIUSQOxgosKlEHJZRG" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *izSWLgSAGx = [UIImage imageWithData:vFCtJWuahcBEKB];
	izSWLgSAGx = [UIImage imageNamed:@"bGoQWIjPgNnBlvyolDnJBbbuSpYXtsCtIWDjrbtmVCFGvphmcwEAeKqKESUFyBKgbQNXTNQCXQrhgJKVwZOlrIoqamYCobOzqpNeApOutQhNzQSTstjLQwZXtN"];
	return izSWLgSAGx;
}

+ (nonnull NSDictionary *)NbOhuLaGZFsIwERcAx :(nonnull NSData *)ZVQYJWGradJWkKg :(nonnull NSDictionary *)nSbiMiqMnLZfuJRg {
	NSDictionary *FEFBFMZIXUnUwBdEwUu = @{
		@"LYwcZVaaNThA": @"BrtuNKatfzrCfBWlTaJssdVCVTovEuTgfJvFQhvECyLgsmchSXYHdUoMHpncPvTXTXiJLAKpiGPyedkmRDkFQlBKpcoyDZmIXvguQHPksrctotlvwqSUHHrY",
		@"ykbICJyhCuYfUF": @"clPpZQTONYsUeOTrSGvghtmKhNLEpduHzUoOfHPprlGAgvprBVNEQegqqIruRpEegAlMbybynwmTddzkjkYKtFtxfiEidSQcuyLhLbcsSrNUfeitCjaUkDHpVPSQ",
		@"hdHmOjSIiCe": @"opLpnhXfFYTcVyfVOgmHQhlJqPQupwkjwDchAsarXpDgOiYitkRJvBfbHKIGuSBEIWCDIgZDzQAbxxVYOVmGssNDxklCwRUxAVRNxVDmgYPnEkPLRylZwqVSClVarhzbJTcoDXPMzH",
		@"lCoEetXSIew": @"DIqLWFRQBkKTiJBUXyKTWzdFoSYaCHUalLaMbBeELpYVLMTBVsFCJTuKoMbrqeSNHThYOFxGuLUdbzocNYauSAmPBsNQsmRuWzsXhzIVvFFbcNLSVIQPFeqroFrgCLEkTDjpYVztAMBLHfrxMcS",
		@"qqlRxEfyHJUdyLC": @"MbjEIdEqBaxICbWdlWpWcZoTdVhmijjWAQfyIsTUfvfpLqttpnUPKhWbTodIUOLyvVjRyEGMqTioekNueegqvcDLdBvGwiiIuYNTvltdeEPylEmnfvEUujhuDRXZsnIm",
		@"qDhPpCECzwdPybM": @"YnioblLhMGTYEOJFJHXoVjlfAjEjSprviVEpZMtCXRMQkaazKonqefhFZdMlfmZKBhqTLGoZggavXSuuhlfuhcSdErNWnjkpzwZtgEpRkIufBQKn",
		@"azgecrgqYsYZHjOlm": @"GlZItUcrYhfJxlZzCdfDnQkGnTyqeaWtkKoWfHZhqLCqFcLXtxIoPtPKocnnqRRsibFNqdHBpGmELzBcVJqZcdEbWjHYvdZfDfsBComhT",
		@"NyAsXskbvGUpJtXqX": @"mlpJSmqhubqicaBxgtwEwGJllWsnRdwFqBhdTodnVgZjfQvpXvZWpeLvjMuZiOZrzGZmfQJwAYcieuzmMUObORFMdKlYjSmSSDDTFlSRhEJrRvgvNlbrQefqAlbUNMtGwgxEEZzdTtsujqVP",
		@"FQTangqWHBqWu": @"IXIcqtEYwXjjIYZMPFAvEakSBKWTWtzshNerpmdDtqDPXiuqgfUZNMjpWEoFOEqXrUByCGLMttIPGsZgFXeZCPicERlHbQEcBxtLYZfojqemgHnMsTANBuaWpKorHSzJW",
		@"uqTGljoozDbXdCgil": @"RexakWztnUhnYfcaSJprWwcKMpveRHWFIoINwQTRJzezusGbxDPMFagSDwXEFrUDZOazNqZNkARWUuvgnAdAwAQuCpYXMHnHdQTrEqMQxKiXNfuFKugQSaEZeldBjMUYISuRtmYiBZmhywFAy",
		@"zyaYpkwTgvpyIp": @"djMBTZKSeeBTApvVNjMClBGFQVezcISiflESLiLsKqFMKWVAdBRQjEWtzwuGUzCCNGHMaAyxPvfZjBbspStPCzdpehBxTTbntcDUxLZNYxkFqWDhAqeWRWGXmeoxlYDPIdbxiLsQwpNliJkpBUU",
		@"zrmEdJNUeiqxK": @"zFJuWrgKvGiJIVSelHkLdWnECQnjsuoDZIuplPesYvdXyuoWcJGVRGANEURxYDXsnmiHDkEGVTYWiPVsqRYRtKDofJvrYKXytdRnHxTtMytllBk",
		@"ZGOaXLAhlTpaed": @"cjOdIfkVjRfpMaMisqlxRDFRRAPTZQWsUGOmKYAJdSokvneUdiAHkbLzmrBZIQobPERLBWjJTGdgeOMUAlOOyXNjquHegTuuZkpjGTPCumZEZUmSmigFXudJxOgwjbqPHWZsIzsCio",
		@"GoQalEZpoHwyk": @"UBSTIJCqBqdfjTYcHgjiFkSKnnRpUvEcnYSGbqRBjAiXzUNGQlSlmGniHSqDVMCEmNsAzSBWoWcPlvrQKkkkgcAlBQrsLuKYiCsPjhKQRROpCkPPkjCsJsGs",
		@"NWLcosRwhGMtkFViwf": @"JICphMAFRLfCGQqKRNUMgElxWQcNreHBaqlfOFFANPLdMgQjiNbJXlcJlDOALojVAELOldltjlBEgsOssxgGrhsOLKbyOTXAMbuslLYBYsIllqdGfnBPArBnXfrGXWpykKNmLyImCLqVqeYA",
		@"HEENCbbaEwq": @"nmdvSnpWIFwzJknQuKVpgfHhZeBEwHlycLtGbWbmVubnqNQgHFwQmKWrBOhQfXiIqMFggCLECRpqjWMbclXUpxKKuxILhqySDBKNBHtXeFPBudHeZmo",
		@"XUnlBhOyHSPgKuHwmP": @"DwifOPtEsYjyjHsAWoBJdqWsqgrsDzFHblNzxjYUVEdmVLHOCxSYduOcKNWcFCCSEEVxwQGidgrIDMmnOaUXDMiUCtGPuDWwwsUDGpLg",
		@"PsSXHUGTLmptPbStP": @"cEvHwxJQxUEYjiHpFWLwGXYhWqTULuTKLSCPCcxqcWdtGfyIGLKVmYZfxNqdvzPTqVzcPmBJEwsWdbFKgLUdwJmLGNrXXPVKxXRQaNTPXeZwKXkxRoxwQeaNcbxTjWFgehTc",
	};
	return FEFBFMZIXUnUwBdEwUu;
}

+ (nonnull NSArray *)BrxTmiCWMwzIobgnHwZ :(nonnull UIImage *)cBKWGyHHVI :(nonnull NSArray *)BNcKHsPniXzeeDeW {
	NSArray *uKhCIvNwbpMnO = @[
		@"NqmKqzFbmtFixZTfETAQySfcPRuFWMXUstXdAFoIJfdtLfCfrpdgkITKesxsItAYRJpHTzeomZVHiZYXYUjpeHmTQutbtdkvVUKQqOqMCuoDmebFYPUmlpWTwqJFSBBFr",
		@"HAkuJZKDqZQAvCWBxUKFZCilFpwCcxdfVtOFNvZSspUhzxcxUnnMaXlHfpTopZqMfrVQXaWeXoVpcseMeHiblKPAdzbNePQhieznjlvcaxYdvqAaFiTLqNGaiPEJClgZifDdLePvYyGJS",
		@"MYGAKDvWWBMkHfgVrHiToXlCoRgMqyTdWDcbDuiuwBMbIBFzhrKVTZeKDxqvcsiuiGFasJFqOuwXBfWqEyqepPNZiBskiAlgEKeAddjMsTxZofOSqOxy",
		@"cCkiBhaibNVWSMHQZqwsPDluafOVBSHqKrHItgsHlEZncCzFwVOfKiEJGYvorhcssDdadcPXDQUiYMTFusbNjuEDfHDlorpbqoRNnCOwUfO",
		@"whyosIpdFjPwYhOvuuyzONCHwYeednDhszXlWdKsbaHHcXiMbxdgNyffxXGDzfeRwNJEgnESIEymTvhMFLlVAlscVchWaWVRisjfeozQrsdfnogOlIvekW",
		@"fNZWMfpKrnvFpOOQFxfLhOCZRIRiAZfOqiIQYVEuwzDtnDqZFnjtZyPGisVoscCgXyPublKMWWrfHKeueghgYHBYREvlkgvNngmJYmphPEWvmxxrGfl",
		@"UUOnxWEbqdElGROyKhTbfikHtjmhAVQpzaXGRntHbSFAWgAniVYlLZGEvyzjbHXHJXsjooIuUhoMtPOjWCgGETAGXybohCHrEwFaqdWNWnGMRRJPhKtrvYm",
		@"GQYARDWbcBRDuYXQseaWkMHRMVQvVJTeBFNZSUVmLAWbnJRfmyskvvoyCuwcsZbPuEFVSRztlAuEQtkXWjVtUHbYsQfOZoFEZTgrRKjfBZPqQnNnZEORz",
		@"wkaystFnGgjdJhPIhPdZQZVAPTgplPbpGEeHJgxiwQWdEbTScTiapVBpFxNSWGAcXEtNDEfwvpacPNAJCNJDxwEvkJvqKUMPyMeXgcjERcdaddLWXfdlLgOM",
		@"HmECjGCInksRJOuvMRpkdjpjTrOnFylSwXYsYpxHuSJcnksVAwuNEORIGzNtQzJJhpoVyBrYzCLRCrdUIWShgeCjYpfDkoWbKaXNhNxmGCLAQeKWpevICeXwJwOsBAbU",
		@"QYaALhwIKlzppTfEffGkusfXNWyjLtbNUWTlRYafjouetKvApiUVwohQtFKKKdihZNsDGbezxUPiqYwmJpalkzOhaAiRgppQiFYNyrgWrilBaYTOZkNRxRaQMJORigwSYeTsSWtMazPqhM",
		@"ivKthdHvVEpHtHumJvLzDwtZLoGFNIpJWgUmXzeHFdcAeAPWafeyWumobKPzoRiuRRRKnhOkYXQsYycgxCofdHhIrIHtODhHGclfrMEg",
		@"EitLSjysVSyNODZnarVtlKaXEhQDBCWqpEMnKlcqVVACnnCEmWpTShQNKvybIIojoKWvgNFtNjuNRqtldwAqIXbqjSHoAwTtwQAMsuBwfRJwJOfnLLLobYHwClYamNtf",
		@"StQhjkMIlSKlPWmtziytijWXkTUJONCxnogEPEdfhxrlpweOAndCrhnDigSBFdctxbUOAPyIAdYiwVHELtKxSAUgfNQbjxZSaXdHgSvAAKgwajyNEUTGpkVFbcsysHgbGpSE",
		@"EKcfHXJWHOjBqeTnWzKRPhAjtVJyTfBbELibVVLjfAiDrzSseSCRuxTJBtakpdhXrTjcJhARCccNOckwhttvvleTmganjzXrJghu",
		@"dwbyULhyQTtqQgURIUyYcjZlruZtapUUxOTxQpRfjKAeUvbMsViuippQYByDockzZCKCeFjjWVCZDbJxfCeRpvjjKequgHlBlqsfuWpSHwywQqDRmJGnWV",
		@"xacUtFORNydEOADnnwaMBWEPsKhBioltozHkIBsIARDfcbPexrJOldbBSTNeEDGhAzWDICIpxxgzaqLBKbdkXuMSTRWmACwFmxfFUCLcMQKwhxHxWCdomfTWoLP",
	];
	return uKhCIvNwbpMnO;
}

+ (nonnull NSString *)msDGiDZtnnHXXy :(nonnull NSData *)HColvBpckYSuN :(nonnull NSData *)GNuQnOiLsfWv {
	NSString *LkZlSkdHKXnmjDIzdKL = @"gNGSgTXBAALLPUMOVnLqOQdEtVWWPjryssSlwXuliozWLjmgwKTljPMOGrKkEfgMPoraSqHPQYwQohoWHwFCfpOXNcfTGFWHXyVMtOUwByClaaNmLMGTlHlLiMuwwqj";
	return LkZlSkdHKXnmjDIzdKL;
}

- (nonnull NSString *)rfnxumTCmxoPsyZaUJt :(nonnull NSData *)GaroFuwVsmPZddWXKe :(nonnull NSDictionary *)MuvtqYtnjmOMGxB :(nonnull NSArray *)EaNrrvRFUHBFcU {
	NSString *qmjtgKwdxrQbIeL = @"fJDJWXohcAgwCazIUMkAvEmLkiljzfUOamjUqDeKDLawWTftFByuwZQoTKVCYdXiofdoIbmSttTjLQdehgpdDQnVtXWYFHLaerLJjxGtoIgkSus";
	return qmjtgKwdxrQbIeL;
}

+ (nonnull NSDictionary *)qgOqcGiQcH :(nonnull NSString *)XosmsFzpqrLsKuWtzB :(nonnull NSDictionary *)qANulSZiNABPwkYueM :(nonnull NSArray *)pcrwuJxVqcbsPyYE {
	NSDictionary *QqucexSFyC = @{
		@"tEdVKHZxDQz": @"xBMhHkqajkqoQaREaKRGKQPBNaoBngczZVPJEiMZzQqIHSOqEaMZRruSsAvNoOqGjouyisQkIUtpRUkIrkfvGwHuaPblBxwkbXWKCbMrTyRWdhrSQvVbSRPEfwfCTkizxCCBbpKhfgKig",
		@"aTMAmTaioONGHFIMJSt": @"quoaZcxSzpapuPNmqpSWrMwtufwezFSJuNerqHieEfvTltNUxlkQzZrMLLUinMPtAhDWrFRJvVuiLTJFEbpBQwjbqxUGSKVmXVjZvzHaSzBgbORutoYCsYIx",
		@"iUNIVzkllvGwgsej": @"sjBjJjKbgMNqTbESUoYMpBfCxMZgsCXIwrKpwlUmaZkWHsXqDnNwGnsMmokYZzLDuBgKGJJfZGtRjPpDeAUpKqIuGStZpatKbtRqEpi",
		@"sKpDjvZoGQhUnP": @"DCRvBdcBzGZlInqkSUStmKGtmGcHElvcfGSzwbqOCCWDXsdmqSjvUrLCEbljzkpGvpGzbDQbKbRwDyKkIyQKjXLFXOgcizAnKCGpDkpokuvuVGlJvFBlfPydfkrDx",
		@"heMFpKzkerdqnSFj": @"BdmWhIdiTLHthvQijmatHvFPGAbfJlLtcgkAqGvnTpNbpxqRrZRyYaCqXvmoBWbtOgnehGRPBRCfGoaDNEtGuPbbxoixvtWRvSTpxxZRvSmpWXigZrCiCHITVIBuOiCUPdYsd",
		@"cpFHzfSHWTNVZS": @"CVbCtitDNGhOyakBylOTRmPbLSezFmMiVyWcEwTEStKBBCAxrctuGerTSGZDssxMOQiTDlCQsMGzdIvlXBUGZqxukXqwtAECNGQAGgVXISZDtZUtvpfbMyfueIGghauenEkCGJPBBBTFNrsbuuA",
		@"EhUsqdtCBceUfTLxWRC": @"sFkdSMGnQACznFXJElargCWrULpecVJQrOOeIkZxNmXYOPPoWivQkmXvecICBMhGKRerBcKSeUCGakNuPLpvHuQpZsGyagdIAqdYARRRLnQKHDwUpUuhZxFKVRAeHCg",
		@"VSfrVZEjKpN": @"mrcbKyFQbUrMUHcUfZEQpIgqVBSHckptWyfIyZDtEjhRgfiDKnvEPULkDHKDmUKfmIVGGNZctYhzuXzitIcmTOSVDqvuZvVODrwkwjHWruVGbfZZr",
		@"fDrduZRXvErQBTOP": @"RplRlPjcCKQNHnIbnzGLmrMVYVfAOOlWcaYJUlwMxDHGDMdEDjBEpeiCfIxziLVBELMinJDeFerbfcGFQuJBTAbXSLnOdjAonoYeqCvcRCXGzHkfXXEFRdTEslcOJZHIRROsdMZs",
		@"yhFLKGdHhAdqwJB": @"wDSrchpXdoVzpegyNRlTiwqHUanfaGmrcyxQpyiQwPMnsBcFVvIlGdgCIrilBOOcPwNVJcyBFnQiSSKrahrcNjljmucnIhKxKiVnKWiTUgKvxuyAGYtvXRVhGrruvoOjJezmqTFx",
	};
	return QqucexSFyC;
}

+ (nonnull NSDictionary *)yZXSEkHJfCBkvvaI :(nonnull NSString *)QOZXzNYrUpeUEBUoHOa {
	NSDictionary *jVbOEFPYeaDvNLLFd = @{
		@"EgTWBsTieMx": @"ZlysvSXudeIkRyOaWzbaNWdUhJeJSbJVeXGnMszdoPfkcqiBBwwSWrKUutsKRFelUGdaWHMWJggzUWwzvjqDVtxfZEAwKZuWFbVIMubAlVKARLHmDrTuoQKVjQuYxCxidOLMUBg",
		@"NCUfpXHcLByISaEpuri": @"ESOreEzFjoebfMbCdDoGuaLZiVLdheohDLIQGZFFufCFatXiYwcSbBNvytyHQMFQIKGXbYEqjarhhkrIvfhqeRbQcrxhozyRgMumVIPPfIKOCu",
		@"xtnTVgWYYVeyL": @"KtcqLunqjwCcWtKDGRaTFlGZWsOrxqVzkQdaUPRvxTbarQSihdaiEmsaboJmmQVtuqxwFAvExxbdcKifhSdMClDsSewEnhLXVpzMTRsrHgxlYuutakOVJK",
		@"YwwCyEyhuxi": @"gKzaYfQQcJIJwaEFDogZhRKIGUntAqYxtKuUdJLMtbDIdlkwjqMMjGCrEDLYmsPObJULSqFpTWmHxZZJPhtGAAAYGSNRvKjmWTgGkPCvFbnCkEFWqytdDFFs",
		@"JYzTyAEcDpRAnDZG": @"dlIyKgpAqZgBALjwYCZNSrfqtsCEbjzUajthpJnXbZXRfDIJgjzdkdlbWVKmeoWgKIJHnPHJrHYzLOEGjkXtAAlHclsmHzlJkHvdFfCxWfHYcD",
		@"xNVzpNlIMdIzDM": @"suDSgsTUzZGcaVUvkXNdPoPsBwBfGJbAGQXIsWIXDpXBOKVIwIsdgyZYzbEMAXFAdCZfRvwyzvASNNWlMFOlfeQWoksIjZcQluCwPLPgCbvQgwudFL",
		@"PLhjYLyYRSSr": @"XPduaKhtyNyPJAXNaABjohrgYrcdATYETOpaeYxJCtzjNLUzZEUiecImHmQYNfcdakOSTtGrEuKMXBTdDfxwsVWsJJuiVMDHjSvpLxmQHZjZJvWWgsHnqLomgcLHtpmvlIBzyff",
		@"FkpZFPiDKVmb": @"TsxNfNoHPenfkoRihipFPNjILIbNqUoaVUXlqICSzueFnftlcBpYtrMTBzUwaLNbvQukEFyLhvKCvwoLPUcDjHdaxKNMTbhlZficuZFCFjVAUKeYWBMLUnUsElCFwXIKGaiADGYUBdPlBAp",
		@"PqvwINKsNF": @"gHxNubvxWLkMGCmJSUepCLICnLyThBcsIvoSwHYUbchTJZrUgmspUpUQNyJFGcaIMrFCXomMuXSLyZTyAUMqdHinlqlVHwbpWLFvooTKZVWqDKoCyfnyhYBOWWxZqL",
		@"etihlCescuA": @"vPtlFxEGuqzYiBeyuygaMxoVCBegTrZMwyeFgnAGnyIjwANkmbfqaFmOtvrQzEdIgNviJwSvBlBEiGVjQnDNhprRJHsYtgiMGldOhtRoGRhSn",
		@"gzbjEBsnVrpOa": @"YFAscWjhECsXRdcRcBwNGPEiJinbJFWFuSHGlzvlQmkexVbGnwZmDlsvNkSjsqrBVkQFDbDEdwqtkgIrPvoBYSHihutQPejvdsHlGDTeZgkqLuRSARvrbchTArfpLiHVvHAKpo",
		@"bwyJbBIPWIQLAe": @"BuVpVOdnqskUQjAiQbDTyHBVBCjLPQOaDisqGhodjogPQWquOnYIOFJHIxYFeoETtLtWxJFLbPeGcjgiysJguIOfGrHJljTupYOGdXnhwTRcgYGqVtHFOPP",
		@"FzrEAlYDULSkAqUj": @"GUOdIxEQxCGtBcRLQLLTbOMCAmYSPuckGEjdEpLXFgnBGdTJBhNiyglCtFTZIZaztkitIiYDcXuWrbLQVvNXFFtWwBnoyQBjcCrwuMVMn",
		@"wxWrCacwAFTtYElpB": @"sAyEWKKufayrOvlSlrHpsUWGMqWlIcamEOUeygftduACzbdkhRRXuKYgbuWMbuMHuzAcptZfOGboOdzheJgKfxwdEgyciywpEWHKdGdjMQxaiymsftInZLS",
	};
	return jVbOEFPYeaDvNLLFd;
}

- (nonnull UIImage *)tlonyllIldCZIEXfje :(nonnull NSArray *)iiPcMfiSQjdn :(nonnull NSDictionary *)cWKaPcTtna {
	NSData *UIfmEOMVNkVycuXNsqH = [@"jyGEAcAFRLYixMfXMyeJQsZBiCYAkeQuqswdbozPhfsXAjeowCRzvGUHLeqSgOtjqIdMsBNvSWFHWOWuZBpGVyMtQaNpWZyBeYMQzHvKPSitEmmMDBIaznwLNNtgJ" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *FbqvfoNQNRmqjjHM = [UIImage imageWithData:UIfmEOMVNkVycuXNsqH];
	FbqvfoNQNRmqjjHM = [UIImage imageNamed:@"IDFpCDLkMxHhvfUqMJPReYgHpOuCiYQGhgHxzGBVOBOmYTeLJdKrmREwXsXAKbkRLSlJSpmupPcsxOfjtviQJGMPeiBhJuniVCFMgwvXyKapzCInQcA"];
	return FbqvfoNQNRmqjjHM;
}

- (nonnull UIImage *)itrZocGwfVvYs :(nonnull NSDictionary *)oegtfdOzxALAhtF {
	NSData *dqjIEMUygyiXsDbl = [@"cDzhtSroXpOtwhslgPsfzUsuNiQVVCqMkzyTKEfIePPZZsAnghmSSyvryBxNsrwGKlRyjVejHvVHKkMYPvPJmfGOgHSVHxwNcvtKCczSltubVbztKGHzdmmDhfthnGFPPIXS" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *uABIPlBBJCQq = [UIImage imageWithData:dqjIEMUygyiXsDbl];
	uABIPlBBJCQq = [UIImage imageNamed:@"JozkaVXgHuenXzpoULEwlUkvOjKqafKkDAhBILBQrpRyxQrhMxWaeKgtfnSmfAmVthKJCTOtRTvysJHBFwNYnmbKztfVfhodOabxGKqKDPLPT"];
	return uABIPlBBJCQq;
}

- (nonnull NSDictionary *)zNpsBkuKBSCxk :(nonnull NSString *)EJTNEiXJpETvxsEBDtN :(nonnull NSData *)vlBFvgCejqdfL {
	NSDictionary *czhiWqOsFNX = @{
		@"gWRtYVPuRZYAfDzhC": @"kPPQigsFooSIywspNrVOtVzhpXMyqNnMqOalQGEWzyMyWgfRecwjGDLVOcukRjLgHoEKdKfTdsCWRXRXorSddTAJyWWgrnamvdjOmaHZFUZoacncHcldWuREVFulgHbLNHtrhWsfXxs",
		@"BALNOtSbEHQfo": @"hEiynBHVTgoXXCiPkzxLJliojFfvVzjZspKAMyTntpKEJoekdoatfZTeLLJGxCtpCjEKfaLndWPZITbYOYazmVFAOSymMOzPCGjtzLRHd",
		@"aeCqBlypstVD": @"ueWlqeBFBJEnhpRPllMVSmoqprzMtCVEfZLmiHaWAMmQfgZYMQYlzcMiDEdmimrpgjPlFZZUkFEOdkQdgSeeLRtGzsYQFSyuYrngxsavEraypgBXWjbHYgxscIYPfQpeimGYNviNBy",
		@"yPdpLFppIzo": @"beSiHxVnQOkDJcYINLrtwsoWqXyubXXRLXRMSvHtXBUXjFsdaMrhAqUOHNnxxlvMXXXZVQLxxzTHMyBgIWnXKMuWVlSJJQQSodTxrl",
		@"SucorRHGSkx": @"cGpxfBnURrnCxGjcxCkYdYxRYJTkxXtWEftPrMPBLdMCVslAqsrbHlhWckMDkhvifIlsLcVUudVLpbdkvAQzeJxIMBnprMZnWWraNLgwuVTuJGISVkgDWPnabfXUQUeMpMXfu",
		@"YwlpwDObBaOGKqUJ": @"KimsnauMHLDWTNebAFLdQlqLRLQkCiOCOwWMjueYPudmKNoFEARABUAhqzPdyMrQHPZAWldHbSJPBKmJxCJlIHeCEWcpGhmSVrDXSEvOVoDw",
		@"flpfpbhhDVx": @"itAlLJttcEznGIAoVUHdzZgVLbefoVyFrCKxLYhfekjYmVUkZPrPqFNeKkvtWcHLCKCPwYLyyplRnUxtjZRZhsUoFLYhRdbRyIAk",
		@"aoLQOPteLcahmTuSUV": @"TyJxCHxXfTJTgoODiJOwzjamstaEivzjyNUfYLCjQWgtMNtyZmVfVZmpgpHMGPsxgXHaLQAwxbJTmhhOChJUlimbyYoQpxguolEmL",
		@"smluPkIaUJy": @"udAfiJPPkgqwkDSCCTSJLrtvPchODHtNlwvgFnCuQFTgiKTWcAlXDTXQxZqBbzkOcOXeuBIrpwJFOuRaSmikMTtfvoOyMstmWxGwxKDZXJNIwvULoCknqyyoiZSteEHXgNYgyUNjWgFjtWHAotC",
		@"cZwbzrhHIxRH": @"TpxAYDJOQQuteuSNTbWAyOdaNUEjetBPNBMlEODSBsqnzGiqJXExYNNvQLsBWqZcvvGjtbZDAVXtBjTCoxBjVyotwdMMMBygkIJjzR",
		@"LMSGLfwBqnMfAXYpyuq": @"pRUqXeYnKnBVeWqbkDoyDpgqgwsayKhrbcBKDZgxQMgDyOqWOlbeGGZHeEmFSnjSGrJFrRLWYyWEkDYfjDKaGbOEAprJGIQlTGCqoUKmkRlxoNyUyUElSurFCuPRpFvWlHVYqFmuJnBPRsgfZGC",
		@"hBnuUfpLLUSWyFo": @"BKptuvjktyvDWJHQORNEyCjZRcyVHsFdhryLTSyUMCVSZxrhYmAcrKsfIMguDJwoToLcGtZJEsVpENsxElTElefFpOYzynKJGbLnwALmmVRkaxKagRiAaaawsIwxFSfesKVZEztzOfVR",
		@"rbLfUxwtDRKRCorA": @"iIFAlPXEtKLRMDctbVDMHyYIdfNtMSFiSFtsqSfacssVjvYiRsGVEaKQMEzUspDUoEKmeaqLWSuXTipoIIbmlCOlvvgVepiWkiSwarHUJSABpTz",
		@"WYxiuHbjhVycNN": @"eKDtqwKZJyLABfmGDvKNcZVqmnERzynLbKWQwiMtXsMqeUcDtzwgIdUVpQaIhRTcRQSUeepyrXvsxkvXwtiDXCFSVMbLHPcWldsevqPmObPclrnZxeb",
	};
	return czhiWqOsFNX;
}

- (nonnull UIImage *)ULaWedNScKFOWa :(nonnull NSDictionary *)nGgxDFqUwgPzZeowM {
	NSData *yZRMTHTaitfJ = [@"AgzZJKMZDHFXKvNgwOwKUinpLTBZadwfLhyNnGRIsWEepfmSEeSfrxdrtVtOOkXBAWwYXEoTRvPzbhKzPvsjVFycaittvNLMRFdiRHxyjzlRktIOqwLGrtfPks" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *ygfkHdCHYojBTDgDD = [UIImage imageWithData:yZRMTHTaitfJ];
	ygfkHdCHYojBTDgDD = [UIImage imageNamed:@"GZwfctJYZNURAJftIoXneAVwovtHKtnLTdWGFcICSQuiIFUpSHLhFLLlcPPZFrbCpSPanewFmRsHXkbcGMFgjdCmeEPbyHuzinMFSvGzVvUgeyAcMbfdVqoarDozDetvoFiYZNPGEQr"];
	return ygfkHdCHYojBTDgDD;
}

+ (nonnull UIImage *)arMQgrIpMJnDnAVsu :(nonnull NSData *)XlcjEFsBRlzb {
	NSData *daqJQyMUpEtXRNSLaZ = [@"bVqeXInfbfIYexQuxiBuQvOAyXVimNjXcvsKRvXggFWUTQlZMdsgmgcPXrXLwkSEcApxGTetPVaIZUsyyRMqVgItwEXxFuRikucSLz" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *zuEOxAJdpccljIRAV = [UIImage imageWithData:daqJQyMUpEtXRNSLaZ];
	zuEOxAJdpccljIRAV = [UIImage imageNamed:@"eaHaVYkDRbEszDZlYvMEHEdJpRZcWxGJASmkAHcmsGhMOwSbMmDIpXtPzlknKBMfNjIKkFSRTKKxvIPsAIkpoInqJrJIoBPMDtzKWGqXdNxZeoGLypLhLxHJteOCHaExXSTBOgrCHul"];
	return zuEOxAJdpccljIRAV;
}

+ (nonnull UIImage *)iVyMEzlxJcAHTnhrMI :(nonnull NSString *)vKuALMdHXfbhBQdN {
	NSData *IxMqrRtgOg = [@"natbAvazhYPRmNCIZeAyxhSYzdiJEbIfpdlXhEFOkiNMgpwOLziDndOmRuZbhEyyJDFEAZUlFXlnfQowKjuEcuVJReXcxhNQNPDwEaBRn" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *dvUsVCLgye = [UIImage imageWithData:IxMqrRtgOg];
	dvUsVCLgye = [UIImage imageNamed:@"cBEIFXhysTKWmKPnTLXaNSeojTAwdhcdxKcRNuhjQIqswzuPrjUYzuImqZDPaXhDLvZyXcuQmoLvSKCogioVSxuuefyUkoQWUKwGLDZHIDXFJJffXZxxbT"];
	return dvUsVCLgye;
}

- (nonnull NSData *)UBEvAOGUgaWAFKihg :(nonnull UIImage *)lPgKZENnHYSYTW :(nonnull UIImage *)lUlUqaHpOFHKDoM :(nonnull NSArray *)KYVeMjZCiWAVnn {
	NSData *ywAIjoRAii = [@"MofcRPMOaKHRKKeMTniSaUwDRkBTxEvsDeWawquqQMUicjOxunNfaMqVhAcwGvhaEBQkeCjtTJOevSPkJHJhggLJYGhuNJpdVZxLrZISXFNyBgie" dataUsingEncoding:NSUTF8StringEncoding];
	return ywAIjoRAii;
}

- (nonnull NSDictionary *)PYPeuHDQTo :(nonnull NSString *)QrULDDGtAzbVyGGlht :(nonnull NSDictionary *)YyaJVgcxozbWdtFMXU :(nonnull NSData *)inKIbhKHGYsYBz {
	NSDictionary *lCofAAdCXVE = @{
		@"SHBQimPCaEylBfNj": @"VktZPATjGQwRzkgpzSxhPIxdPJKxPrGLheiUFSUQpnmhhlDkTeutOdFWGVhMpLpSgaHhjntIVSAQwJgEQOkPYGffLagTHCDrtcYhPyneJmDfsM",
		@"vagaQhJBZuSjxPZjUC": @"VSQQDMjfjcgTCKAiHWiVWdzYlbAuWtPdcrdzDnvniMzwDOPmggQGYULiaoFRfAroMBMcvpyTkdXUJwhRzqtyZcXBRvUVcqAtYviEuxGOMkwIkIofnBvkoBzxXraAHvhjrTSFmXA",
		@"EbEoyFGEOIys": @"VMnvAgfeMjnMlLNGhAAFvzhMveZTUaUUiWFHUsIPYeMTvHljfNIFjLjQrJkQkUKzNTAhStacyLuwdakZSkwoIAJXJUpFaASenHOcsWfkFfxXNsznl",
		@"nwacFbSuLJwqMrGEIOK": @"cwrpCNXLhKrrkWjEDHovLRzmmCCKpOXQpeSuqUafiIxfhkBPXlqArridBlcKMPwHzPdeaWQgMojJgQyfcOSFzUMjfJMrvrlZbBYQPaFxXywiSwpSAiNMWPZQWntoPdfbKQJaaK",
		@"dZsVxFyHtGafj": @"BsnzygOnzhgWbhBQxatveyNUsaUkiCezPjzanrSXlvltEdTkCXZjlWEsNGFBkPVlRDBBeghDUyFQxaIkjvyetFgtHDHgEyUaluBTuhQrygTwdnWbhvGuRAUdRqmTusrRsTwDv",
		@"tzXYWiFoUqLw": @"EwuZmwwsNQHOMralqhKlcQAkYeriLJXLpitDdoYgjyFkRGpSVHfaBlgaOttvMIZaYJgxioAPEWHduXeHxTKaDrdRIfSqeqnQOsWuyUuYJgQvorQEakBrrcIdVwpXprKpLrYCWWgMBCzYIyCMXu",
		@"IYtnAzBWwx": @"GidfVhTgaaZlgGtKSIOpQekKIUZBoBjvVgEohyDOttqWAjAHWgbWxcpjbEDJDRGcfmwJDsypCWabTYvJSFnuYZSsztHnkQgcQErJpKHKBO",
		@"LYKjPQhdDIpeA": @"QPUxozksNOYnYskKDfZkhMCLzOykbmhQfsMOXOESuhGsHwFvgifKpVkhPnqqzLTfeyqoMShyasTrEKRQbjArXiqlDvwmgbHNOKUFnrRtRMtYNF",
		@"XoqhKfSYHZTEdOza": @"gmAdXNPVhtfqqEISPIiMFgdnbWDXvtWLUBkeBxpaFBcSdHkRGutkIkpfzSKwGbgvRPwgIuAfRacFxgvNVjPHKZwokVNOEdRkTwSHtUZowyAHHxbHuyaRFmJdkUdKcHkxLXNbIPejDUgZfG",
		@"zvkYlZdKgbKGzmJa": @"yxSLNGNeBXLAUghPlIGpbCehKCnwtiqFJPiSAHqCcnZwgSXUkqUQhuAWxyRfwmfQhSdtgjZeBKvubyCfPlfdGGctFdTdHVPXTYkfvKWJinShqK",
		@"mZkxUizoCTGuckqOmyl": @"tEjHQPNceMcvfCBFYWFZfepKpfowwyahNvZHCkJICBbAsrpahPyocHOQwrjaWWGpHggMsFKZsSfTJsLtwGYWpkrVHRTmDzpDlXPtwciEVShMsDmvAjrQMYVUKpwfcoZoMxEwYIPaYZGrcbV",
		@"KMBbmKLEUpAv": @"ybuBkKuEKSpnmOzLEGcrMsPOiHxeZALpQuKNZNlTxIqqhpXgutgEaeRUvtjRGytiFmLJLkCeFUpzhszSlxsujwKiSAJrEGMdyHMMTGJYuvFagNdpMAatRVvAkJJEqDFDvTCudFySaikmKSCRJ",
		@"pJBDgNKLde": @"UasfcXosaLpnZDOUvBVzRJFzKmzPfkWojXTTGgltiYzTfPoihmJMlKKMDfaNoUfPXYYgEeckPHDIsNhuXtOaDgugbLVCyhRrgNLXMmrlZODA",
		@"KpQLNHVcKe": @"gTaxkAbReZfNEunhUyuKVdIjDxXCefuEZBJGmcRjAclOBEejqHSxAVtzsgaWIXLfcNGyUdzvSAweOgDCfClGOxfRHaFvxdEnctiUEOKWPnpNWYRqMBZpoKvROJQWwtfvde",
	};
	return lCofAAdCXVE;
}

+ (nonnull NSArray *)jvFtUKanjfcosGBiy :(nonnull NSArray *)JDmEwQVWWsIXGoQb {
	NSArray *CGpRuoqxUDBuIei = @[
		@"vSmJPrgGWEUlFyPdQYDCOlxShjxuYVPFoyQWsqMmohYVAIoqkesHInHYnCEhXLOLZoxHiDeyCLlVsSLLXtmNewxUzmiEMNqmVkFYgPNdrAtkbOpMrtvIizJ",
		@"WwJWyuUfcrYeFmiIdwidofKpyeWqqvIGqgsZygdNUgXKamrnhBfWxDpLOQfEJnAjIBWJHwveUVouIPgakzRgllVrJjdswXDOaIQBlOMdJKZDXvPVSjZoMRPYwnbbLlDDyFjMsGtGd",
		@"KQKbRoBSWVHfaINDFfjZSlJwMjecvnnjHQtgKbWVyGaYNZokkIsalpnteooVhuEGvZHoYpfkQzRrhPJUfRTTchHqbXlNXcTChXxSrZhzlMDeqVNyJEhqcEXxNbPCWEOUHAOuEPkyw",
		@"xXNSkKSqIodHNzoMVKmPIFprEEkGKLOmPbvwLysyITINGgHdnhgCmYMUyfJZQWKXUYCMdCvNfUinoQeYNvVZVFXQMsxbbDpXqHWcmnCrwEWhhtKUOytMOiAHMFMBgwnUQYzeNaYg",
		@"FQcoyUkboyjWjkYtXEfurjEIRUNEsSvhXqYkJRZEQfFQXZtcrgtsrMElmkobcUpnaJoBkuSKfUTTMXrLtevDuguWibmmyMsWEyyoZOsOlirQCrdjQhBUOycvGorLWc",
		@"ejBilWmNKiTwpKifDZVsDXeujJiZxrghqOKXQCRCwHywvwCvIlNIHFHMVsPWbpINmODUPHZMNkCjPoDvlHfUjSvisZrTvurQRchcPxaeUoqiuNPgiWcsXd",
		@"BpSVnbQypmrpbmtMtaSLFidvaLckFqzSWeUtEYNKMRPSCcHHRLOpjiEnlvvmpQRAQjvEzAZznKQSBEwMBPjDsOXYxlvvnVtfDIULsSWFzoGfjeJNClZAXzogQCjkmpCGVVWemeonrfJdyr",
		@"zVBVILxEtMrMSnBvnAfAoZzVPHVZGufdessPYSCxZfgJTTfQjyAgpxwfaKRWvVnEAbFkvhCESklSkwgYhxaPbGlZFWxBzeapRwEJURULBhanDgbIcejMfwCgtPfAIeUpqYJbMcltaxc",
		@"JImhsvlqHJTkVKRLtzFqJHZPbrsQbVCZpdaXeYiydAGPdpfSqQnLWjKfhglhTgjswLohDALZaWZMtIRBrRmDxJZRXsbbiZGuaMrOzNzSIkyatltyZR",
		@"KMvpfqlwEFjtTsbkMIRPkYGKZuffKclxyDfXMIVtcmTGyjXzijTaWQjHqGROkYonMgKlcmEPDTrFcujvBlMEdhaRKazEnvxWfSKpSpscmNuBNFSfUuMgsdKMdeRU",
		@"tNktEjcMzVnZrlwuBVywdBLOCgNOVXuTcclIygVQuyLhVowyPzKRbOwjfmuyGAnNXmbEhVgMxpETQnVgXhuOiFXCzAtrKfLxZuaDXpi",
		@"gSsnbNtPbnYFniAHpPVudgMXhPXjtaBFokEsNyyOtymgZUeAdwcZdJVDQojnJZqjaNHEZpBHGsUOSagLABmczZtAanHyJOIjengokmUnTIlnfWquJJgbQZsBRFnbxSdAzveoMlS",
		@"NHSjehhQqmQzcSyQIHpSnZxeGrRcqyzAiPLccmpsaAHgmSTyjdmaGtZDEvIBzPZJHQJnbQjnDNXRCSIyyTczKKaYoiDqcXbZVmBsa",
		@"aPNYDAVqHhyyQGAJytISwewEPXwlSlxKSDZjIrkFVclMIGPoYBbJDAGFkFMnYkJReGNsqTBSzeorocwCitDemNcTDFIlhCcrABCwhwHrxN",
		@"pAQXxJUiaOuAsxWJftfouALwQLsEbvrMQLxIwJouOfGASwmNmAvmJXayoTERJlDjjfsElwyLsTJopuuCxZRoXKQLiqHytsBRrviAzSNYqWVGNCQvwEwIFSPRpRqOGftQp",
		@"QSYZrcCoKKvjoNlitvRxbbqFQjCuKyRLvvsHtsosvbZaUSTLrdqqPcTnfswBRONoeByEiYSRlLmJlbycApcLjlNDgsRXJNXRMlqdqewhikqxkTTx",
		@"cDuzumIkpiPRxrCXaGmJQBRbcgoTpPvIhBqRVjuSTPrmeYLWFWWGXdMZjAHUuweMuvJwEEAQUbbgVCXgfgkhSXnyczTNSgPkLkLQMEEzJFvIUcCCSWcgNOIAlhaXrNCBAWZripBFI",
		@"iJCBWjarQGAXFcYASIOtAwpnoTUIpTSTkMfygUmsMaCKYbmjRVwWBzdCWyoyFnwJtrpjDmNZTrUhLCArejwbwkeLqHcuzUeMeiSQXNrLuQGcsYdQlvQqgNSlxiMAlwCoBUYVmxiEUEjGvEoTTqNLH",
		@"NSZvGfytcYVwTqoGsOasMGGnzHVrPXccPtbsVkkFgqqEEtJGJElAOaxylNKxIpaAIrnqdlKxDMikgOpBKDWOovROuFcakpfDupQwGjZcgpsE",
	];
	return CGpRuoqxUDBuIei;
}

- (nonnull NSArray *)TEJnKOTaxpY :(nonnull UIImage *)qLwNTUsKXnQtrkZipe :(nonnull NSDictionary *)VDYGfPPVtL {
	NSArray *gtZpFEBzLavDByNT = @[
		@"JIFmZyTTOQydYEbuGvlVzHOcpUgqRPjEPnGjXEovmGgiLgcZRVFcNUKbRHIXgQbMHBwVYcuvXpLAwGqPLztUlrwlFLdemozuKyxPANugUzwPXxpMbsyEFzUeFQGYMfagQLa",
		@"XOmXdZsjVVMYqXgCmdvACEzyWDivmZUoiKyQrmukLPBpuJWLvwHsTHwXbySLvknOydCwiiNjOyatuenezTOMYrEuDubYTFhFXcZsag",
		@"TbPWlqShamEbXgcOTVKoJxaGqtMkLLcuWdYEJUxFYQMvqfSFKbthkBowXdqKIOetaDAsdWkKBKydJvPsZuPzouKSUryqnBLzmYhiulEszVTWGTCAbNxPIFvvpUyEcZnoAKtFiiJ",
		@"CrXUyaGjqUYfgIjKPtqfhZSCndRLoOsHjVSsJoPIkTobyrioFUKGifPdTSzUMBetmalpZXQtSgedUBVIdIsVIKuAaBPWFYsNjpipQmoCySXeo",
		@"ZtsBmMJnxwClAORUPBoLissISbOzsGURoDTkpBjcalrlzXfYaaGhiiJyNGczexqtUkAAWqaduqvdXawIASEIeQHfhOuzTEdNGcNLbexlTbOszitRfATkuufMF",
		@"faRcrNrWtIikMSDOmelgVQDNbTdzXRCXsIhMqVIDfyviMXAkDLCbzVHkMTcsnQozKOEFiNzfrxxoVbKNnWEXotQsPdrsbdmEFTjYwPZMiYmtvpgbyIyUDDDYOUucNnicRkQH",
		@"inlRjJKFQUEdsGpEHDkgHmiqEKJQsZgAXYVBZATTiaurpASYifbFNsqMBunFNGKYntUsxfRdgtbkBIlAXZFIkcQLEVJPAAguvzddGNjbXpqcOxnUarbFnAxdjSkPodEZddXVlNE",
		@"ydklYslIvQXgfyHVBVbRwlkuXbBCVRphLoEZdhMAePZNDFsKUkkzMibHHtLSyUskacyCHuLdwFCUuFiOdQCyFaxTmsgFhZIfqxxoVwlTTFRTwadxStP",
		@"sqLpXKaAPiDKSgQpIevlYMLUmhUwHRhQCKUFoHHlTJTVRMCTHwzYwpqePmeqRCMDrLKnCJRWQbYsKOPlNubpvyEcjmZZKtYMwJOKNrAQiQRMawenWkhluVqbquJfqpyCFUaJt",
		@"ACmmHlDoAoxpaKOjVJTyQinytcmBOtsFwByNyWiuEpnpuksFjxONJzedtbIooFwdyfaukgbiLBZCeWsgBfTbTOhrZwcXTluitvWDzMqUsFjyYQJVmmprIaXPgH",
		@"XLhHIEfncBcThmdTSNhrXFJyHpDOCoWECjqpVgJeLjEsgxdGxVlDWwQDieFWEGLsMZtLsQZLCiKrfJsJMFlHTuyYFAMnnBPlyPfAomNg",
		@"YnBsrLHVDXAfxYShhgENmeCahbFvGBxaeQqxsghDVCXmSzqrlpjCvWausvuVXZfDdiZnCjzeQmGOLdVKpAsuicNIXwlizUAMnJMyiGaKBOGmElChbUyXrAGvAXSTeFa",
		@"aWJRFubRrBnStNlVOGJqpnCaQpTTwDlsLkqHzdFAWwYNSpaQRfVXIkuOTXxmAUDmUCJQeYMxhOxSlhBYsbmNeTKMjFbaMEMNbtNvzolztiumKBT",
		@"YWLFwMMLRtiitCzimjIfQVcOywoDjZMUTBCTFMptskyORLAdIGcZdrzIBXJMXeLaJcFLbQmVUJRvGaclLaDPKGMPubJtCOTaisQUDfErfzTBAPpwcJJgzCI",
		@"rjTIrTxLeedKburitPskjgpWVXQXhleVrrpnpdjOeJpfMgdkENwQepJqYivcmkxUXLMguVaYfAcAiecCUKFKPhpvxKDcJCfSZjBvwEOtCULjxSYnhudeogIBCWAsGbWLHotCMlwVRo",
		@"UTYMafCSdxDJdAFkqENuFTHRLADtnWADjEIMpCnHcMNVlHYwYSoKxwZKLdSGwbgHnJZLcdfizkBViRIZrKkUEPlxkFXNqibIunQJArqWsm",
		@"lyGsKHaAIaErVERNyblNNMDDJOoMeBnsLEFawxbAdGwdbqhKVZybBUTGUtpwIhOZgKwAmumBtQFdGNynJbmgnEtzvGhghPghMThnTDeEsRcINbSFibCtBeiWnXBGTvNxYkmbbQJkyEiSieWh",
		@"dGboanNuOKEeSYeGbfLLFzScBmzusBbpMJznVTCNLLXpUgyHSZJwLEQFafruJUZcTVZsTPqxdTasIjPhFAksQDVkbgBKxvFqlAazyFAiWlCMbBsZqkosbQAvuClSwvSMQtKAnAwWNToqui",
	];
	return gtZpFEBzLavDByNT;
}

+ (nonnull NSData *)isJHzAlfBcoEDIXtjP :(nonnull NSDictionary *)pfeKoeMJbuvkZv {
	NSData *nIPvLGXECNlyIVZZiv = [@"WvYkXxAWCaxSUBgiBqkPJjsSpzwzkVtuIYziayIDlfYURKOFHBYCfyKEInnVpRPhCnMPHIbphFPqBiKGUYstLDetNHRAzkhbRKhAmgsMsAGFmJEYpTXyabWeYvttrrAMaGAJQv" dataUsingEncoding:NSUTF8StringEncoding];
	return nIPvLGXECNlyIVZZiv;
}

- (nonnull NSData *)XdWBTKTLDvRxO :(nonnull UIImage *)azEbwgLypk :(nonnull NSData *)QGYPkSGdbDTO :(nonnull NSArray *)JPzpeJtjBPNeWqeezRT {
	NSData *LLrtzxIrndQY = [@"hdPYEChOxpowjxEptlEvYWAOXToigDkDMrsXaxaYsCuwQeQowPZwXBaNNwhFaqHhfztERHpyMSBRkVYiSQFXiwcUkONUwVQoJYIQoI" dataUsingEncoding:NSUTF8StringEncoding];
	return LLrtzxIrndQY;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (self.magDatas.count) {
        return self.magDatas.count;
    }else{
        return 1;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.magDatas.count) {
    magRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"magRecordTableViewCell" forIndexPath:indexPath];
    cell.model = self.magDatas[indexPath.row];
    return cell;
    }else{
        magHadDataTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"magHadDataTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.magDatas.count) {
    magDataModel *model = self.magDatas[indexPath.row];
    magAddViewController *vc = [[magAddViewController alloc] init];
    vc.currentType = magAddViewControllerTypeDetail;
    vc.magdatamodel = model;
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    }
}
- (void)magCancelButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - 属性懒加载
- (UITableView *)magTableView{
    if (!_magTableView) {
        _magTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _magTableView.delegate = self;
        _magTableView.dataSource = self;
        _magTableView.rowHeight = UITableViewAutomaticDimension;
        _magTableView.estimatedRowHeight = 89.0f;
        _magTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _magTableView.tableHeaderView = [[UIView alloc] init];
        _magTableView.tableFooterView = [[UIView alloc] init];
        [self.view addSubview:_magTableView];
        [_magTableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.magSearchTextField.mas_bottom).offset(5);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        [_magTableView registerClass:[magRecordTableViewCell class] forCellReuseIdentifier:@"magRecordTableViewCell"];
        [_magTableView registerClass:[magHadDataTableViewCell class] forCellReuseIdentifier:@"magHadDataTableViewCell"];
    }
    return _magTableView;
}
- (UIButton *)magCancelButton{
    if (!_magCancelButton) {
        _magCancelButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_magCancelButton setTitle:@"Cancel" forState:UIControlStateNormal];
        [_magCancelButton setTitleColor:[UIColor colorWithRed:0.22 green:0.26 blue:0.35 alpha:1.00] forState:UIControlStateNormal];
        _magCancelButton.titleLabel.font = [UIFont systemFontOfSize:17.0];
        [_magCancelButton addTarget:self action:@selector(magCancelButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _magCancelButton;
}
- (NSMutableArray *)magDatas{
    if (!_magDatas) {
        _magDatas = [NSMutableArray array];
    }
    return _magDatas;
}
@end
