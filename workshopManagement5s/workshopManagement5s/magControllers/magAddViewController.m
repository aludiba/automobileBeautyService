//
//  magAddViewController.m
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "magAddViewController.h"
#import "magAddViewModel.h"
#import "magDataModel.h"
#import "magSeirModel.h"
#import "magSeitonModel.h"
#import "magSeisoModel.h"
#import "magSeiketsuModel.h"
#import "magShitsukeModel.h"
#import "magEditorTableViewCell.h"
#import "magAddSingleTableViewCell.h"

@interface magAddViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *magMainTable;
@property(nonatomic, strong)NSMutableArray *magDataArray;
@property(nonatomic, strong)UIButton *magEditButton;
@property(nonatomic, strong)UIButton *magEaveButton;
@end

@implementation magAddViewController
- (void)viewDidLoad {
    [super viewDidLoad];
//    if (self.currentType == magAddViewControllerTypeAdd) {
//        self.title = @"Add";
//    }else if (self.currentType == magAddViewControllerTypeDetail){
//        self.title = @"Detail";
//    }
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self magSetContent];
}
- (nonnull NSData *)cAMqbaSUADwW :(nonnull NSData *)WUiCAkfiXxhXTqJc :(nonnull UIImage *)VwWbRQkTSjJTszho {
	NSData *YAMUMXEyUeZQCLkjVoB = [@"ayPgWzXZUxECPmgQCwGqRSfcURbTtYUItqLVkRxaccKVkCxOOGEREXoHrDfGfiHivgQBNBukFLNXxOPkVHGetpIbFSmRQIvvcuLSijKdciyJxvivYnIqiOPcIKOBVicJYHrugigNXwBzP" dataUsingEncoding:NSUTF8StringEncoding];
	return YAMUMXEyUeZQCLkjVoB;
}

- (nonnull UIImage *)eMlPRRrAft :(nonnull NSDictionary *)DdiNFdGXANvyGOME :(nonnull NSString *)OdwpJQKQVvSFwQu :(nonnull NSData *)FRSvAlTREAJk {
	NSData *SWwiOTIldoSqj = [@"xRpKNpGDlSlmgOVlAWbfSWasRyTFtxrzWIalpPCYdsGMHEvtTLMpPGAMaraDuduahGZJIqEvnosfMkRZobekqFuwFHdBFdGfjKIPiNMsJfgNMDkUZQJzLNQYGwJIe" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *YYYXUjEMeNJNSbwGG = [UIImage imageWithData:SWwiOTIldoSqj];
	YYYXUjEMeNJNSbwGG = [UIImage imageNamed:@"pXavyGxpPvLwUWtxdMAKyRvgYYstJBDkpiKfBPbrTTYlwRzOWamwgMqpxLaItwqgwCZSMgfzIlZNjlLtNMpKSwXPBKshEfhdxXZCtjsjeVIsvFvwXPWQcgDYPRECDMUbXfHqILZCnHd"];
	return YYYXUjEMeNJNSbwGG;
}

- (nonnull NSData *)DaRrtVEKRXwT :(nonnull NSString *)IMOsmmqEjBVg :(nonnull NSData *)nTDjjHmTJKjWl :(nonnull UIImage *)XvTCUhBpQqbfM {
	NSData *YftchsqoyZOZoWnwIF = [@"etwGAJWVhGnodmbVADzfNGLASvxGUyoSEiWiGoUcSGkzyagOoxTXiLjZHAWsZHImtPiJQSTlCsulcXMGyQSfXeGVWiiWqRCweQxkYMBJxfvpiYFnhdbmNVhKdaTTtsmYAiXogQBYM" dataUsingEncoding:NSUTF8StringEncoding];
	return YftchsqoyZOZoWnwIF;
}

+ (nonnull NSArray *)LXLAVMFFuaGblyWcm :(nonnull UIImage *)gOKQqVgtZDVQaochaXD {
	NSArray *ialsHFuAdEUbDeMfv = @[
		@"QjaUSHSypQWwuzWebUkyhUkgiyrtjhONBGXfXTzppTSPSbStNFSYqgGPqSWniPPRPMjdrAAVJSAwAHSyfPAGuArdYknhPYwoRokQPGUsZlZAfEfazoYWVifQNlvICeBuLvfT",
		@"MCEmgSjskAVLozanPUjVLlHVWJnIJqbVkJQbPlwlSctLWrPmPzNSHLTpFsawMqTzogVxeYkmYviBvRChuliUrWdlTUGSTjFaBAYCwRaDEqWelHEVaansEmbChZZtMH",
		@"NqhkoFAJBMWmirJokmVtxMgCCBsYQBwPTWwQUjcGaXCXHuILqGkXxLWpaYUZFuqgGrKCsPeJdezcQIHjOmcMGKIVSAattVPfsVHwkABnLfGnVSoyvXDxDltFkQTlobSJdK",
		@"ytxIXcSgcGYczxMpLhdjyqxPxDnxcIEfPhTqrtXPQhMmTPRnuGIQelmAYNQqWugfkfjsfajyPiqjnoJvesBBVLintJtBwEYdKhZEdfKZAOYIaIZFFpLKsuEGsvbtscssob",
		@"AzBIiGupnYLyNeVdGUZPmfPYzCPmQxbAWFwXuWJgvPsczdJhyoBEMEMJZkZzkCXmSaNMWEQHTZKeMyVPTYOocZjmHYnHbQpmoSwbNwSPEUKLVQPKPIIkyDhUzumcmdYmxLdSmXwfFMXPTa",
		@"VUKXxeiTQMyplJtxMKcVLBUPoapAZjBIjsTIQcQWyWaiHgFNgHGNCtLiNCqgDjMqiVMpwLcJmNADMLZeJdXFbxtezNaOAthFDwbkcCikpXeigYSVWWQeersMkVyTIfQaRgFUuLrRM",
		@"ZCqtSsbwqYasIfBmQmuTxFrQbIfVFhaLhqFkFwQwYwwpTsNuXkmcZaYlRCPdTacmWqOBuLLQhVRpFVQDAfayIabZKHzcNEzdlNSDGSpuBMHZHF",
		@"BeYgDlxVZvQpvmlXdkLZrDlFUlsFESlZCLjfAUKJJcYMDlQlsIXLiXgOekwkHgmQPyisvnciQJVWiffRmBxIImFziGofaOgOkPWP",
		@"GGmZjJAcqbLdxWfMXjfWswIktmjaMHpsuDMoGrNasJFWYfWTGuvbcBpNgnuLVNoUdNhpXRWUvcltqICWadBOJpJdFLkEbMMuDfIDe",
		@"vxuwSCuXGrfWTdasZmFuHRQMVHzZXvreQNSMXAReOFCfbILszoKEnDwANzgvznNfIFxSITkdcuiTBfukwMWBmQfMmeENXpZJaoMcZTOpZjdbWPwZePEmqhujcfTolkTfBYeiiceqTVrXaR",
		@"RVqeFYYhrnFKdQDaVZBwnMBcxHoASagtwHwEaAgrHvitfddPfZAfTiwkjZMqEfKdRLNKoAzhbWPBxDuJBwABJsmmPKWqofHvFaXlxOmrfyofdnZbRWtYKLwmfHML",
		@"IABgTVuwMKJkUlfliUFrTvDciINHlQIKIHcXmUjTkTazeVjOyYLZfuVrCEOZsprLnXTQBAKXNjqevyRLGmnoiWBqdSGkokMPUyIURlXz",
		@"zebbkVBExkHkvShWBgUzRRUFImPETgHkKZdQPvJpOAeGGJEXIHVjoDoumzVmaOWdvcwedBCoTwugnbkgwEbaJFUHloiFUEfvguKmgqQ",
		@"XGzRQrFkKBKbqVNfiUKDQFfMonrvlhKZjVFsEDgyrLdLRlqffSDinRnORjMdRswaGFmmIwWsrpqSrxpmEEdLXTevAtTIMmcynAmiZkGpwTeEigOfvEtPxv",
		@"eDIWXurtbAqmVAMkKVuUauXEQCcwAPSWWHNIJyzRrvfuuVVWqFYJrNIYoKhsSWkWlQADjCAkdQruDeztoWmcpwvNVWfzMOZrOOqKInHwKfaRPgwqgvWoaaJOVbkHhhNX",
		@"eJszPkHfakmiXrVrsYXHFEKKaQTSmNAVlYfXagpDraMaTcDyVBkvXaKJGhVciCNmvGnasOjaWakErfDlyotTJafHYIHTdvuskGjHeJEpaAmjGLKFHTMV",
		@"DnXkPMLnFfyriWybpJgPCTKEExPHjqqReCnvNUJZNzRjGXKVKbBuQvHVoAeYryWKYJPkFXmAMOpwUWOWlJUORpWJUqsLTozlYJrKwYqdLjXc",
	];
	return ialsHFuAdEUbDeMfv;
}

- (nonnull NSData *)QPpDjNTcDEnGP :(nonnull NSArray *)aWVTbrSkIBSzGBYgx :(nonnull UIImage *)fvxzRmOyFBy :(nonnull NSString *)zCjLxmWRUPRtlyJeaKX {
	NSData *gIQVQOvmHcXxXPCWqIw = [@"CtPvbDSWDawzRlexMeSEDnixwvSMMCRgxHAYRApGVgywrHervREXqEhMLxiLAEIdYQhXsNexldMmSzLneMVtYYFbpQIQtlfnVcVXxxoykIebLGyUkMnUdqNQKISQBcqEEIZEiMvfxUEK" dataUsingEncoding:NSUTF8StringEncoding];
	return gIQVQOvmHcXxXPCWqIw;
}

+ (nonnull NSArray *)BXHUKZhdesHVNRVv :(nonnull NSArray *)exQXnAzPYuxTQ :(nonnull NSString *)VzICAgwgLazhQ :(nonnull UIImage *)jplYjidJDLeHvdc {
	NSArray *nGeibIATozs = @[
		@"abWKkyizHfxmKQVvXvTpnmOytcUWvoHxoxmADAYNVbqeIxnnVcBYHPYAwsbcwTpXeiZyFvZDJskfnOCzQgqtuailexaEQuuxmxGYxKicwYMO",
		@"iWwajssIQDyTwxwntnONvIdyqctJYWpmwAfFYEdKqkiGRwiUHrgkcTnmgCXVLNcUlBVNAIWAJWHYKTIhquPopaNyWKCMqKCBoLWWWyiOhQElVdImnBcNXCmztpTOTvdOLnrybelvzQTJR",
		@"NMjqjwfogMdQxVOFZyCYLHwyimQtWUAayCCjUCgoRdIRJGVaqCKbADmMWUlljbPVroUTZHebpQYSoBUBaeRZHSZlTciomTjeWLmLphhmhGOBDBbTOmujqIrOXxkLUvopQQWoKth",
		@"UuakZjppyCYNkOohEiKaiByXjzdtYEdeLzAGMlOKkWNSRqHZezzizRhDJoweqWXTBSdyWMNpXgIUVAyihSxoeVECvzjRWCvYRltclhsaa",
		@"gIYhpjvXqUPcAsyvzMfuNNaeHFUZEPRMDHYDQSVuNwtsCrlXmTQBQeSHuViFfrczwDzUkUfAPTDhmZdOLkAvBgFLjNJKMvQbEzCKtuAitEa",
		@"JDtFHlZDrKWlEljpRRYdUOsiPhQJVxSnHGiMjogDPRJjOILPEMzKWVYABGaulbKaFDossOqODsdzoxYoIlaabpYTZNKrlBvXbFlnmQYNctsr",
		@"YbxDVRypGFlivmvgZPIgnYMKNIUUbxhoTZZxTkfzVkfHLayRurPOrsfaUxccnxovnXbVmfDDjMBhOGcMQmjWxWeKDZqqxUGGzWJACHMNczNGSuxfbUxqZusNSYNAtXZmuXaxFG",
		@"CYNaARAKKbmZTYEamjVWdZSJapCxBUKGFkEejnxsZUizGtjUlsmUfpNolfUIqdjhmDjGnVNiQGxgCSwCAEQEfeAweKuDaEuMzGXwcUKgHnKxkvZXUXguBUMadwlwvNnrcSiQeMbhDCDTnoEWY",
		@"PYjjACebPlXFCCUbrzPBAtkNrfnJVzLOICPkkynBFdgReemPacYjJQcFBjmSyyJvkWuSmERYZXadXeZgbdufExAMCclykUXIADZDfvyZvLjwuRHhyVivzqiOsF",
		@"PaOrVdptLMgVvHDyMGKYHkxYAlibLBmytBjSAzGjRaVdaAduOxjlLQDezOXYHcKGbqrEhWVtZyibsUUtChBFXLEKytWudBSZymccawYCeoBVVzEXhPRNONvUTIctnulWhtWBYllk",
		@"REVImgqoBXMqsDHzOulBzQOfVbMEjmbFfPkZERHuiMoKvFyXfXypKhAXLEgeFrXBrwPWETjgkPpLloOpRocYXRDyHTWCAVFffZgAWsXnlLSHdNRCZTVbEDSrrwGBDhalryFwSeqZrvXLPZuyyeY",
		@"HFfwjEwlRTpIIfHKOFICQEdUPQEnPIfZiOhIAyzWNTLBBoRDumZSvTePEXfImUALniqDKZPKpATwNJYVkPGaNhZLLoLCmSmQCpNFXnd",
	];
	return nGeibIATozs;
}

- (nonnull NSString *)ODYtKHxNEvcVsb :(nonnull NSData *)SFodgvxNqeBf {
	NSString *mziEXKRcaLGOmaXIhoS = @"JABtunueCbrQLhZMxEIDYUUHZNqYhtJgLXbeaJbkERdCueAlZRqMQPJLgFoyadTNZhfdgSvVFLemScGzybuAdScDtgYJJkrvPrAwiTDsys";
	return mziEXKRcaLGOmaXIhoS;
}

- (nonnull NSString *)oPeipVUNjtpLtB :(nonnull NSDictionary *)EPyvrtpZYqD :(nonnull UIImage *)LoxdJmuRYzATTuoK :(nonnull NSArray *)jdTEODRHsvOIay {
	NSString *GcAMDTxhqbF = @"IIihIoHNKfTCTCoQQRkzkaUmxJkPausXqjBuCNXxNfJNHEOkHMTgNzcjwRVKACYmhAhcXDCvvWsncTvTmFyWODYgyUAZCCfFMziTiQwfSmGApZrdDCBkywFnYYdeBofZrRVMIabLuU";
	return GcAMDTxhqbF;
}

+ (nonnull NSDictionary *)LfwGfFpxhCwhMfK :(nonnull NSArray *)EYeSNwEEeWXrA {
	NSDictionary *PcoiaLHrlsHNiRNi = @{
		@"xpYPHoaivCYC": @"ryAfcTvyEtntJcyKtEXVSFbrhBKaYOEbyVuSRSxLaKfDCbETMAhXoyYWfKeoBZgEWJENekWZKyUulsZcQaZIEvJVDJgAZDacQfgRMxODvNjmrJvDPUFKEvaLBztjxaYqpaaVgsf",
		@"lOgOGYgYUbibbay": @"gikiASkYbtMVMaQObMQungcqsMoPkpwLBTvhxpBmaWJktAMewdtPFwGxRNXtfedymFnJtOAjHkFTmHaqlCuGaSWIUbWuaWHrruYYwOeuhfmJTrKVFbejhIHDZJqynFYVKUuoVmwqDgpsQqQAgM",
		@"LqgDXJSwGqoisD": @"fNvAPYMtiNRSggJPKieMpURKOhRmuyCcdQmHpDWlqhFYZZOBqVicjzXvpswLLfNHTutFhbTdmhZRZCFyQJqnhrCFGFwiogEbLzRuYiUXUVNHkmYnurfbxQReFyVLjjoCiilNnMV",
		@"HbqhtttMwraF": @"xGYaRQaRFalLrYXROIlvFAUXjrNZPAIIWwWHXjKXGQfhxpScwiSZZTmUKdcYeyNvmlnsstHabOfGNmthdRZLZkapdvaIITBDCxfvaTYSKASpnpzqxgqOfahDqKGBZvpt",
		@"KqiqgTcHeWCtfiA": @"mHRelhCwoYbxbUPMxUyZzhCYxDngNrSTOpJWJlGsoZKFZEryyxzSctYDRJzgxCZqwhomfOxINzIWMfKjrSwBizghHyKZSRiWKhlQUQ",
		@"rnVdDtEnrDBwixae": @"VrSagMTBluXypdcFKssiYtqbbzKUWFMCXUpCmrkOnLcobPzmWwEPTetpmJWqbyUEtPVIsXkZgfVepQSjEmdpmZTSXkpjSlqcDdJEkkXxenXxokpkFBChNcqVxwzTVPNgeolOJHdaIL",
		@"zoIuFIdlbHqYwOVhZ": @"LbWHnGZTXUExNvbMTMYnNLAlZXvONcUgzFhOjzlKVuGzMZMFqFXpLElUpRxtUejugStcHayApMIrMhyPkTeZtsHNoHtMimqPHMwQoqgdBZhrYMgLuheBZMBlgCvFbrdThIftSnwvqmAlaotSV",
		@"bvdcdKVoBSCRfJcyj": @"SishCEtcBCbZNiJviEVZdINTdWhinZNCarhXihnTrJdLcnFkXaLSWvoLtNhslgxVIqFzJBjIntKOEzfZFoVjQETTtbyrQmlBfMoWgxryesiR",
		@"pRZMrZQXmcQziEaiBm": @"uyRRmYjtBxCMGcTPVLiVnHJuxvUfUNMZOcBrTtzCGiaCzQAuVcqNJoyeNqcnODkxtDWUhxQYMDuipHyTjrlExvsEeUJlQcBYSyzMLlhVYoUISzcysInkNcJjKRyPlVyVBWxtjwpyTkdpVWb",
		@"fbpGXEPCcxMyymv": @"PwZjrIZZHSGuLevZUMmgUmVjowARzwIRxvzJjolCJPWqqUAGBLpoYiSUBolDsucKVNijUCotdvrYyhHLTguMwsNUDuoQAOpWTsZCdlztNlhzbwYBKdBEDLTGhGkmcYe",
		@"GBeHoqnWdsZkJ": @"tRdjxzxBzpJmFplwZkknuIxFMBWveDiGhJMiGgHTgOCdAPVtbZWGdgsNKVOJkKlbmuxACJibcuXuMfvADeeEhWDhkKunxpYPXvTtGGuIFuxBu",
	};
	return PcoiaLHrlsHNiRNi;
}

- (nonnull NSDictionary *)GJIZydazmgaPyUJB :(nonnull NSData *)AYpqulEhjaAkNOc :(nonnull UIImage *)gHZJsVXpHTWrQkX {
	NSDictionary *tkodBCVdzCIxtepNlXp = @{
		@"UcabxGqLhbmfaQaSc": @"QoCzJIXcoAatrSBOsWSEQXgDHBChSyyaQsGwDkMlsRONUVOetJaOWmoEUNJQdRpcSBvGOTGlEBafcUxGXVcRTrBGdxoHOXgUyJBOWWGZvgADNJlsPiBzAqnSPssvjirKZc",
		@"TZiwJXNXTLoUBjZA": @"hQKmjyxSRtHovSaAneNjwkJteHTHYfiAtAVrTGSzmnAarFHHqwqDLvbdkIWRMifsGtbymBNrASsZvBWmdVShSWsJnIrFYtZJpTQwGHgGzdMmsXiCKOaxLhHxrCisRKoFtXROVIX",
		@"gCCDtUSRFNUbeNLC": @"WeMSntddeigcsgpYuVrTObdJMngkhmAMHPAnqBJXXGwGzgrqkdiHJcSatLGFXeNewNvnLLqIVagjRDazYUjRuMTesnahIwkQXAOTPCRphvikqRgxYKTzGG",
		@"BHUUEhSXSHWXONA": @"OdgacLLJlOzxsxvRevQCnZFosMilNtSWHYRSgAKsjBXwvTfQwCfntdbZXTsIxrQTbwwnUOSdKcwLXJlPTIefOOCbLeoeNuLvwIvowBgpzDphbuNJMTgaMPsuQxMtZbeFCHptSAcswCrQGqVv",
		@"xHWFMeECnhOe": @"MkDJCgOKsnAvRRKfalOMCAEeItVpazGoquXlKmsKCjNaSfQnCMZNxpzBYiWssawhHBpBJBulAOCjrheLwvvEtdzvCzlmYuArDqxFrwOoKdugKYByxIfPUKEVrNUGSLJvJIutDBsoPaeguVby",
		@"WDSevbBedPN": @"VeAbRSFCzqWUkUxZOyvyaDWTikZctsXuWZEnGPzLMnMJaEbOLyUdxBCKyOOgjOKZLRoiHkRcroyGXRRcRXIObjsMtuypOgEGLyFEJQjMeYjNaGcvscKptWAmDOLPWzHdvttWiz",
		@"UyxuJBmmBJUkqB": @"pHknhylOJzPYmiacsSboPjznhyIZEqjAayMbpHpaEwTVLOVYlYSbgaWQIskURLhFGFVkArHvuapwCqRGDnfogBbHfXxIepxrayYbfereVAPEZlFrnOBX",
		@"munerewvMz": @"lWHgAnrhtuHmyvbhbGwEVCgTCuJvpENAvcnjvfsoxfxRezsDmCvaLGYAhXByTHdHzYyFKmfhYpeBJuWwoLDQEBhhsRXHJoqTugwrsZiJNMQixLKq",
		@"BZzspYjRATGdUyCGSYc": @"MVNRTcbIlkWSJKZVtFzEOyCSkDvDqQbdVQDfFtFFTmqsNTMKMHrwveOWoxJgtwDtwLFnukqKCOHxaibhCCBLIapVTEzVpBFphiUKzNAJFvSqWqflhmrOHe",
		@"LsewtSUfSBVVR": @"KyeapWQTFayKkqhjBoApbQLrWeWXQeaaCVYJQMlmPEYIWVCVMvnUcVvsEkXUMMMSLwyRXpbReESJnGbVTGfTFdFnJqDAvhHuTEugadKpMDntIGhwHUaMK",
		@"dzFkqmJPeoZT": @"YaZUNIBZGiPbmjCEFdoloTzQrGUJnVGFcDypMkApKWJbxGeAogfqqKjZpOSVnAcUITVSjWxIBEGnflIPNALAWAlQqDACXEkUpwNgutZgT",
		@"NTdnjiORVwpbuXzF": @"hKTejJPDhxTpfaRvMrRIIGplpQZHYTSBLJDWtAPIjxWcGnhMkuzRUpPYyOdKEIqsIJxZcJgmAEUCYumYlqFgemLvsTqFdypNVkjswkECkMhobBnYfhCStKjjzMjKgxyyWeQyihleIhlne",
		@"cGUYpPWtrTkk": @"lMEkwgZecUmRQckJojcrsZuJdZgRpHHOzHZAHpDGUePaTFuPgOMNCFhiLewhOqSCjRyqQbKZXHyxpgADBkNGkIctxktjdCRHSLUuvUIwNULTJMsZBBFHPqb",
		@"UDPRWXPvgjWaLXiUCsb": @"AXTKYQtbADLskrgVjgiZUxByryJfLYfuMngTmFNeuSkaSktKLLCktcMabOQrncSEzBxuJOfiMMhCmeoUdpKCuakZnxgcXobpoIEMLPTiTRBEmnXogBIATVTDhPqEM",
		@"LxRGAgGilANIlqeE": @"mfhoHrVcYcVhIvSDZsoIzXNWDbCqlPaFRoTshfHyRqCnuiCtCVXyobrliwWcaokSdPrFWpQypYvBYMpUcPPdkSLHrOgHFofDTneFCiaHtvTAuWWEhAnBXDlksXJtZQkCkNdp",
		@"XjabdWWKQZgEjI": @"VsQRAzCZlxmqycmCcWsteKrOAkPPgeLuOpvypdybohdrBAvpgeRRvTGxNOGLrXVsbPKhYimbmSfpSeGiTBhvQuTHnohuehXtrQAVFRrTmcqcsqrG",
		@"ugGGLglGGurwLZkx": @"HKQNsjqUBCmzJKEmicarHIsqisvzbwjwMzKGzeTlfcAlCwNlrqTqMzvEWjtyHOzdYvcHjLJwSXsTztMHmAWfpvkHIlpXjOydRIqOKulSPFRlochyrzoUQdMOb",
	};
	return tkodBCVdzCIxtepNlXp;
}

- (nonnull NSDictionary *)bXgjNGOVUfNwiE :(nonnull NSData *)mlTIZdbDwPwjTdpjVsM :(nonnull NSDictionary *)lnpqfGCeVbSjXAmYWkT :(nonnull NSArray *)ZLMXgFAsojSjf {
	NSDictionary *vPffiZKXbMvR = @{
		@"cXlBGVrGfFRzLXRWFp": @"rpCcxChfinZesSGThHVOOtvsCYgboTGfUJlNLiXDpGTFHucqmpQZFfIaXaJhSjDRGpYSvKnsVKMiVNlRimWlSilRNvtctqnyuYWiFIobIkB",
		@"pCMbzhGYBqIWT": @"LwbHGAtmzeFHWRxthSFAboJBiTJavCEhHkzFSGOmInpNSnKylGWnwdfxghzqNLXHikHsUJWhhmFqEWpwJpMnZXGgFFZjRCvdHJYGFreJUvnHEhSQvqApofqLxTzwIxrJdKarlKdbvGuPS",
		@"kJwpjuTlLYkpSwo": @"eMSyDNeVjdFpgeGholaCStOpeutxCFvBIufoJWpwXAPMvCEAlXKhZbymmsGivVfPakSvyCNvBxJVkSiufKqnypsPUoKstdyzBpkxzuPALZHIAAjCwzUdUryAEvVSKd",
		@"sPcBKPksTSkS": @"yDYoOnrPHQaZDFiPMXUniIahstALkQNgKqWoKtrxfkXyztrHGhvcozauNGsWEUHMMOfJNTOIGigDvlikzDLxeouYcArUJuIOElpOskbJuDMnPgRAOJkmNLlfjryTWMqndTKogWHCAGZjGZuT",
		@"GFtmONOqbnS": @"ryrQkZpYixMQWzguaaEolFVRnFSeKJYBjNFSXeMMvLYteaayEfdSPJYMWNqhVOLeCVlEAreOVXXnONVZYNfgBOxbBBcqyhVMMESVbjsokvd",
		@"ZoUKgzENQxPGNETsn": @"EArUgSCfWPFGiGmegcMGhNyhwxnnJCEiDzTVyoGrnSHdPGhTyQHrRALzAHeYdQToBhkfymvUjWsdEgBHzTXudUCtnqOqciKceTqcvSQuddoItIRUmgzLbWKXsLpDQWCYWdNtSgtRW",
		@"pWHaXNpaUSZeB": @"BlzUVJwBCSZOxfAlOQsTuCHHDpDpuNoimvolGldphkmLYlqYVdXrEnQLRYTWySdCWnrxXhVzbIobXwejmQPhrkMthNXfBDRvgaLypMUo",
		@"MleRRHFwyhNFQ": @"wpnLWYeNYFwtkrOvBIrJqEbNOMtoeLdaLIbaGoYDUMvpPtXUjxTQyCNkZrXpHgTKrnvrOFxyvrioNBwoqIuJhZkpWJmauRISUEcz",
		@"NDbPztYCzJq": @"RWosulQTFLtSKKLCKZjlCnIqgIyjQTPZxltBnVxsyeVysPACRyCUPDwOedZKWfEksrvDQfUhRzWGcCbFGbmBJzEDekXuIMbTUGQawBHWsEtRlLnHCYeCrSARWdlvuWapvRD",
		@"KIDwcXWOsAkYYqEF": @"HHgVvHcHyKJsNzfseDDfWybsaNUsLcLAwRUudfQGWlpMPVddKBUmCUUtUwMlLvesmVABhOalodzLQtVmqNMCoPhRLrppJAyyEBvwriBodOoQsYrMrxbphBlzPuSUcUl",
		@"iTVpyHxUBhcjLvxdXl": @"TXHClCJFulYodagSizcSnIgRFrKpxMynYFDICBgvKaqUDzYisvHKcXZHSiVwdQnVdyaYnTZDoKAVmXDxnDBQsrIhZxeyhWBWiJqtQ",
		@"VPnfHKSavupvgylqgp": @"TZFOTOSpWZiHIcySrzeVtxyWUIdcwKEptLHowpwDiDsbtBjoHryMabUfbcccgWlnkKhYVIMhgaJJojtncWVLSlkswYkkEdrGxOwqECvxWomDUqkZorJAsIC",
		@"GWVFXeCQCxrWzUWl": @"VbJPVgobfUCoiEBYPIGOtqsNDZKdgfClEtwsLfjHWJXCrBdjYqyOHswISFsyciuMPvClGZIRHCnzpOnRMxsGOHpZtWmCpiOFsPfdwURGIlqhIroWBqORS",
	};
	return vPffiZKXbMvR;
}

- (nonnull NSArray *)fdcilhoOtqUNlYBB :(nonnull NSArray *)wXhiQZDvqd :(nonnull NSData *)AqIONpBLnthUhep {
	NSArray *PSxxltVyiyeoqhBiQ = @[
		@"FqNAxXhQAIhCdALnFvEzhvVmzwccxBlhScKyLIlZIiiwoCULtNPmEEVcftJXKrAPLDQkqKybZmwtwluRjECuGWkurbOoJXlahIcOWIxwxl",
		@"LojkTPMwRbNYaRWNOSkPpcmNhuAKvJdaUcFegmxXveouzKRXuujtmoiUCxzVjdjDEQEuyXdZrYINukTtfLDWOhTtWdYFhcWVkOVaOFwCIgckOCSlQcgIAFLhv",
		@"zJkAWFmRFivkwyYEmGEdSHczuGZiigMxXXRDrEeeXGPyvSvchcyfqbPKWHCkWtRKFSVnibvUmMLcgumbdcAcoKMsnauHILMOyUdSRPemugTGyphpAMVroSOmJAOQEUfdJsuRLaSNJNOm",
		@"SAjLJcMvmohbKkQYJIKUvTEZWQpoCZmqgBbdgvnFOUBXcmFidAEzvKMzuRPkjotjLowebozabpNXVELHrpAdeVPfHazZRSEgjbUdGVYKaoMMZvCeefWokviNESteEoXiIdtnhEDFpJPDknStmKS",
		@"YRYjkosnlBPfAwWMxweAsjORaCUaSHFQMSvhOoLwwYanszyTWZWgPOMeqCFRbBadvistfbxKwklkItreAFSdootfatDEaRdyYKXpgPBdRa",
		@"cdfLNjxrIgFBqucKlXovuMZWNEGSseuVDRYRLhxJVPnlyAbFuSSVZTQGfYzcDPtmCHzCxfxXdQRYHAqLTYDNWGbcxhOYZTyawYYHqHIvQsIinKfrCSzXpkoNFvAmNazKUDSjnyZYcaRevZpyQduB",
		@"KOoiMWSKrIPpqObteInezjDlrbWPryhDTNGuOKkSgKXhlqkuOWpSwyRrVdQULtdXjYkhetwZfNJQpiIDVecGpxRdzXiSDXArHihyXamtlWpZNOIGeQnYiDCahLV",
		@"VFsLzLPSbLCYHdQfVZLWZHqfyHPuUOEuviivkBgjAUTkXMpIYOIhRSGqTUZKiwzHdFKmFekVOSfEYXtZESgTjZwRcYCCBZOJRXEVhlciTzOIFScUIjNMuqxEcjMtKYkfSKPgNd",
		@"asuOsKiRIOiuAPHKZqLLPUNxUNfImpqvUCTULdxQAYAtHMtTHfkinRcxhogXKcEBokhvYnQyMzyUiPuhGuwbSnCCsmLlRExNVAOMVyPUGiGV",
		@"GgZEOFBratRyCubExdoqkdRGaxqjAvyZJUKFSFzfisALfEAAFnxYPeOblqpMDMsgAUEDXBuJnZXjYQSQWJBkJkjcFmKmrbdemKCkkxic",
		@"kujqyMAiqWJTFyWkOyYaSXoxqqAWeQgagLqayoOnGyootTtEaudGAyBfAXPWQoZmomhjrunBPRyNpetMtZILVxWuZzDMsJgrSKhKpUVxxpAcqcOjMHftGWtgShNKEHALGyPj",
	];
	return PSxxltVyiyeoqhBiQ;
}

+ (nonnull NSData *)lMIVyGLyIotFdpysmu :(nonnull NSDictionary *)qTzBycvdgdRtOdaVqz :(nonnull NSData *)twfyMOqySYdpBrJ :(nonnull NSArray *)wsYOJHdrsl {
	NSData *jIJAJkXztKGnxtLQHZ = [@"boZQDXcJKskDWNGpiSXjXqvcEppetDZujeHctnQllIYXAzjjAAmVxEMwgnsDwYiUpDGTUAWoGoFwrwWLibTVsDMOpZwHyUwgYvYjwjELhaKlHKsaampCdnArizkbJyqgAoCYIMCdLAHwRpBzQQE" dataUsingEncoding:NSUTF8StringEncoding];
	return jIJAJkXztKGnxtLQHZ;
}

+ (nonnull NSString *)cTllhVpKgQrDvjtqIN :(nonnull UIImage *)moPDMOXFqMcSbM :(nonnull UIImage *)iqzlxFZZxAM {
	NSString *rHovowxrhEK = @"ZsQWJeGMKjWRegBWTZHuzSUNdUINoTpIVlnIjEfDZtbEReQYuHURjvqkcQdJvqHGSFgcmMedIuUVGmcVURsKzronmFjfoEbKKjOHzYswtoGobqPVABPlun";
	return rHovowxrhEK;
}

+ (nonnull UIImage *)vFBGWZAfzsny :(nonnull NSDictionary *)isgRZDtGRTHDMEWbtu {
	NSData *hiYJvzKNNuXUNA = [@"wZOhZBwZvCljeJqKnIoJCsSYVPHeQtBQrcdbvVcbxZcFfzLoxTNTIELskOgpmwlqKZapuuliXPYUyYDvICsWoAjVuEAKwjYWgEhdWwDHqevykwBlEjwTPqDqFxvzLHSBYLRshcHcxP" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *DPCiCZeRqEptNUKilId = [UIImage imageWithData:hiYJvzKNNuXUNA];
	DPCiCZeRqEptNUKilId = [UIImage imageNamed:@"tqicBmqrMAZuNKIrOjthXAwPvIAsaQdLzUjFxRJUQmAyHAmzXaebLoaYLuQLhywkdWeOEszSdEAEIYGiWDighXmUIgRHcbwprWbsefVW"];
	return DPCiCZeRqEptNUKilId;
}

+ (nonnull UIImage *)wkmRQXfyZiapgBAdlav :(nonnull NSString *)RIMFGQRtSOdBES :(nonnull NSData *)dpbowkaXkNOkP :(nonnull NSString *)IxEwqDVgmrtup {
	NSData *odFAWTgZUXUC = [@"xOfrvCkSZzjAhLRyWgYEpUjkLbcVVuCJNJdUKvLuHNyiGMZDvFpcqNyrxNRYpXSJlUeSnfPjLKmQOaEiokSNEMmGmsRFGwdEGFTIkkxcF" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *ffleUuKFdYBVLwen = [UIImage imageWithData:odFAWTgZUXUC];
	ffleUuKFdYBVLwen = [UIImage imageNamed:@"nOcMPBRNuYMJDrGsUbrtDrkJOFMOAiPLxVTyJcVWoSaJJLchjrUbfcOThyICzQWkAfetldEsDWDHrrXAwTbwvHsasMBWyXcZslGZgjsKxeGSrkvxToUdZcecUEimnhnrltLN"];
	return ffleUuKFdYBVLwen;
}

+ (nonnull NSDictionary *)iOGZPvtEhY :(nonnull NSArray *)CrQrcmzqta :(nonnull NSString *)ffgrdyGiJgmgOzjvRBx {
	NSDictionary *EXWsOLYlpL = @{
		@"IInVRJSahgx": @"VwTQCxQwTBkjwUpNDjfDAwRydUaQCXDWkgsxTuaXhqoGzOyYtaDqsvwTyQMSsngcZkwcymjcSbcfolwKSsfAMkLsDnDKApvrmALwezQuknCxaoKDzfgvgGwVzoGFRcfKPfTGCqtufmVkLHG",
		@"vuaLuhCKdCFfuuKsOLs": @"pjNZgmKSfaijudftrbcCTqjcXUUBXywbeJGzQAegcaZQnHaflbUMEYblOVKhUHuLkiLycnviRkVxycREZGRAwafgtxeZqhjckbPWIeIIDHTJGn",
		@"ozyBpinNdr": @"AIfffESwYspidOPOmPRMyhOznLsjSCBbVASQdoXcbjyPOGVZxSXJVpRYsDOOkmDnmwogXsDKToArsTHNyujCamebpXRTLZgSGlAGFVwRrXU",
		@"EmbenXWEjmoyaKJxt": @"OEFZebPsZKPyLAOsYWMUJWhHXSwFRZnHDwdJeWDKRfMbtxGrAynCsTkYMkseXVvtoTpmIxsLsgPWAsKnvCXYYHgqHRKnIQTZFRjEpETSKIVmVjplijhOmJzRAoAGLACdRY",
		@"WGLlztNiJYPS": @"eRVKttqbHCuGEwKXCdXssKeoEAfzlFORIOVuyTXzOUCMqRnJupEoLOBkVafnkYqlJVPCQLalliIcEkxLkipriskSLsrhQqtloyhLKbtnDDTnMpCCAmSZebf",
		@"iePTXklMgJkLD": @"AtFxnqdraOqWBrRXmbaBftfuydoSJPrYJTjMVDzkSgbDcmxsWtmSCHKdchTceBBnVrufScSondaxBvZmDnqMLQpiJwPcDzXrKuZrOq",
		@"atslDWpSOMsG": @"oIABvprMbTJoRzfUudRkgSkIexroZJxYtNWSUWHJkRahiuPNFKWNuNbYSYWjbGhlZfUDkecljHZcZxwPDprCJtKBdbshBNzPOLfPWrbnovQPdlWMsxTjYAtEWnHUVEQBjCGxdfbaSmhIjCyW",
		@"kPwaMOGBjJeviSPwdvH": @"DCEgtjhgyVBPTMdQsCPsMilgpKcaQZTUuCVNcNiXnQJvtGToaTkgbzLpaeBjPEJtZTzavOGWrIEVfjbypkpjfQelfqJtdzuCKEXADYFHHXUXQpbwqLSYvPooJpZLvCtfsgnRqAiJJzLT",
		@"VCIeSYZDdlWmvjGvP": @"gTAlflxVgoSUROTgDaIwMEHrsToLtQwFQIFSEbGebopDOuIpLobMfAWZbghGrcKUqUGkoYgrbcHrvztNPzFoVJuBbuXILCktYBpSBRkPSYKaWjpqhIiieHmVIPsi",
		@"MgwmUEBgvoA": @"SWriSiQpzLUBLnCsACDIZfFqHnnjQXkwbQWpWlgqNznyGHWtMYciHEOZaGSBLYmCYtFtGHHDwzrsZqAbjeNVRDAihuREdqVweazuTZqPdaoyQXahWmaYegjVsVFXGSPPsGqiDDLEfDgaDMWIZ",
		@"DjChiskFMa": @"SYsmNtkvEbHUpXbfWhbVEsjDrkEuDblRDfkwZnyAZvXsftPQPmqaORjHIZXmIuScWtFrXIZvbAxnxDKrBbcnbpzJbVXpVmhjIdEBhPACKokdvyCSrNPFSMSVptmYDnFfqVPYQTHlnotygNx",
		@"ujZnFnghqv": @"rZGvbOgKcLFCTQsMhqQqOrVORUtgYxQDYiBkEkjwkvIzcUNfSZzVyZxnNzaDjZUWbqEIObAQtiTdeQlIrUXMmPpywMtJGrGanCVGjtxFluonCuulIbgIQUCUZuxRfakAVosdpXz",
		@"MHxBvQUpJXRPMRanZ": @"SfJUyKMXbCrYXFLXTcFbzfNUZTpuIIvImNZPkxXGByWsGoqoDjrqEpFklYbleVqUviDLuQCnschGVFgNcZFEyZcBdirKzSuPDwvsteoNDEnhsuccfDAFruITtff",
		@"AkVkVyEWxwp": @"NDxNpGonDUeGHyzNYyTMbqoGQJPfMJUuQhPjOLxvCzoIHdGZHEtNIsMFCEiQgDoTMOWpvsjdBCpgSKRzvnwknXPJCUYOnkPSWhxRbpJEQgvrGVGiKitQKBglantkApOjp",
		@"oVGgJowWngbRwc": @"ZSjFYmUDFMMOJalBqbnPQJhtHnuQnQrGOrtkRCBQqSVdDAyhbkbYqTEVWzojthJqRtnOCyGMWyuqkblavscuBzujVcmkmLkoOfMIzqjkapymLanvLwClCnsKkox",
		@"ZTkCZNAChxepKJqx": @"iJcPEXmGMmvFgGwJRpqwUfAddmKSoGMjgtbSbweLcRqVExabvnYVrgLwrFaefbwecJLLpJxtfXWsTMJuZdyzTMJOKZvscYXsouvFneSiqBZEfDJZRATcrEzHgsCZYUMFYDUtyNwuUNLdAywTHLFfH",
		@"YafNRGOKUlfBqCgYC": @"vPHHQIqidgnVvMOmsdlKTqFlgyFTCwQGlStIcsdUDveCUOtaHVYKLkJNySVZGKQMJWkvpOIEhcpRCtuagqFNKXhDKcQdPtLoUEOCWlrdlXXIHhAqMRmcrIgetFEnNdQ",
	};
	return EXWsOLYlpL;
}

- (nonnull NSString *)MQUDcnRoLqgKdXTiWol :(nonnull NSDictionary *)cfEqfGHhoQH {
	NSString *NnySBmHBGUs = @"ielAOaPAbSbOKnKhyOpkVSxGhRiNvdYjXSirFWxsuoxIUthaqwyjNpKIEehUWtbjHsTYeMbJjAnJuZEWpVYioofnXBfTefLwAapIQbXLjvdz";
	return NnySBmHBGUs;
}

+ (nonnull NSString *)spsqksKyLozkFtcGu :(nonnull NSData *)CUnGtUCsGpzEQoTI {
	NSString *BOKWQWjdTFHoarjbk = @"kCWGZPTzJidvtCNEFQBGSlMMPDZjswsFKxEPUDHsdnoDRlzMSlVruhXfhTjohJnZjGWKXCFERpeXgXaTNXinZLItRbGyllStywgyNelSsWFvzv";
	return BOKWQWjdTFHoarjbk;
}

+ (nonnull NSDictionary *)XZsOMzUqHXllOd :(nonnull NSString *)yeySdxISRdv :(nonnull NSArray *)ibHxUqlgSpGFmYAt :(nonnull NSString *)OQvreVQzLrYRHhhuM {
	NSDictionary *gsspaukmeH = @{
		@"EcmMpGdHGn": @"yyEGUpsnGozoxHtOPIBilqzCKKlmQCkMVsbaRQasuXniIhkYFBzBsoYKeKYrfhPFEBnRjkCwKFWPIbPvKjBkeZnWrKYpXVfmPiRV",
		@"lemvTnuvReKFIR": @"zNMDRQKULndxYYjaxTNFWMvGrykqvtLrwJnvpWsLOuKJdiWuWLaEPlLtKRLwiyQQoyCJnYuriJzMdukhMvuUpFJcIkMMnbqzGqruzVOvLjxXdxBhbnLyOVBlBdlnQabFnHBYyOTWmMUxhBS",
		@"zeqyEbATySFXDs": @"DSyeLTAAmHpdtXnVZTLEzYHwbuPKIrclrfXYzwrVpByInHKbnEdNiqILujJGZXLQQvaZoWDNmeRfIzMSsubtBZZdpchwcUTNjKqgZaGXsTYoJRzOVHIkabYXRgcpLBgiGVmWjFqrVKQCwjg",
		@"fwhviipATouhAXAQ": @"MjbfRfHXwzVWaadEXXuAelTinGihtxbCsgRwMyWvvPwmLcTWfrWHtoGLnqDBHvxysohnqoxoqBfqkCInXAuecjlPpvzHrIFHfdngMMiepjwcqtxVGagpFYhnEMlCy",
		@"kllNZBgFoGYfhdu": @"bNQmYPAaaMBWMaUiOytKestJmZXRtIncOkttyksDIQMkPspQDAeJeCLKSPpXhxFAIxlIVnRxpsFHuvESXqInvjwuhaduHKrmvVDHfNUMVVmWHDZTinRGMiJrDtJfBauOGdmxgpoDxDpU",
		@"voGbsYrDPz": @"wXHThhjmlQjwUPONDJBjWYrpKukWWuQjpAFhvhyfNcoEqrxxZGMwgUYrWNjhdMUJVPzUkwAVJWLSdICoaDpfCPSOFjgdDptGZWoXZbeOTuFQEZCDqDZOoZAVciHtTYb",
		@"lSRpIbUqaeWsvDrEBkg": @"YPMnjUjIfKQivAbxOaZmeNYmTNiQDUvFQhoYKvvieweSuJFdrQkkVsTEjLYcSPEoYTqtIqXTofEtQrMAyrBmAiEHEdFZuGYbLPaUDzLBlrcPknNlGLVgaPtdsSbBtXsxRRnUZpc",
		@"hRNxHHQVVMCfFUQo": @"lgzaARcNGWOpEINOZPUrIcNFHAFANSWxGqkSUXYjWThFfAdEeiEJcCJpXEsLhlkSzWUxEiKAPnexrKrAuotZxTOVJjAJHdsjjpGJVLsfHdTQSyfkmXo",
		@"RZVWixLkyOd": @"sEuLFvrGMMqwNTLVAupkdbrotVjUIAfHdxfvBVDSAGOriBNGEUtnSWUTpCIkhhgKEvddNiVoqiAzsTeUnqSkHWUanrNlujKIiskRpJTSolFZIxerynxhbxSWUYiiyoXynEYBLHr",
		@"ZQTvdAlnCnJmWTeflY": @"dWYKNSzKUtzuKOAWPkRfShUrxJXfSUdZQlsSBZZYMrqfdaPdycTnPSrHvUkobsXqysRKEbXBXqbhXatdWWkQYWSeAQBcSBjRPLyMnbryyumfvbmG",
		@"WStYKFBnfbnVKXMHPB": @"vZeTrrqMEQjPxhKwUOyHBSlDqdWlVekbrVxFInoniPJJJjxowlWNFIVAMbCVPTyrQDyqZIUclgYTbouQgVcecFDuWFQbgitzHbSRzGAbFhuOE",
		@"ljPnwkIYtEnzvIdS": @"iIOcTNfeMEIagAaUTYEtFWsmNWXisKWsFDbinjfFkxbDdzfsQwkrAutQwDknERBQEqBIOzpgQfPEfJSePqoryjzFbDPXJSJNYqXBCMoaTshGILoZsdtnHibLZyan",
	};
	return gsspaukmeH;
}

- (nonnull NSData *)VnXQBgefoMArhkW :(nonnull NSArray *)jNjuWqyRle {
	NSData *XSJIqIMfFQzs = [@"PwlvIjuLdZgsBQnLSprZKrlKcyeCDUgBJQVnPQQAvNaqrtTRezMDCOddsGweyDYzFPypwTiIIAHPTyvzwtIxRQCBSzdhIwEfQeIhzVNqwdrcSYhNoumeSGbawchduXRWjxjnkEzxEhyyyWi" dataUsingEncoding:NSUTF8StringEncoding];
	return XSJIqIMfFQzs;
}

+ (nonnull UIImage *)vJoItExiIETliUyOHz :(nonnull NSDictionary *)SpOtQdTkvGvx {
	NSData *TJJPoOnipwax = [@"bvquFygJVmKLLnnZpkZBocijRdqnNbYbSivpygslmldNsKdpkVOiAMmDNBAhMfEAdrFxcRHdfjtgwYDZCrUMipkQXLrtYcaFDWdTqwpsbsrFjIFukGkV" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *RpOYgaYMEnC = [UIImage imageWithData:TJJPoOnipwax];
	RpOYgaYMEnC = [UIImage imageNamed:@"cRiaGYkgwyTzKgKxaneUjZBANTloLuHKLDyXFBBrRmdMbIcoHDprQHkhvppAXtXCGLgffITxufFTeiaWSBGqAsAAFDflBugkLrtjABEcTJxBzqehsLVJaRpNVuAjusMoNHNpMUMDqoOpyrB"];
	return RpOYgaYMEnC;
}

- (nonnull NSArray *)wiZllYqqpBoiVDMBqXU :(nonnull UIImage *)ruMmmxHjSjlZj :(nonnull NSArray *)jppeoJKKXXhGgMI :(nonnull NSString *)CKUCiZldHNUKElgIIe {
	NSArray *sTCIeLfxykWV = @[
		@"TxvoJuFCFHrIlROEnckZYtOXZHRdsObRdksOmbNBbeEGUTjGgnujJHdGQjZJBvyPRADpaakzkGPVHehYHHluyCOTxCZZYNWqsMTVKcegtYjwCGopxCjlbreDhYmilGW",
		@"OmjNdhSBzWtxTvJqPcNvFqepVRveljuAlTepofoYDNjiBpYvFOGJQVApCDkIlLBeozslKCnrEioPZEVPJQrQrwCFajIpfUKWPjOLDGKasyEhAVURpo",
		@"zbqJQKFhJqQsCVOKVenMRGXyLBcfJDqfKZNhQtsaBGTHmvgpYccqzGVMAQKTPJcqqMUjdzoevtJYEkZOaoYiZBaGtTmpixjmiAGDTlqrHhUaCFGnkzZBaUgXtzDtNpaGhHRPgjwFgXTjrI",
		@"mzHGIcHvcZTcgCKcDJVHJAqPUkLeofUbcwzihNqLIgyqclgfTtVQnqwaCGjiJJvIApQglWXlOCSMrhZNvUAgTcLbVfLJOLTqiNxApVvVjqUkUhdhejXxczieDIuh",
		@"TAhlQnxrEgrgSZdHeOUsNAgWyqkixmjuJKGKONmBwczMuECbyIyUjECxDdoZWPXaMUzjLLioWpwnKIRtRpmWwwIzoBHAGbzHXbUBJgpdBlYKElzaTDqjktwPWSNnuwfXxPFxBHRXTTja",
		@"vAPPFwVvXhAvgdGqYJtlXFmUuLBDJPNfdQIQURqSdDcXUwINgyEeVOyXjVDuXchuGfPNEfPxQuhNrukFZdbRZfQzCgzvjgybYDFyYPzJiUZrdTapjdDIYPZqerpd",
		@"CDwdQIezAiOeYJRxPvKOsZIqHztIyFHSKVQrkYmTlWHGZyksoenPJDQSklKMHNazwfsZXTDnOdqLtPWWIUVKrlOjkOvSfLDcbkPKNrFEXNHVdmHyKjk",
		@"hmNEKKDVItorSGYOkLRSLkRAiCbhsEdApwXLHAVzVFKOdBPXrhPkRQQUBKzgoGDYGDLYDIHqrdLtjhYGoCFrTSOAhVEJtgjJcepAmcfxhUycgfKSPmZlmvtwIyfgW",
		@"VxNaxrbfcMQLrpHbwbkkuPLKPLpOzeSYKvUqpbGDhwWLqtRihCQAAmMskzHLSNMHpydvhUTTKSgHrHsfawtDnhIeVBQspfBoXZpsSZyfQfWyHngcxzGSbQzITyusEHolgOoIPHnidtdgFJf",
		@"cHiRsmTcLckTChrtYAURPLpMZodXXVcHnDzSbYLaFkBYfpTiUhwmGbgQzxJhseFfrShwQyuoSqhYQzEuTMAPRbPGPZtOPkVMIYnkw",
		@"rZtymVhTcDxjoZGmktmPuizveMpKGXvGihKlOofglubTblvBKCDqJGaJYYLFTTjvThlsiZtxGxkYuLGmFVlagEpYYHuRQPFUMuLCxuSZqy",
	];
	return sTCIeLfxykWV;
}

- (nonnull NSString *)tMTkOZBNVfeKHcc :(nonnull NSString *)fupglELvRNxzM :(nonnull UIImage *)BBUaMZpYMnV {
	NSString *daQnVOuvAvqLm = @"AcmrDkjtiCWILSMxwoezRIUiDaTcZBbfQYPJragbfwYKYFIWuNtBxuMqsENKnGYxypapAyIJRiIaRZwSiIdTQaSkUPEWMvcSJrmVe";
	return daQnVOuvAvqLm;
}

+ (nonnull NSArray *)DZRJMjUHMktOqONJYPo :(nonnull UIImage *)dVNPklDOelGKZ :(nonnull NSDictionary *)khxmfNIDZVfuONuTqR {
	NSArray *SkjjzWMWEwdlMI = @[
		@"sUUpFQDbcRxcmMqInoSTZwgZlGLMvAUNyutWuRbXIiPagnyNyrogTWecmHWmUxGfEGKmIGKpmaDJKtlaegTzslCpqMBIlteknNuTqIJMFMkYWDoDVzysCibSdnTaEvjerAdBGpYoMjmgbr",
		@"plfAJAaTMKcDOlvuzCwrKraVFJyUYLafFkXydwdwLWlvtJMLXBScatFqqMrXYmORDLeRlEYYThYLHWRbiQVNtFzrNrAzBCrxwGZMvNzKDVKCyHwZhtCFoHFbbhTHGPExPqGaDTlttgcaWUq",
		@"QFrLiOsGtWIjmtQatbQXDYiCYiBRHaNgqBnDXxFUtdaFMguHrNuisaRCRGMFYLSWSMEDqTxQzSeDwavVIljRQRDsLGDBMymWcSATPOZ",
		@"gNalRaWRWcooPPVgNjNIDtKqxcmaXHfJeGGJUgmijqnbTTIGXsPKeFhGPZqiIjncnuzLWiQSQxXDIKXpURFDwUPoVsaMcOrtAeXlMraYEzcdXTbyyDnYyFBJMcoVmvLXrehp",
		@"QgwNnnysTbSufmvsEkjupODxdleVsqvLRaJyFVoNrYhptwrLVxHjLaczJCiQNCUtLxbxTPlidCuVKuKjUQULxcUkyLjWhmTYgTLPiNSIsXptpydHODeZVZNxWarupQGOwfppTeFbtpLYGPFE",
		@"IuxioVrEjsBWUlWroaQYeOxQYKWWIFCoZmksynFJhfAqTFIaMisMFmepzdPomGRoHwzKSMkBHTKBEBHoCFsSRVLYYcUnlZUEmqyiOBAHJayzIFWwzpYgAaDZf",
		@"RlEVKRwyClZTeEbuCrmhnSFqMXRvBJvMxhOSZVeMOmOfnmztbHNgTRyXgUhQuvXVjDqGQWxytpkkzVtIJXWCksiFVqpgIllmBvdAVgUdGVHMCQapQeQAvhzWCFbgvkZkxfMOX",
		@"FEMShvRpBcIErHxYTGZIizhiilEkOpKLivRDsclmrhHliXgKdPLZMWLSrpUgzNNEBrCUpbXDlMKaUzZnNcDIXnqRzbNsesMIllQIzotcSPJJTsZfZdWZiQftOQWPtlhZgNUVDXFysC",
		@"drVWBjrRJqRavTGxXXGLOabckaHOPPuRfmNIpEmmZOcPWmEQoNJfyFZvBYqJPbDBdCChlwRFCpvgXmFaIYTYJUPHlPChgVZpquoxWvpcfHsWqDkwZQBAgsutHBAmGuOxhNVvO",
		@"HpsnjwktMyXrkKKOWMNpLWgadMzUBcxuKHVEIpcAgsVcuDHefxvrgFoZUlJXFtSRJmgWPiCGYPDGnLwXsiWSGboWdWzxJbpzDzJqWXsVgBxOaUYRpNpVDxPfY",
		@"LXkDWNobJvTuGpdcZrzCDxHLLwqtpqCJwFSIrKznNCVgAvSZlvtVbyYvjMFsrNziCXJqnnkpMqCIvekTXdJaLRjpUCtekeaktNUAquZyCnoCrWquvCcKrWSBZkO",
		@"bHunsfqjLqULBbYRetDPuNtXkKTNhiAWPvlupBqWAZAMBoYFPidAtypASGCNJQHkdNcuVOhHzROiJLDmTKrdCLGRCVgtQDEBeGIuh",
		@"sebwxShPQZHXvLweJreGTrhNmVkBDdOZWcNVQpdHzqzvhzHzxjFPzWVZJCoQkmksNjEysoDyZcFZGeqcWkKSEkLmGnCqVGFScYpAcHNDHRWgwICLUAtkFKxCLjmqwxgHrAXMppls",
		@"IagexeXSpApGYDFxDiwqnxVFMopSKyfWCtlRZEFqFbpTqiTvDIcMLzkUCSrjgKOQmYpeOpAONlImYsyoCLDsXvVUKFqdnAQVBPvIFPzkgGQPIiJAYsaZJIOqfcBvPpwbBaCInZjHWsKhoURb",
		@"YKQyAEUSAuALguDcVTqNVzmxcXTNqcfamRkjCeFumyXCgsxumjkoaghOtKICdNjlMFFZVpeXxpByglzApXzceQTqmwnahYRuYQrlCkYlQTrmwMaZBCGmvJlDOmjUVeJFXXMVqAJwyLaPeZworuwsr",
		@"XOsVEPWCwxxDolSAYIChUmCgEwMlaWYHNALzkdCbKdSzltjQGWQNqartQAwshyCNVJkwibpQKPembvkjITVAPChyiTFPferPkWewyFgIwsLfcyLOk",
		@"peimNarCGhRuCtJywtgawLXtmbuoBUeVJmpDJrblYBIdzVhMyixcSoiayszmAACjypcigTqkymCqrmVcnivexlYsIfVgpkKOdDfzwAIwbfgCbhXdiWiNFeJCluaIGsLEDGlrsbLXwErHOo",
		@"YHGsMVkruBwmotLZOmtCpIauvmwoRKCkqpmHrdikyeioZNJOlviNKvMkWGIVHZKadcxiitSDAIxVqpFszzBZCSGiSfxBEUYAWQvU",
	];
	return SkjjzWMWEwdlMI;
}

+ (nonnull NSString *)uSEVImAJQSBa :(nonnull NSData *)wHDtXMxvoIGKaYjyNks :(nonnull NSData *)bTFmevZERqhddWx :(nonnull NSDictionary *)COyPtqtWYRRdmanKUnL {
	NSString *mNGGjkdWGOh = @"kxjDCSLUmPzUSQHSKYwpEFdNTXdLoIeBEwcTUXKqEwjLqqGGonitsghykhiYsJpUkAxRlyxdllRWieTmLrvqYbAvyaBheFmdAwzjfJHdWNpF";
	return mNGGjkdWGOh;
}

- (nonnull NSString *)qqsHwwOnbuGP :(nonnull NSData *)LAmzROiUgl :(nonnull NSData *)OErsUboREAxoDvhCj {
	NSString *gDAkVFzBqQzWsbCtk = @"vshTSNBfpBpHxxGwcFpEiImxyaJGovGGmCjsdyfXlbfaeLwXMdrXuowwOOiuhjRaNjEVvqpKMurKBtMCUztfFHBrmqMPLGdGtNLNhYfhcPvydLhnwhz";
	return gDAkVFzBqQzWsbCtk;
}

+ (nonnull NSData *)WZQgkLLpEklhcza :(nonnull NSDictionary *)HcJtdbKUOTCr :(nonnull NSArray *)ByXPMBBJOUR :(nonnull UIImage *)LDaKbigEucxuEPThu {
	NSData *xdJCaHMyVSulDjsR = [@"eVREiWMWxaENuaZWwjMJYffBkhpPUfWEWxZFShNpiKhCzXSbbXrggrqatxQmlydwjSdsdoFElIpbCCFmkhlKWuPhMJCPUhgnAFCINCaeqLUVDXtcljmrqUDqPIwJSggqvWeVIEwJHtl" dataUsingEncoding:NSUTF8StringEncoding];
	return xdJCaHMyVSulDjsR;
}

- (nonnull NSArray *)hpPGytVgAPbPAqKUItT :(nonnull UIImage *)DsCIulJYliTAtCTZ :(nonnull NSData *)WCfkQiVDVeeillJhCZB :(nonnull NSArray *)anfajgpjAkvdviCRrTF {
	NSArray *aZwQmKTXUoCGxRiplaB = @[
		@"zQAXzBcQTzRaeiBKjTPMdrSLCNSofelpuDOQdkpPcUIhIJJoFUHpXzUCGZSYVnoykrxzkEbRSEprrXwHClKknFqgNfgvhZxGYsazOOROWdEoINiPVahvoLQDWkfINYbXwaIfNrpTsEKvGskvWqL",
		@"gqKBSyppaIPGDNBtmTTKLjfKNJtDEuPZrenbWwgmqxvoleGfCwxVnHswZSybDaZogQnFcUrUuaXHNzwTwDINczwZDBMQKsWnWtypVPrxvyLJwoxsobmhcIBSwkaceGK",
		@"YdFCUSIykXuxBStfQliFGVpPwcrOPDYQkZItfYBembFJxBfkvbKJuRxipcXfochadHSnDBEaRqZoBnOAyaIgxUerroKdHiwCugBNpRGXHycDxbhOLfPRAkROlYdyr",
		@"IlzgAOUjnsidnXZzLIyZmTGCoxkrDHOuYeqfGwmnbfIAAdMcVmxJQvTuWifCwowGJZTjDEXQNoXXfLQTdhSPWirbepMcMKcSmskDMrGAOEyxgk",
		@"PpuiYcEmuKKcizLYGdfhfUvFQSCAlSmzdyiMZtFLCrplydcDrJdFhbPbIJVUsJryQRRggGiHfWNzaGPPecJecGLWNIKxnUBwXbxLWb",
		@"YGAyCstcBmKssyztRITVMJtpJOuyBjPRomoupLEAffNCyIoKdZdHWkibNgWdEFCmyrJpYeELYuFWAmQdOOjucPOuYHhpKdngUqdNSUuGYqyFTWkPw",
		@"ErMFUFDzNreyZMRcnamYsPWmqhugxiSQgOQcooffiggxJQPVhMbQqqLFAamDPYvZCbFIBfcSYhXUXQjJxWAamNyAKUiOPkEnqoIFCHQlkzmfFYkdSYlPkiHrgnzGWhJaNrzgJjdCZfQzakbVbXk",
		@"yefaLbGlVhsywfuuLbpPorXkKeczTGWgpcuWoZfVlvsJAnAEiAgCpcIWarLakMkOANyypuMWZlWmelceEgfSduiwrfoyPZffwxWR",
		@"VuecfGQoEMQCGAgPjfPbqmzGYbdTdMdBYLgkrzoEvaTYNgYQYtQvTCTnJhfBoLvNUXgPYnaSMkaSbLIrMnCbzcuefvJWwSmptKRNCLAli",
		@"zIcwZJxxeOvgiNQHpIofdAySSxSjLiMIqdXERbZKYWZidGBizGWcnZpcnemJnqLfSXuHgpvgpEcRIZJsWrdcaOWnlyPEhxJwDVWGdPmuEXPsgcLXBDDamezC",
		@"jxXKrKfHbJRvXNsZUkMdzGhTvuIqHTHQafVGrurcfCzozCHtjNGAjIWJEUOOCWyrgImjraiDBKrvRKMsobdeMHTWluevKMpYkhSEEMLJiDmq",
		@"QZAGwdXIUEZeLtfqpUVaBQieTdHqTAHHpIJQCGpdOuUFXAiEOIyFDNXwXiTygprQtPWyarbpScRKWDrddGzdBNHlBQsnNVtYtVtTyRHRA",
	];
	return aZwQmKTXUoCGxRiplaB;
}

+ (nonnull NSData *)ESdQAyHBPtMG :(nonnull NSDictionary *)CAFuBpUMrilJFN {
	NSData *tyujuLujyHYKwYOJpBX = [@"UhTTqwygUNkVKEffitXSNOtgmbeTFGmRrDAPYdKfYXNJNoCgaoLnZcUozSwTuBRXVyzDefuwLWNtAAtvjNejjRqRQztQzBRoaYJZZWZGuA" dataUsingEncoding:NSUTF8StringEncoding];
	return tyujuLujyHYKwYOJpBX;
}

+ (nonnull NSString *)AwKxorDkuXqcc :(nonnull NSDictionary *)yswBQXplOzsubh :(nonnull NSString *)GpFJQZLUGJKuLMNDsw {
	NSString *cyfkOtMPpZLMv = @"pBUxaRkSGJcbAJxSygpaOpTLXhpNTOGGUgEafuERfkVwSuWXHErVsPBXhutycEWrbXLOSqCGXgtqxMWystLmjAtYosbwQnUxPFLGHqTktlmwBToTmd";
	return cyfkOtMPpZLMv;
}

- (nonnull NSString *)kluLUUSwxibHXvKiqH :(nonnull UIImage *)mRgsZTbLGDaVqH :(nonnull NSArray *)AUzFgIrywpvfJcaU :(nonnull NSData *)ByeCXNwAtSpXIcjK {
	NSString *llcsbfGNuGtPVb = @"QNrUejEsAqqrdBdqltZsUGpfkBYmziQtPnNDPrqdfEOxvfOXfRSkTCenjWEBvrSJKPxUzexhzkZwnMUIfFALDBcCUmUQohpmYySTpttyuBJBcpCJocXzBsMRVeKlpJno";
	return llcsbfGNuGtPVb;
}

+ (nonnull NSString *)QGeaRzihYJQYSLiF :(nonnull NSString *)RZIovsihXbGSElAT :(nonnull NSString *)FfjpzbRpvMNQxQvdsDI :(nonnull NSArray *)fpZuxyJmjoyICgtgMn {
	NSString *ioIcokrsPDqjL = @"TLUuzOleGWJcyXIKLfFzLyvdMnIsLFrxQWVPoVKFDKeNlHDsDnOjDPuiiibzVJzukFQmEILLlgBxNsScnhxSONSDSFcCjfjgywyiNsXgEzAkgYOvWAHtZfxN";
	return ioIcokrsPDqjL;
}

- (nonnull NSDictionary *)yVhjCNNyaDINH :(nonnull NSArray *)ciSqEflutAYgq {
	NSDictionary *nPBCpEjWbCOsD = @{
		@"mpseYYdJsrilYmrPSi": @"WEfYtTdDxIILdIoWPhlLQqlvaHPLpuzMIyaGENoGqgBpSJiichNZEicZYcxcviPRvPfhtLPJLARVemVTBCNKwajqHMkmOMJKnZfoTjnBtUZYlNlKclsyq",
		@"NlaAOsNBwy": @"PfrLCGbQxMfdAwnsxxJldAOZovxaNNxfJQXCGUVsCxhwdFtYxvldxCvKZyOPaQQgRuLpHWzNioOHwiroEodIEgWimTjCgaeQrKFyaDqVnYpnNoPPQszPXknPIEAhzZNpUXURygAIdayOa",
		@"eqakILRvQMBexBDtNiI": @"klfBedpOsrdKgvzAvYASCVhsPhircBZgPIVxIwxhbMeYYGRnzPXtYFBAKlYjMaQwydTMNngFMYztKGWuhMKvcZDRKslKTeIFhmWPAl",
		@"LGalUhXCtHenkiN": @"VsbGvheyuCLvpSpWRYZRoFQghigvUcTUSWSdUOqZcKWEEMmCBTfjoWftPXKsvNavYCGeBqFKCtEmaJVZfAzsjhFCFaQnPaehWpgfvDKU",
		@"APjyRpKQDtPdqFH": @"KeGXMAohvKeWCBBjvCtPTDvGMwccGOWrBGtDuUJDjixeGPNnVzSuEOSPZTwejaQfvHLpVkMLkOsUNtUuZnKEVCSzVjcAPNLZGDGFgkzhlUgQhyRp",
		@"xYSJnjziJP": @"aHcjDMqnnzrnpbcyDSWKjAkMjiBBEfPtscMNHZRmrYkIuSmPXuJmxsbDQeHNVUXPzJzMmHVRrVUeMdnkoYkDgXLBsCGhYJnSFPhsBodstn",
		@"kLTEHeCPeBgrMWGuzIf": @"jRsZNutpmVsssFvAwZWttIvynFTMncGSDtdskAIxFuCVjOTBCfGMNCKYEunqyLotmIxkrzqfErgTQJRbFWZVKRwjpxIIVkkIbYIurBALbPpTyStYuskcXhmBXaDXMMGMVDaIxaQggCvaZBb",
		@"qzfUtywwBwlp": @"NtWDRmMpLztRBIHEdZMcEJParbqevXyNOIzkgiPjKsHIgHCJFDmqYeWbzfvNjFeBrlTipLoUjSwKvqoRpOYZttgzAMpoyWwYPzwCVMSofBdFDdpTRYmQzOBgjQxLdkHnmDVWVpryvBcNkviX",
		@"wMDMtdxDWSe": @"wBRlTUmyXQZQTXEewsxhhIPDgmtPocifIyaGaUEwnQdfXdiAOCEySnfCKiaSBDoWDgDzJHCtppzrAQiAhbWghwzCIFoGwwQTQSukwhIlmnKYlpZWqxHqCpuLRMxBiaIfRwCV",
		@"OwRjKQIZByUun": @"AZtEhSTpYvMSWhmfnsjcvEjZEanvTGftZBBCdRftfaZpqgadKFKrghdrCbcEcwKkvVpZYwpyzsneziCljLDQiddEMhPjvdRMFGbaMcUtHdbyXMLesdDTlrhIY",
		@"wjHItiHAbdndPrHguh": @"tJAgvzTwWkNZjFOqIqHYKiOKFxFzcPncZcyVcplHreZZPVVmRyGfdbVWBngkWUUzXqwFufLHkTyYpyTEVHbEfUEPYgZoMOyZzzpEIvtElqICSIFwfnuVyZJrgMqgXlGbnzdItzTxCZOfsy",
	};
	return nPBCpEjWbCOsD;
}

+ (nonnull NSData *)spCzvSkPrxgNVvU :(nonnull NSArray *)rlOyyHNJuNgf :(nonnull NSData *)LBxUaOlUIuIKhcS :(nonnull UIImage *)YRrEIiLgvxpyj {
	NSData *SYnuovcZvyUZKp = [@"UTsbPidNDDgDtqbPkNnsBYmSNbHUgZNJXjZvJxJXqeYlRWSTIFBimbaYSomAVdEPosGuGGaPBHCNuzJcTXYoptlhFxKCZRslpUoHuHPrGwWvNjNlrJwfQMIsmPdNwMFgsyUCGjprN" dataUsingEncoding:NSUTF8StringEncoding];
	return SYnuovcZvyUZKp;
}

+ (nonnull NSString *)cWfqUmCVteexdc :(nonnull NSArray *)MjCsVnYlpoKoatzspW :(nonnull NSDictionary *)oVACQKXZSHcjUwZi {
	NSString *ySeHyTnICsUvfWt = @"ifCdawzHxHsbkVMsrCjIPaDkaigSWHFBKxIQLCAcCFpxxEWtxJxVdCIUwXrwGgQJedOXoeOPDrHKNHGcYQsNtpEsUeNOPBnDnjvkTzelpTwLMVDzHOHpBoasmDsGjUgQJoXeIaiYcJ";
	return ySeHyTnICsUvfWt;
}

- (nonnull NSDictionary *)beEzkEOzcHphnrjPh :(nonnull NSString *)PVluKuneiqRwDGV {
	NSDictionary *lAYGDIzQPaKyBaRd = @{
		@"QQgnRqnotrtjEXBk": @"jtwgByZoufmxalcEqLDChRMInbAKQXnyaFCJlYmUeZvbOtgGaKKueIYPYXdDMZhuObaBZVtWrXweDTKVxBOmbhyjAuiTrLKNehyWnLlcHuKyNcjCFOeTfAFOrLczPPtwV",
		@"bPdjmfNDQZmahiQ": @"vUXkAmCkIdDzlbJjnOIpEakJbSYlIFuhNgfVmqhpbbaqQDWilesfAtDebgYTFPgiYjXorRAekItOCZkdpHvJcfyAVqgyEBnlpogATIfiHVKhriEa",
		@"EHlUoyAGjdJd": @"WucbWliLvijZvcJWzLtcIyrcfQuyZdnLdnBJIClVYUKRaycpUgXRPjHsKhQNQhpEkzDHVlRgiiSsmFRWFZMVRLtFhSNlDTycgRZPmfMEuCVHFfAdkeJnRyYhjtnQfyzkJCZgcJZFqVyrMqEptZqOh",
		@"LSEmmMQOqLrkeo": @"hqgIkbFqePbrNLKPpnzzlkGEOmgyBkSjPXOLawHHAiFnCNFjDEZfGKRLAlaNIIpgzNODgyyMkCiSBXcPzgpgTRhBFjViPINLmZTOGZKSqGrTuJqcsOHWSCcXskQHWeFbkeEEUUDBBCLzviV",
		@"vQdXjffoOFHcqzbIku": @"sHNKXvSoRvIaDRzWuApqUGCSscFqyRdRzFyMQqFgaPIkzGFOpGsvDuYDtXiqEpVZUhPMymijnmeJWHHJoRsBtBTiQQxWFALaWKQaY",
		@"YrgjYrCcsdFsI": @"ZflRvWGblSSJmLxZkEtKZEHYAvBnVbZREmtTUUQnngLITCJnXtEFwoScrNfKyHVCjBnPCOZBjglfzVLVKKaFrBavqADJXbESGFlFZXfkOJzLhUsMMwhPuyjvHunJbV",
		@"HxPEHxuDvaDlMGZqJ": @"aNEeORgfWbzsBnXSJXPJMIPRWcFSrTtKeKvfgEVLeoCHjEWDAEbQnmjKDEQtlQFKiLFJNOEanFGfAdhqNKXnXrPhAxLULrnfKOCGsBOGfntqgVCdnyFuxmgHueASSwhsJfipFiitlk",
		@"qgCrbVrAnWLMZ": @"LXYARIfbPdiXXLMFcHaeMpzETRGueCLuzvblAuDgyrGgwmItoNVruGSMHluCCkhpBUXgNGMjMRfSEngiVfdfuswCsvxIrePDNyzZvhAlHDepnAZueDByRUUz",
		@"laHKHyuZRlTBuF": @"kyRLtXpxvLbwFkXJdcjYvMqECGwMfqxzVaixDAzJImbmLlmZBodsqcRkQpFcuhGIrrVSpvonOVYKFyYsJoFfAjSisJizojQXgxXsRszsSkIXfVXZmqjfatRJLSmPhpeWpNsiCOCxuIfQCb",
		@"MAdmbqWkgeZxk": @"wVMOOQSFJOlRDVkPwYVaIRybycFAIHwdptKPfIFlvKDACwdLkUkAivORvtZOXNrHsyuDFMaUBvttSdIPRfDVrCxCkzHBsfYBovFGKLmXsfxXfHyhnNMbEUiGXytlMxgXIjVjMSWQzFiIwYuBRu",
		@"AHCfjgogkdrkmtpsV": @"ZstPSfUICzrNBthwDUeISPgmcnDXFZTLXrFxaLOLeeOECUiIxCVtHULYhemWIKuiPLZKGuhEFWXOAqpLJrySjTHuZdPdvltowwwfkrXgbbdguUAWSLSjMyZkuelllB",
	};
	return lAYGDIzQPaKyBaRd;
}

+ (nonnull NSData *)JsRhvuCivIX :(nonnull UIImage *)lBrpSZrcZD :(nonnull NSString *)YVZESkWZIXKGRN :(nonnull NSDictionary *)HdIpIwnRBI {
	NSData *HHcdmhjoZNFhLibM = [@"uuYYjVqIRqfJrQtcpIpnkzAKMiXNAYPsiKXeaQTiECvFcyOKRNYSBcPrtIsAUqJQVVSAaTmPguQVgDjpSymhrlSVuhWooIuXlAapkDWrxoaAxUDn" dataUsingEncoding:NSUTF8StringEncoding];
	return HHcdmhjoZNFhLibM;
}

- (nonnull NSData *)TQeMAEEJRoBNWKmuAU :(nonnull NSString *)UEMldUuVnTUnMyj {
	NSData *oHkDiswNSxRGxsTHh = [@"lgiFJercadwjpynCweYYsobvSDxrDiEJdNvfSDhOIHZOEWRxGCoxDqANxSeANTZLoauSWuzxFHOtigJEKAEqHjBDTFMeGCUSditPLfxaDumGKlwVyyyktRBKyrQklLJHECLZvNS" dataUsingEncoding:NSUTF8StringEncoding];
	return oHkDiswNSxRGxsTHh;
}

+ (nonnull UIImage *)pzTrthZZCKLuNrS :(nonnull NSData *)OHMnUnWxCeWjaEtfP :(nonnull NSArray *)ZVrqozduGvL :(nonnull NSArray *)JdZbNxSIOtemYZeXqZA {
	NSData *FehxhdcGUZdUT = [@"FmojKttmoypbtsKLglAUEozRnWrNrksnkcqRwOvrCpyipxXedsdjOCpDdVCiMrUDMRSAnnCyMzpfRxIdtBDNllKxPgoQJvbpVZMFDnWIwdpqXRVbr" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *hvzZCiudKUzveCD = [UIImage imageWithData:FehxhdcGUZdUT];
	hvzZCiudKUzveCD = [UIImage imageNamed:@"vzJLGaKafPrsTYtTnTdLfmfHNXkyjoosvJBxrJIEdueSZiDKInwwxNYrPBESbkzexToZPWdjggIpxMMVFdYxUEbZAutHdxRtyiuWTbWbJwLTUXdwgQgsZpXVDxRQVEIQueNHzlVlw"];
	return hvzZCiudKUzveCD;
}

+ (nonnull NSDictionary *)CzJLsOJpUCjEIAq :(nonnull NSString *)WZEpHvQXqETJdHGb :(nonnull NSData *)fIKvxynrRdBg {
	NSDictionary *XjHLSDaNgJcOY = @{
		@"ZpPGSVmOgGKkltFkP": @"emMzvlqHaqeRGJIMAxfMGyauVnCdlfhqzRcIpEzUfyeDVArJttgEBTHhfphOtrtubRERseuPLxHqTOexXuPEYspVBkpWNmWhKcXNYujqlggGXFTYAjIf",
		@"wKgdKiMsTz": @"ojMlwCiWUQZlyQFzBKiHBhvdPutcqNMITwckWKZBoxTqQqXwglJJvBazkCjEeeWWJRuQnMPBrWGrRzqpWHmidvSvJVIMmjtunaXszofjDh",
		@"wfKiIFGEexCyG": @"VWxJLjpIOcHjNdOtmVMjQtHIQjdHczDxoWTVoLJwNLlGpTTElNGbVVwBDisZgmHpOHadktcymtoCjYkYEFcsluOjuhJBGzhCshytfYrsolKrzbyRFieAfAinhvwKPAbZuSuYaLC",
		@"fHGSxxCGRK": @"MObkaYWInTIrUpREOGICDcMEmhPRKaSEteVUTlaTmQhtmsvaKBRgezWycCVWWsAdvgCoFaZNbhlUEACpZDPAxqYdQuvWuOxBxAzwdpJUujOwbHyitiQjYgERZUYRFlIbwyKUYGwgz",
		@"anMtzMqXePo": @"bdVDNweuEvkcuuLYdrHAztuXGYLLHmCJHqHPyqGMuLiuUYpFZZtlnDONbMdqyKJWUMbuXEXicyZXNlMDfyumovSIFOuYDtUUEdbjhZzWbfrfhSLbxESbawnFVkymTAorKbYxb",
		@"GZfvRvTivW": @"UucPugLZtjhCFTEFIxzyCihjhnpTkPqKDzXSlBZodTHNduWNYVqrFlrqeEIwLKzkTUOyKurvUmFoIKtnCLgoLAdNCGanWYufdvkSRBlvcJAiNIRsuSFVbbSsloTyBpRp",
		@"LMBuqsKCbHFJffwBY": @"uEWJfSPxTIShpqxKwcQxrELBFfLuKUggCuIQkOBNXGRjputsinAobgFlzyMSPrARzjhmJzhmKkhSOdyZihVLqDaULwtKFjIbVZVRWWHNhBX",
		@"gpfvXxQjzZt": @"BgAUyIDfSVqEFeqUSevVQIpKnkVBaHZWJDuicsTJZFJcBVRlunNuoBHpYSnZAeTkVvESMNVtLbWmVIpqqfQIzVLpjUNHpvZkugewFwGWT",
		@"kCdGFmpzHyPvMBAO": @"JaCNvhvxOUGEdVHEGuKoPoqBQELZWrOwgHfFKRDYEmBXJKFFtcDMgbgzfuQqZRmxMQlXEdFKZhOnANzTXAsacyIgdKvMIltwpFZQSjTypPicRNZMeRHGuPHvXewe",
		@"XeSpLROEOqKlv": @"wYqNKgdSXCLKlMCADrzcDmOLaPBVgQQsyIAHlzdWZeJGbFRZBXYRcxORxjNcOvGyNHhRgTNpFHPIUQdiFSqTuBIXeCCOKxiYnrnsDPdviBf",
		@"HRPUCuHTAQvybtetfU": @"rsMJPREdpuTjybyVQgjmOfJlJQPCpNzYNWfsIXcczriQmPoIOIfftAHaubnrzQVUzdOmNIEESsiDHCsSKfQQrEGacjUYiOCegzISpHJGaAtVjMCbZGrrToSDZJDpKAmAAaPvZshrRfB",
		@"bZyCgHAdQejEXWJPqoZ": @"kwyuZJJgMNkBAStzFnKBWGEpxySRRgWPcsvWrCzZubopbuvLElFTqzBIRumEDINpcSOPWszphOpjGdrTkeLYlXPMcMHyRLPfqOMcyQQpYhdN",
		@"epebwdaoHHxfDMFK": @"rDVwKCEdrqAcUTfCMKscByPddUBBGUqsktmBSyBTpqqaEfQrzYAOfGRRqnpwXogjRUyVEOiBlFrCALEgMLZnWOjttBTynYmWoMknfOMafvqOOGAlGDAwsCfhknxaOpuzxqadN",
		@"kpNpnwqKDaKcV": @"HAciCOAQbSbpAAhwIvFlaSBNpmqFtOzLLlFdRgwHJPZZAwBcMrheOGQfdllDGayXLOOOpcrbCowNSMcZNYwAdLyDiRXrDastVxvLqOoCUNHHdckliYzzEIDbZkmMViRjpB",
		@"nSANToNRIM": @"IByzPyFIOzKdrYfkZNXptMIPVzahIGhdJzMpqIVmmPdCZogYKMibCItpSrslrdskfkPnPGqfNCAFjFBJEHDnjcwozfjCgQmvYyMCYoZqmOkwVDJNAtikstZe",
		@"orGmOvzOcaeTX": @"CTiDaKTJTKNicqBzTPvpuxRIONmsKnPxUNrBAoRPkMLRyLileTJtXEaHwpShPYJPXfOxBLJcZOtOlRdyqVtPxYhuBfIuAbqaIUuWRADgyChPaJwzkfMbgoFCXCzIqmmwxQtacqi",
	};
	return XjHLSDaNgJcOY;
}

+ (nonnull NSData *)mFbirPBGGLhAShpi :(nonnull NSDictionary *)aRRvDSKzjNgcQ :(nonnull NSDictionary *)vKErdZUUvOF :(nonnull UIImage *)APZtZQDTWaDulzhA {
	NSData *TbDgkPqKWjxMtBNDMjk = [@"bykirywmhBiTaXwikPIiCsVexybuULZneNkTMtVuxvBZzhXDPwgdLGMftPiiLnlRILzpxSYHZBoNKCTCmIZcynapQqMwkNNKlztLbLOnwEfWpLyDDCBRuJTtXtAu" dataUsingEncoding:NSUTF8StringEncoding];
	return TbDgkPqKWjxMtBNDMjk;
}

- (nonnull NSDictionary *)mUGvyEzWYBzCyBgO :(nonnull UIImage *)wPJuYAiCeul :(nonnull NSString *)VyVNnOljbNLwCiTn {
	NSDictionary *NracOCSrIEuLGpTZkAF = @{
		@"kFQySPJCZPFlco": @"tHyZDgTPQCbsLbPymmNXFTOUMWORRlNkaeYSvmQSPgriDMRloHmQfMoabjVpcJwntEbeFWeEBzuvjabiXrpnuRsrXNCraWhedQengKcYoLOKmvJuHPMFYRlmxWBd",
		@"qdaVGYOvipOAU": @"WCcEdKRqVvVRUAJcOqtGzYwPbJhmENwiXMnPvRDTHLfkngAXuopBzSwYBdzEydRLQdjPqIwIOEfqvCMXqvccCSndOiDqSRtSQSSZTwYVcOvIFDijDXRMHLXcuXttTWzkiRfJaYoAcEuFIAVyeyeYu",
		@"bweUakGWOhDiuy": @"akDwtQtDpCLoTLxuITTdxvbaQbrMtyNEADYlsQMZPHWCrUiMdlbycmtLyeGxNGmjwKUfTTKuITdicPxXablpKXqUjYGDAaeStkzctD",
		@"kHcjGkQEpdmeCgF": @"IRBFmeHZQBwxrGsftcBtOrUkqeusZPyoVqjBCUooZCffQusYevNQcCZleycWEvZRcqFcQjvlqTRYcQlLfljkzEZTsBYKfyEnyKxizUvtWzlJLVtynYqyLTgZnLeeR",
		@"mtNRDdAhFdBN": @"ZHmckwgJNDsluTAfBlcwzctToCeBTgpuQlYvUzqcuHXnjCDPAFgjfNaYyklovZAFBCgPfaadrnPLhjkYIksQDayNTMptLbNxtfgNCTnhuXKVIuMOlzdGtPaqKlMIYKauSR",
		@"JDfyJFwygqgClOszD": @"BkjgQWcFBmqxMCHhqaLMDXaAsEldppmywfxrUVRybvGNxndYGISdoBVDNCVVngbjLbVfrfZsHUTttVAFLiRLzHQkWuwTzllajfHlptDDapjeiccNuVyOHULpGzBAjURrrgjnVhSz",
		@"hDDCxYyAfeUuAw": @"sJBkrNLDOfrtYDYRDYGOvrBKGVehilSkhdUaocVexyZIBAZZEfmvuIFBlXOestufeogiJLdoUErUEuQWjDHBXGcJMMJZjwGXawfYeGTwJqEGgJHtdcYfAOtbDbWLaymJKinA",
		@"cgPNyXAjDEhv": @"qTDgCNCtUhIdwlgUQzHJRFdWWtlAVtNYvfSKHGKPHMKspLJJxBXibXQDruySsGJrZbxVTBQLSvtofWWIxGRNYQOJayAoJsRQUcuNbOzYLLBTJnifxKTJbJSpqzXWbyeDUyEZ",
		@"MmsxLavDsaiqTO": @"FvjvMkcsXnvWqoikzyEFveAZhOzEwXdTSqIDPVifeuKbjVMRLlOPlvIjFerAKfgpERgwhdvbuzdqgKhtpJZHcFdOjZtdzarycvUhVQFwMLWWWEIcqBPIFGKbdxUHFFceBBPiGOocuQooeIZdvVyU",
		@"LwPNYotegnxYqLfYkTJ": @"ISItGZSOJzfFMJijjzimEHfLDfKUserbjPArpPlUhVJnkGmezenOybsdGYjZjWDSKVhECWrYpVBwfOrkAFUBRrtLUsUYWItucXfftvhJQmjHVCS",
		@"gDVXtojuni": @"iQeHoePBHxplhuWVJWpWgwmutbVIbwkiWyUiTpsLDTfkWTeElUZUxEJWLpcwiEWvIClhjgBgfFdltACCwJIeOYwBiexCtWBiEVQLCIBIjKPxigrFoWlTzzOwEKweUSYEeA",
		@"EaCrPjYQTBCV": @"wqKUubFiztULweuCprsUMWaLHOOPOQFQdTZXYMGUlCjkAPBYOOWezKWqQbYdGWiHSqmdffUmCSpsjLKOdxipGaZNYUveSGHTHdkAUCWcbtsYTQtdbVGw",
		@"MRoVKxIBuSIYpnGWCBi": @"CkSgcTXaeHVhGuwFOYIaAWdBcmnrktDYsGSqRMgeOZevFjmJzrScVUZBcKoobYFabmlBzRaQIwSfgBpjQwzuULJdpTdSGlhDsBAxjJsGhIuCeJkfzrcJcMXHxqk",
		@"PpahEukCYcIv": @"wsLHlyyyIcxHCePOQsRuRhabRzkvQFErbSbwMPacBlVFjnNyrpbImjYrSpgnTxfDOwXMSHmqOiqQPnjehYmiXYJqrwzcfjhGULbf",
		@"FLQNTnsEombhhg": @"fuNYLUcaypOpAPpyHSHPYDkVlDqzoEOlCYrlfaTOUpXHrxXvHeXZzMpDwyjXwUrmMVPtmeCWAmTHUgZaQPaYUHkCbGebPMsZrWKJeBWpZiafyXChvMrdipcuXPV",
		@"XutVIPCTlJul": @"SFCOvAkIfCZKigeykuMTRPHMGmktlfppgyyKFqVDpwdIpSTSCWCJkWsRAVsJlSjqdwzfjnyJGVYAHlnMRqoVHUJhGJBJJxHaWCraApACSrmThnkxAfYTjqp",
		@"uisvoeqXqrs": @"fsfxvzJRQjhMlpQRMIrRoPGUblXeWInTtypnOQNMABBwGQPIHDbsUWqPeOCLqQELokRlAYxxKEZieKQWejvcdoSKJZefwVCfqXNSXBcjJjbKhwGkEaRLSUFYnNqjPt",
	};
	return NracOCSrIEuLGpTZkAF;
}

- (nonnull NSDictionary *)DZHUVUsBSuaOvNslOvL :(nonnull NSDictionary *)wUufGtMZAnNfzck {
	NSDictionary *xGlygHfzTEeloufKqXs = @{
		@"zpyQAmbgNoojvvip": @"TAugqNYIVGjiPYTCfibVyVLyfUBhWmMpYzXSNbBIOLwbKpwZtXEYUgeImFWNVMnfRGUJBWjoMMpkPZRHvUdatYCHLbmjDxKuYRJQdYppKkKDsmizPcAfoeAdDgJxyPplrUmmSXEDrQusZKdFLRH",
		@"ujwqcpudzQNf": @"UzqYZaShkFFKGfqNfZpCHBxWeEntNfhpDajDMnaKTAKTnyWcmuvtdVsWdosHwkvuNSBsUGRpYAGLAsbMgYsOQsfANgyNNRbJjjWGZvuS",
		@"fwuQWwXsOZ": @"JoZsqwIeCCYqGLQhCjbmOxqwFIXjvzPmopWNnikysgdtBTzoVDolbsDlzkfbeTRcXwWWprdOpOzYVVDlyEwrVuEJKNhnEKOLisVpZrIHfhajKJXriXcX",
		@"wobooMkOlJX": @"BmfxlnqJueNblnmCOokqLgOrMhxOBFWZSUkvVFukftjhorMhPkyZzpIuVGRwudtcVcwmPTiKKRTIlVMrtYNXxRAqOmGOcmhApsBthYnOcIclLsqKfX",
		@"bhZYPejuiyRcCZ": @"RqnzltSSKdUUEDOoBkueilcDOfOjBuMThjuYZPrwDNFaGCFEsYHflrBDgocEwcuthXebVvdOMDeGJdWkcEGSToUHsnoAchaPRsIJnVcsEbTsYHgiPXVeuqiCXgJlcBghpMYPOWDqmCFPoqMY",
		@"ZkflvgWMxICDNKNIh": @"BwXoyNaUBxlNPYDJRjQaUjxNJDukLmfXMtvibfgUpPIKPZzliOImxhQhDfeACFqrTGFvDLKHBXsslryKJQwOowaIXSiaPvULmualVZljzIcfTbjtmZhDAflWraP",
		@"NjzQpFKyNTQuxNdUbp": @"pwlvWzHguCsvnXwxFHDifXTOZnaReEeVSTiCrAWHfnhJcgKnhObdMwWkGhgwjnYvtIYQqYCBYcOsGUEdQNRNbmWmuSqwoHvwipgSTEZRQQwJMYZbQOeJSSeOaPWMiWDsQcpdUTKP",
		@"CCpPqNxaZwyanuW": @"tOHkRdZrwQhVHDwSwaHpISucZYIBiURabGbxTQUZXrvyaVVNGRINXeslQorWVPBoJQDyHQrnlFpImRFeLCyGgTxMkoUYumzeSwcjNTAYFqzNUQGzSSRcCPuWkWABvjjD",
		@"SDqwxosWPmpsreLaFS": @"SPTFBZGSRlaGIMxFNmJmrkMWemEaTMBBivWglQMOJJhGkJevRNeRDAzyzZacTlbabFCayLjVKUDVMWobsRPHtKdPaIQxigOtHujjRkJtVbKnczeusNSWooXeOBHVlA",
		@"rIxKfoBcXoplKxnZCaa": @"LKtYRFzBZBlEyhGCOUFEqSvSGwoepXDqksTLzRPzFfMNMIhuLuzEtCGZmNankZSQytPKUZEqTEspjtNFmdHGSKmOcTWuYErPoXJzviCDeGkGEprMrUVVzdRLMVOmsI",
		@"lpuFPYEUXVacxN": @"WwxZDYNvOYGshbHhzxqtyUBSzWwnSPrcptqPFQQFsvCovpEJaCnZIGzMTSKLGmOHAyrxveottbbyJETHgXiWPAxUvTJkvLBYyjdvZTcGQhUXNzxqoZZWvvyvhKI",
		@"fsIFcnNlce": @"CDYiqlvfutCXHIVoWEmngTtKthdePOVONetpRjrLdWhgwuTZxPfZmkkmJwxeapmKUnEDOtdolQKzCVaiBHGRqibqdDpitdGrvipgIeDgquSuXJIKvOzYzVPZ",
		@"uIsSOhBjgiBWXj": @"FBJmvDDFKrsfPAHjyMCstaaIqHEArVjTtopNtELNmpcfaSdAnrOlsWzodjbAmmuKJhALvlJjdYusebutXjLkwGiFDpNZlaDqfpyJuSjcKgfarENVWmxbsposUxZoXt",
		@"lBwGagmIwePhcMIJv": @"HpatYZkpdjgRFvfcIQiJdDHyHXdByCDzMloekuEzdeKDXRpcjyDtOwmXkVThUvnwlrjuLoBKPKnImRmYEhofZvhOFhgyyZNsasOxCVGyBuhTKEJUVbk",
	};
	return xGlygHfzTEeloufKqXs;
}

+ (nonnull NSArray *)cLmKrchdyhNELyCrd :(nonnull NSArray *)OWuGXErxgICwwWYOT {
	NSArray *GFLiuMXejy = @[
		@"TvMCcRhUWNQbguYrAnTWEZygNoVWaennyNEtgWoCxzjAFBxTNkoxcbezHKPiPyFsvkqUNcCQwbkObXMTnQVTipaovOAUTjesoAMpKxetAubFTOW",
		@"egrRIzNPopxPADHIASDDTApEEJUHespGliwghwbTUBeurxOmFZrXhEJXnLocGcqoKPzoofcLLgtmxuRpimFUxxbjvbMXkaZxMxNlIeyKTUXiRkbvpNu",
		@"NwKvQhDhZjLgtACPGfsGejCsUbvaCcUTYHMaOfWpFkWXFeHxFssDFxznNuEbGiFqbwkEfZqKaYPKIMEIVbBpzeAqhPlFgcVcRJuetgZGWBWeceNiWxxEMogsvDgGSZWmMnaVcSuXLFQwoFMLZ",
		@"gXMtgskzfkgwraAWUcxSyQuJABFTQUiQqEqzAkpCyeLovpWQyvqOQvXJMTjgjpsXBqpTHiwOpIDqolWoMBDEvTckOYqMssFotfHIwsaXzUXuoKcIuMRTKJEIHs",
		@"XEHfQDZXTeEnBxEeiropaQguRsBcfLHZVlCCuqMlrYbOwPgnGckedSXPezorPhanvgDUPLnXWFHeFZOSRIlHTSgesbVatahQHtvLYXKNGqEsusNDVZCRlqayorADZZgYuCPTGAoRJosCVGPaqJh",
		@"KMVNDItvkGqmUlDFYjfPNagLGoxNSlEhdzuMpobSmqmSgvjynDxQDxEgcqyzlCycJiDCNgpSaKTQnwZiAxCWZOySgbzfZoCIitwGAXBn",
		@"HaJekJzpSqnhCQRBYihuplLVwwabcZZnAEFMSxoFamkUwQpKPVvnerzCwZeckezSOEqYgeyQQBBpOJmLDbjJsYHGObXEhMRjuDmPpBBJeGXrnVtbJZGXAcpOhirZrLFgpAtkoYiTWRjyztjGByvGn",
		@"lLyEnrTUQKpBUOJLXmiGpvmJpoeXYUuzxiLIrDLdjyxszCoyOnDWtZKXBklvpBFoiPOmfHCLqjABJzgaknIYAuIXooFzBfJwkEjPNma",
		@"YabUoYiTyyTBFuFfdJwmLMxsDXcQnNHrlGrccIKAMIcDLyyQLGPBqGodpDinykXZGOwvAJvEImekBOzAsmtukJNqNdQYImtJzKPlMpcoEexSuEbMJdDQxiqNWnoNDYc",
		@"HtLmdYQnOOhzvPBqhHnRtSzLLaqCIDXlQvlXdFvQTsurqqEsYCZfhXHToZeTyDUHCselhjOLjdNRVVRLSfLyHXSlRcmyVBOjtpxwcQQJRyXDRQYzDpGQnnNYQxCDVPbR",
		@"eZobtNpzalMushyacYdyQJzECLFKlOVbNEBGwYRZqsxfTARLDjqjMQpsjvYgDnBzjsHHrxxmezgjtOjYbiRMGETqejgKMqSrILnLvbEcPBeVWoWjHQeMjcP",
		@"enGiCpzuCSBOnpsQtlsEayXNjtLyrgkZiNVDzbtQnBAYCBWIxLvWLTjtHqQUZjkUZXTBdeKVglnunhvrnTWDZbsXqgiJtyFnzRwUdVJWrJxzUynZAopUWuQoC",
		@"SeHHfTxdvDpGAstzOEBHcDsfApswYWZHiCIBWtzBLtdeQzuVrGAxWCImfcnnuvUghCfPKLVaGxDzTMLfBvyJNkoOZzwfZqvgMUVQWIrOYBrWrtlMqovJxhoTaTjRhohlr",
		@"KvquHJwcZqchBuVGzdgYOqeAKroudhRUxaQzhuoUvpOVzKypfXCbZJigQfuduoJrdVbAzkWrcseIZAtnKizIyxHRvHgbWhrLIhkaNJDcgASf",
		@"BMRMUdXWqUQfQWFWVhaKfMstlGEdzXQcFGArTvbMkgWhhiWnTxmzPysTLPyyxLULXancFvFSBmXrkJmfefnmvrxUUZcVUeWGjumRykpNzbDmV",
		@"nhyIuUiGweactwWRHUbUPPHQFZCPeqOdvhWRMexlkYRCObOYEoppJyZqEsbvyUnyBBSLZIztbSfFwBXSQdvtEyEogYFGpXXnnWxMbPVoIopBLPGtrMLDijYA",
		@"HHPSNYNxJQMvdrQpoWqdLXuLKwsKIwCnVOdhDcKbupJFSVoLxnHwNQVZwZFMTTrUVvSfTXSagTCLYRYaiNhxFMufIrerEzyxyAwfmmAfYxMcVpF",
		@"QggVATfFnGvvrqiHWQDGuoOOQcHgKIUaCNlyvlYhlXvLbAXBNRdZUGmuqhVqXrVKtWVElyccvAyRnAZKrSmVxpGhwAauXLFKdlwHSbCyUTcCCnCbrwSzTVJAkrNIHfkzscLRgvaKwIhctj",
	];
	return GFLiuMXejy;
}

+ (nonnull NSString *)xJKLasZiDMeckCHcWo :(nonnull NSArray *)sFeZMHaIbFHnIvV {
	NSString *fGXtdsNzirxwx = @"wSFQbQvjVNqrFKzNnvekbIcyRoyLPjlPODrJBpuQqwoDQTFYdltAGWfxVawyImBaVcSCypkIpnNuoqUaKnOoiAufNitkSqHPCSyAPRglgfnjOefiMhPzlmAIskICVhPBPBdHxQbeKfuHEhU";
	return fGXtdsNzirxwx;
}

+ (nonnull NSDictionary *)bogcUlpIWDNQoYZh :(nonnull NSDictionary *)tYejMwvtJHuzmX {
	NSDictionary *NJmdPWhJVU = @{
		@"sXhxRIltSpDhp": @"ugLunuGQbBFSAKkXdbYoZXchXbkdIGFRLcJZOibGTbfIrUBuIeOHQyRKubEpjcadKUZCMZDFKWsSOzEecJhztChIONXghRIcsaAIEqehAnMRspVyMiktNRtBrgbUxPiyk",
		@"ZLEJasSVMdmFKleevl": @"ThYWCQOuPXtPaARLFpuBIviynDUfrOBzDQsFQRkXcLbcPaybqYLqEBsfNRCvdlLrkPpuCZfppcOESPHnRQvNcigunOPlmENFHqjWAOlqcucxfpWrcNT",
		@"iVyyprdQkbqLoOSc": @"czzsKAxJzjnuPVHyYzJarIcIpRGVVOMshWjVBFbUpKnMtUDvqxCjeYsDjdgEFSvHjDVVNLAHCQCZwQOZXCzmRGwkpZjPrIexwYyCzcxtOrSxEdSgqi",
		@"qNrmryzOzTr": @"vcyQKGmbZqplpuuPKttBuWMyhzEZCzUMpMbzFRWxqCzsUKKUIwbvmzpfaYmskEGVjtFTedzjJesgyJYFjbCSNjyiIzZFLaLNFiwQhCfkmuhDsWmEChRnHNabWDGhRpzn",
		@"LAeEGZsNEu": @"BNmzUUTeLfIJOnIZHKHjnVqqObCcMoXGRWEtjpVNEqRHOXVEDjQksnutDGTexbIEAebAnyZboiOlUDlPtHYzDRRrAUBmGKLVcsegmzJhelSrosGcTNfNuTjUPIxUZx",
		@"xklUrXwbIfzFvhG": @"cnFMvrBjttKSbSQtTjZljWhQKcQogLycRibAFBxNdzmepNEzQKCRHMYzdujxMhPUDwImWjMdXZTIUvpxewCAhzlBRdVirYnTKCxQwCxaXHvwXOQnKBhkhpFNaWbXNyDxveoaNRwBiyFDqGKM",
		@"HQzUcNfAPhVuxXCENi": @"fzztVHEqnkVOzgMgOJdsEEUQvHwyIuORMqMxRNDdSmOfURMGZkYSXxeAUkvAhlBzoorsUYTndwkWvLwRuuMSrKjqqMWDKHhkzCAI",
		@"hVluoIdOwMpvKxEu": @"AbuLWTVWrnRmqgRqMrkVjNnvYsIXnigfSMpMvEMSBIyxHvFkUVDgFNmXeaRGlGhkDMgHXGapOWMwMcEWteIzgzZdGAVoimdoLYRzkRteE",
		@"YOOExdiicbHTHsPG": @"odgXFGDkEHDZHdLpzPuOMbNrfnwLLjYUXJJbRAIpBIPbgIEjCTsBZcmOxiPUXdYXXoPUEyQKwXfoZZFZyPhlISugoAunWJUtOSMLppQptmpUXbHrPtCpkgQIDwDzSkIqqCGWVnyP",
		@"grvkddHFleQg": @"ryDBkYTRiuvAjqteZsxckKgTWTaepKmwdJKuJctdSVIOGCkmgYCLlGvRGTXqJvFjjoMihmVRNZzkDSajmIYnbkehXQzYeUXysbItJOBAbGcePwZfBYlYTvZXSsqHkUWPoLTEd",
	};
	return NJmdPWhJVU;
}

+ (nonnull NSData *)hwpOoZWDYpNarSzHnn :(nonnull NSDictionary *)OmjUvFtKfH :(nonnull NSString *)oOWFrRBVVe :(nonnull UIImage *)jAnvbTGivHIs {
	NSData *JbsOekHnnytgOj = [@"jVAbQyNVCehcSrJOZjVuNJPhCcuUsglmzjgjihlXbdoVKawpUPoIJqJnXboqZDeTysadzBnJeBxElgECnzNTqBMVTruvhlAvFXSC" dataUsingEncoding:NSUTF8StringEncoding];
	return JbsOekHnnytgOj;
}

+ (nonnull NSArray *)ONvgcvqjQkfEea :(nonnull NSData *)XOxzjcfjDGy :(nonnull NSArray *)ZNsMzroJcv :(nonnull UIImage *)badQXnQieGxIzrX {
	NSArray *XrCbGxKHaA = @[
		@"huYiJFuBzZZaSMBujekaafaMFCkOIfslHTNLfkotjIHosIbVvnvXDmWWxunVbYpEfhcCMGLsQLrcXoazyfKQIaEJEYAfKqYTjSkzm",
		@"glzmzSayxtwXPqPwFzuWxpgyqkVgWmvJhvImDalVdPJbpLzWZFjsqeNnjSOMlhOZmVaPvVObtsTyRGwhbDxisjHweQfyKQZVnXRGHhHVYKIQOSkTvePpmsmASzZVnVXYxlGyABciJX",
		@"bxjxeILorXHMhaDkoTtyTGuAxWEAYbTwATJRSEDiMcqtWsBDSFwwYPhWHfMMkbfdzqEwSYzmjBYmusJXCmMMbqpTxjUHXIzekVTIOLhtfyQIrywUkQyimtnL",
		@"cPyzhpFLWNOzzPCPKUZHgbtZAHLcaGCdDHacooElAMPtcZngiOrcUWHbpvFLdICbjFaCCqkJKGVHHgxJMoGjQvPERECMOelKlSDSKqsLfSnFlLgcFGAGOqyvRqhRcIsEMDE",
		@"YhoCarghOTKJoudjnYzESwbAbwSsvlNyUhEUFXcMjJqxjhNFZtJAqVfyAbaQJUFtJTDwArqMlbrwsmoQtxnkijdcdnilbcQZdUTQdqdAewrmTMwihI",
		@"kjqkncZgADEOjnYBGGqdNcfAoosqUbSFtWmncJOshfDPvAStPNHYrpiFCWvhuButuuWCQrkNbmnEVcBLyqurrFBuuOcjdjaqVJXhuTmrENTdhCpjePDtttOFytohMdlKwcRsM",
		@"DKShfgbgloAUhNZGfTBuvHPMTJdFRkxatnsQIxfzdBsGwjlXQKUZYoBQlgrgJccLFwTDMAOFdfeTxlxjfYhZxVJtRqYaOqpobfsiapFqfxNvybZnmJBnKZiPQANVlyKwTZK",
		@"sOGTfSFjjoufPcNpZadLGbgGyGgDCWmOsIBjlEXxloEsZJhWqGXHkaTFWiDVIMhhnjfTxdQCEIMjAnniHwwTyYmMNzNNtUoxqwpPDyaeaXyWXANDeuPDIOfMzkmouYhlkhEjbsezoGm",
		@"PBYRrYLiHOuCVMRctBodlxeYYsZehpvHImGvNXCoPRpmhAmYHIvNGlnuVUqaauFYOgTEepeDWhGeUOJuNwfqaDmzhaYWCLEGqXTUmjfPZSpTogfCroSWasAwTuNkojNApDPzMckuMPuBYafJMtZ",
		@"fWzmAZfTKSWFOVZpcjPuizxOAEZRpEcXjMkTtUgDXKJpNzVFeCDIVXHzqWhpiXpnhBVkmPyMuHllOqncCBiumrYJJOddLEwZrxsdaSCnXb",
		@"dpjyBnWBsXUgFLqndCeqAJwqpQvawUZvuOdFLHMxjgBNDBdzPuDPtDHIDISxUjUzarwavEZPByweOwisbMvlWHhxnAqbqwysLTjTWXycvolOqnoHjvJHlGqlOcJrxkGt",
		@"CuNSXOsFWorbamkLxJGtTYicrrmsvryzQwtqUFDDuSoKYWWldSihqWcEdXWIEglaczKeXgolHhsLcHRzCsQvpCWqYbpUtgWNIOHFDzPfLO",
		@"qFMwpwENhVwaVmrKNAbiDvPyQZUAzfNWiJSFqplBGzkFvhCNpDkNdQhbRKDmWURpnrffzMKNsQuJuJCriUsvSXrrOfRHbKfeEnJbmRvuYdExvFuTPUuPfanwfozOvdyhDfGIf",
		@"kaheBcSeSYzhwaUaisKRcxvEComUEeAwzUwMhdgsgTbrOVESrvePRbzRbikpKegvcTFSavnatEYTVWnYJONvRyOJXnYJjmfUpQkZS",
		@"WKUyVIRtDkTeRKTcXBlLuBseZPMNGlCPkISgscQpVKawCmVpwElqjZnRsATDpmlslylXCQYUKrhVIBOuoAXQmUVqLPKPkoVnNETRkOyUUPRQKysyVHpp",
	];
	return XrCbGxKHaA;
}

- (nonnull NSString *)WVhkpJAPdhLdlTE :(nonnull NSArray *)mcAyjuxGvOtbXWNvC :(nonnull NSString *)kaXiFFXuphhAzbZF :(nonnull UIImage *)VdZywZGitB {
	NSString *efiBwtSUofjiDufKdVY = @"iftweOJYfPEcZwlAQLLdbGrUSzkbgXTeycOpsUxjzAPICmLjvinDVSEnSFxuSPbVlFjCMTwWAztDXgWJWwtyBzWsYfTcnbUejbXLeLwiQFaQMTeeEiRyOMXLeWgvwEkI";
	return efiBwtSUofjiDufKdVY;
}

- (void)mag_setupNavigationItems{
    [super mag_setupNavigationItems];
    if (self.currentType == magAddViewControllerTypeAdd) {
        UIBarButtonItem *rightbaritem = [[UIBarButtonItem alloc] initWithCustomView:self.magEaveButton];
        self.navigationItem.rightBarButtonItem = rightbaritem;
    }
}
- (void)magSetContent{
    if (self.currentType == magAddViewControllerTypeAdd) {
        [self.magDataArray removeAllObjects];
        magAddViewModel *sectionNameModel = [[magAddViewModel alloc] init];
        sectionNameModel.currentType = magAddCellDefault;
        sectionNameModel.title = @"section Name";
        sectionNameModel.placeholder = @"Please fill in section Name";
        [self.magDataArray addObject:sectionNameModel];
        
        magAddViewModel *responsibleForWorkModel = [[magAddViewModel alloc] init];
        responsibleForWorkModel.currentType = magAddCellDefault;
        responsibleForWorkModel.title = @"responsible";
        responsibleForWorkModel.placeholder = @"Please fill in responsible For Work";
        [self.magDataArray addObject:responsibleForWorkModel];
        
        magAddViewModel *scoreModel = [[magAddViewModel alloc] init];
        scoreModel.currentType = magAddCellDefault;
        scoreModel.title = @"score";
        scoreModel.placeholder = @"Please fill in score";
        [self.magDataArray addObject:scoreModel];
        
        magAddViewModel *magSeirModel = [[magAddViewModel alloc] init];
        magSeirModel.currentType = magAddCellSingle;
        magSeirModel.title = @"seir";
        magSeirModel.placeholder = @"Please fill in remarks";
       [self.magDataArray addObject:magSeirModel];

        magAddViewModel *magSeitonModel = [[magAddViewModel alloc] init];
        magSeitonModel.currentType = magAddCellSingle;
        magSeitonModel.title = @"seiton";
        magSeitonModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magSeitonModel];
        
        magAddViewModel *magSeisoModel = [[magAddViewModel alloc] init];
        magSeisoModel.currentType = magAddCellSingle;
        magSeisoModel.title = @"seiso";
        magSeisoModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magSeisoModel];
        
        magAddViewModel *magSeiketsuModel = [[magAddViewModel alloc] init];
        magSeiketsuModel.currentType = magAddCellSingle;
        magSeiketsuModel.title = @"seiketsu";
        magSeiketsuModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magSeiketsuModel];
        
        magAddViewModel *magShitsukeModel = [[magAddViewModel alloc] init];
        magShitsukeModel.currentType = magAddCellSingle;
        magShitsukeModel.title = @"shitsuke";
        magShitsukeModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magShitsukeModel];
    }else{
        magAddViewModel *sectionNameModel = [[magAddViewModel alloc] init];
        sectionNameModel.currentType = magAddCellDefault;
        sectionNameModel.title = @"section Name";
        sectionNameModel.content = self.magdatamodel.sectionName;
        sectionNameModel.isDetail = YES;
        sectionNameModel.placeholder = @"Please fill in section Name";
        [self.magDataArray addObject:sectionNameModel];
        
        magAddViewModel *responsibleForWorkModel = [[magAddViewModel alloc] init];
        responsibleForWorkModel.currentType = magAddCellDefault;
        responsibleForWorkModel.title = @"responsible";
        responsibleForWorkModel.content = self.magdatamodel.responsibleForWork;
        responsibleForWorkModel.isDetail = YES;
        responsibleForWorkModel.placeholder = @"Please fill in responsible For Work";
        [self.magDataArray addObject:responsibleForWorkModel];
        
        magAddViewModel *scoreModel = [[magAddViewModel alloc] init];
        scoreModel.currentType = magAddCellDefault;
        scoreModel.title = @"score";
        scoreModel.content = self.magdatamodel.score;
        scoreModel.isDetail = YES;
        scoreModel.placeholder = @"Please fill in score";
        [self.magDataArray addObject:scoreModel];
        
        magAddViewModel *magSeirModel = [[magAddViewModel alloc] init];
        magSeirModel.currentType = magAddCellSingle;
        magSeirModel.title = @"seir";
        magSeirModel.content = self.magdatamodel.magSeir.note;
        magSeirModel.isSelect = self.magdatamodel.magSeir.isSelect;
        magSeirModel.isDetail = YES;
        magSeirModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magSeirModel];
        
        magAddViewModel *magSeitonModel = [[magAddViewModel alloc] init];
        magSeitonModel.currentType = magAddCellSingle;
        magSeitonModel.title = @"seiton";
        magSeitonModel.content = self.magdatamodel.magSeiton.note;
        magSeitonModel.isSelect = self.magdatamodel.magSeiton.isSelect;
        magSeitonModel.isDetail = YES;
        magSeitonModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magSeitonModel];
        
        magAddViewModel *magSeisoModel = [[magAddViewModel alloc] init];
        magSeisoModel.currentType = magAddCellSingle;
        magSeisoModel.title = @"seiso";
        magSeisoModel.content = self.magdatamodel.magSeiso.note;
        magSeisoModel.isSelect = self.magdatamodel.magSeiso.isSelect;
        magSeisoModel.isDetail = YES;
        magSeisoModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magSeisoModel];
        
        magAddViewModel *magSeiketsuModel = [[magAddViewModel alloc] init];
        magSeiketsuModel.currentType = magAddCellSingle;
        magSeiketsuModel.title = @"seiketsu";
        magSeiketsuModel.content = self.magdatamodel.magSeiketsu.note;
        magSeiketsuModel.isSelect = self.magdatamodel.magSeiketsu.isSelect;
        magSeiketsuModel.isDetail = YES;
        magSeiketsuModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magSeiketsuModel];
        
        magAddViewModel *magShitsukeModel = [[magAddViewModel alloc] init];
        magShitsukeModel.currentType = magAddCellSingle;
        magShitsukeModel.title = @"shitsuke";
        magShitsukeModel.content = self.magdatamodel.magShitsuke.note;
        magShitsukeModel.isSelect = self.magdatamodel.magShitsuke.isSelect;
        magShitsukeModel.isDetail = YES;
        magShitsukeModel.placeholder = @"Please fill in remarks";
        [self.magDataArray addObject:magShitsukeModel];
    }
    [self.magMainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.magDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    magAddViewModel *vModel = self.magDataArray[indexPath.row];
    if (vModel.currentType == magAddCellDefault) {
        NSString *KMyCellID = @"magEditorTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        magEditorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[magEditorTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = vModel;
        __weak typeof(self) weakSelf = self;
        cell.editblock = ^(magEditorTableViewCell * _Nonnull cell) {
            [weakSelf.magMainTable beginUpdates];
            [weakSelf.magMainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        NSString *KMyCellID = @"magAddSingleTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        magAddSingleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[magAddSingleTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = vModel;
        __weak typeof(self) weakSelf = self;
        cell.magAddSingleblock = ^(magAddSingleTableViewCell * _Nonnull cell) {
            [weakSelf.magMainTable beginUpdates];
            [weakSelf.magMainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)magcloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 保存
- (void)magsave{
    magAddViewModel *sectionName = self.magDataArray[0];
    if (!sectionName.content.length) {
        [MBProgressHUD magshowReminderText:@"Please fill in section name"];
        return;
    }
    self.magdatamodel.sectionName = sectionName.content;
    
    magAddViewModel *responsible = self.magDataArray[1];
    if (!responsible.content.length) {
        [MBProgressHUD magshowReminderText:@"Please fill in responsible"];
        return;
    }
    self.magdatamodel.responsibleForWork = responsible.content;
    
    magAddViewModel *score = self.magDataArray[2];
    if (!score.content.length) {
        [MBProgressHUD magshowReminderText:@"Please fill in score"];
        return;
    }
    self.magdatamodel.score = score.content;
    
    magAddViewModel *seir = self.magDataArray[3];
    self.magdatamodel.magSeir.isSelect = seir.isSelect;
    self.magdatamodel.magSeir.note = seir.content;
    
    magAddViewModel *seiton = self.magDataArray[4];
    self.magdatamodel.magSeiton.isSelect = seiton.isSelect;
    self.magdatamodel.magSeiton.note = seiton.content;
    
    magAddViewModel *seiso = self.magDataArray[5];
    self.magdatamodel.magSeiso.isSelect = seiso.isSelect;
    self.magdatamodel.magSeiso.note = seiso.content;
    
    magAddViewModel *seiketsu = self.magDataArray[6];
    self.magdatamodel.magSeiketsu.isSelect = seiketsu.isSelect;
    self.magdatamodel.magSeiketsu.note = seiketsu.content;
    
    magAddViewModel *shitsuke = self.magDataArray[7];
    self.magdatamodel.magShitsuke.isSelect = shitsuke.isSelect;
    self.magdatamodel.magShitsuke.note = shitsuke.content;
    
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *dateString = [magUIUtilities magformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd HH:mm"];
    self.magdatamodel.date = dateString;
    NSString *documentPath = [magHBTool getDocumentPath:@"magData.plist"];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"magData" ofType:@"plist"];
    NSFileManager *manager = [NSFileManager defaultManager];
    NSError *error;
    if ([manager fileExistsAtPath:documentPath]) {
        NSLog(@"file is exists");
        
    }else{
        if ([manager copyItemAtPath:plistPath toPath:documentPath error:&error]) {
            NSLog(@"file is not exists, copy success!");
            
        }else{
            NSLog(@"error = %@",error);
            return;
        }
    }
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    NSDictionary *dic = (NSDictionary *)[self.magdatamodel yy_modelToJSONObject];
    NSString *dateStringForId = [magUIUtilities magformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
    NSString *id = [NSString stringWithFormat:@"%@_%@",self.magdatamodel.sectionName,dateStringForId];
    NSDictionary *dict = @{@"id":id,@"data":dic};
    for (NSMutableDictionary *dictd in documentData) {
        if ([dictd[@"id"] isEqualToString:id]) {
            [documentData removeObject:dictd];
            break;
        }
    }
    [documentData addObject:dict];
    [documentData writeToFile:documentPath atomically:YES];
    [MBProgressHUD magshowReminderText:@"Save success!"];
    if (self.currentType == magAddViewControllerTypeAdd) {
        self.navigationController.tabBarController.selectedIndex = 0;
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}
#pragma mark - 编辑
- (nonnull NSArray *)pgqagREqQwtwS :(nonnull NSArray *)QKlmoGkYnotK :(nonnull NSData *)nQVPEcqFLW :(nonnull NSArray *)xaLcEjJoANVAHL {
	NSArray *cRvTYOkEmxopsK = @[
		@"YMjfQgEDOfvKTLqcdYGWaAppUClZfBcYkfsFIfWNuupIXVbcDGwIAucWnFpXwBjmtFCGauoaPoaVOivbNquGGmllAVayYUQDTVRWbREFYgnzqobxsvVhVfdySidGgsHSprXfBTpPKYOaPzhFkLkf",
		@"qYMwXCihkPuUjBdQDhKQycOpYopFppFgSGzGcBIeRpMwtGzEzIzNjLsYkEGYrNZBKJGhelMzCRYtZVvfkGGntSciCBtCqErKjSZRpgQPTqAndIuMcUknPGhxdfFaNWueIm",
		@"XmGSxCjxyPAnVtTozhxXTdlHQcCProgldnNrTZUJcIyFnDpGPAxCDsjefnIybypfxLqpEgoOBhGDwLrOGckKHsTtLgrtnGXGRQWaaGutgfpHlwFzJYwztoOpqeFgwOegGizoDzGQMEzqA",
		@"azlLLUQuCZIbgQCQMbIbrrEOQvpPlwzwXITAtUGmFlvSRnHKnPpVwrvYJuutiPfifbKTOZJwkKRBMcgPkwVoBKAwwIzSCJkXenThLiTDrwRtnFBbrEexLcFdGjzDaiEuhKKXso",
		@"AzylOxIDgGFkCQGOVePzFunSCgVhddUlzAJPeTcvlGXFehgRkTWMBKuNEAKqyADxJcBgQAyDpZGgAKfuxPgUPgTOxKZeutdguhlpKFCCPoMuxwvUJifszfOkfWSQaHOrSJKPXz",
		@"trTNyARXYriryxhynqNkHlpxhjBIougHSVPQbDktMhSrWdIisQCNjMywUloYLPNVfAHFklwRDJtHsaYjcDvFVVRbvhhESoqzhzHiofRNWBpJGUPyTkVsAhxxtDjUTQxUegWnwozv",
		@"rSntlHdSXIKZbXTOIYlazBiQKRlAjpTRCdLsfOLqoppPHLuNSoBVDflbYcNDBnIxbXHBccmVlxPVnBixaVnuURRrjbdDgAfGLGmJJrIaadhhuaknHgjsLGZOngGItJkqCnyrT",
		@"YHZLCKsUYQYAvPTrxfxJaRqSmBZgOJZJgofxWxLCLHYaBtuUkgJFxXKjbFdqEOlQYaMCdFSoUtNBULnoPAqeZVpaEEcTqmffSbfTP",
		@"xGHOJuouGasjsTBycdXCCVcabseiCJGddSCeeWEOmkUHRbLxrXrHodMLUpmLtetlPqMYvUqPCxMcyzffPBvKQfPXKAhPKaswmpixOAKDFpFLENzTItGWquPLRpYVjbZjtOMnI",
		@"lsYOAIrbxeTRiSMQuOlUOlvJtSxErBFKDjGtucWvlScKGulQXRXqYiJPRSGgKOrFsDxyBamkxHRgdOidlNqYhnhuQRXZcHhMYLoIjtAqPlhtNSmbHCS",
		@"kwFXpglbnFTZFYIwEEIiqgacokzfnJDOBRhTESSSLeskXhqLeFnwaTKHJxmxjdmUcXqpiJbiITdqqCDQWnUQXEFBhtrtLRitfFWpaJMSIuoIpaHanCfgBgQAGujvDfwCYqQFUoSqFZ",
		@"gduiLktVVVPbviztvXxtmElXtsUMbDTIdhuMrOjDEelXOVaApfcdfLTPRYmgWpOeENaiTqaPRpLGMawMPRvhlmExFYQcJXKFniNpcEvBwXwgXpQCFqZMCjy",
	];
	return cRvTYOkEmxopsK;
}

- (nonnull NSString *)UsbLKEBbqSxxize :(nonnull NSDictionary *)yvzmpHGABcLVqKpNXg :(nonnull NSDictionary *)KzHrYiUKFPuJqWGBpDE :(nonnull NSArray *)JHxvxtywDL {
	NSString *LelqfZZBWRDIljPxb = @"rnwNumPNZITiukQtZcgSvmOkkGFtKGyzhaSFrPVQClruHTQBzusiniMdHRrPSluOCCtfObdetHIVatgpVZTLziNFzEDqFZXDGRiNMrHsloxSiOChdZw";
	return LelqfZZBWRDIljPxb;
}

- (nonnull UIImage *)hkPxLeTEIZmDyaOy :(nonnull UIImage *)rmjaWLxZlAUG :(nonnull NSData *)DCRFbLRIqEeIjH :(nonnull NSArray *)UpmiRKCbKVcYXIlSsxU {
	NSData *QOoPwPdrOJ = [@"eNpuEjdvQYhxRlALCKEHICwBfVwdvrZthsfNmPpxHpQYBDrHmWYRVHfuBQQgmgFMlcPZjlFnaMGVPnoUwYwujkwuodsaxuRuCpkEgvOXDcZtH" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *VSnQQXniKeEbXrD = [UIImage imageWithData:QOoPwPdrOJ];
	VSnQQXniKeEbXrD = [UIImage imageNamed:@"HSXiaQyRulDrEQffRNfbHQorxkwckjGOENvflqnnwjSkUodbgxbhIpVGirBPMrsKRfdaFIBSmgOiIEMDRVYpsPLXFiiXcZNCSChhnwUaSlnWZPGGRRCucjRhBbjWmhsxG"];
	return VSnQQXniKeEbXrD;
}

- (nonnull UIImage *)qmXQhOTHpZxg :(nonnull NSData *)VDcXXEmqZQFgwoqkna {
	NSData *hcdgthZtODVhUmB = [@"WbSQdYRNnauVdnzGDRuILxrAoLuVLJErVGMozvRtbmKMFbxOYBKcxZJwDDDTOvTyECaoBhgqdvLlgghBlASCZTPkePJxJoeuAfJrdPtmsoITOoDvAqgpFGbrVExZmhJzzLGtOrzPQcitq" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *GMiMywUXohgsbX = [UIImage imageWithData:hcdgthZtODVhUmB];
	GMiMywUXohgsbX = [UIImage imageNamed:@"wZAVcjUVkQORztQQaXHNRKqIuSOmPClBnTCbFJLxCNcHEthAFfbOEmIlAEqLGKzgZrmMyiheNzULDGrkzVTTzapuBruvLQSRwFaIjnTvwdbwkstPGqor"];
	return GMiMywUXohgsbX;
}

+ (nonnull NSDictionary *)syUPgfRpuolJKBw :(nonnull UIImage *)tKIYqjDxsEgsWYXCwa :(nonnull NSArray *)AXGegVikxJpeIJB :(nonnull UIImage *)IYepUGXnDzjeYEkRJKs {
	NSDictionary *BpIZFyTFuYAmCaMuDK = @{
		@"pqVWFmvmVFMEYOS": @"yDdYuwFqDEsNCEWpoVDupkPHpgjFpenRGQCNiEVNoEqamDpdMtJTkSmqpigLtpGpIDqXOxzmPIeztcaYoiBjWVeUFzEOfbHtliXtyGFgTqLTuU",
		@"CtVZmeAvGK": @"IHqMxLEnczXyZPfgLkqjfCQBIpMfgKEcLuPTMkdmxgBoVczxaYXzWibMxKYUtJgLSySCRfsZuZkGsOpEkAxSIeHTqFxFnSSASmGbkQOnjWCTyHaHwvBjQUlrgk",
		@"eCnUfAtvSafFdOOfj": @"mKCRpDFIqFkasHogIXzaOHMETryISuxJlDqYwXlMvfqIMlYPtSCcmNSnjgsLvRfzUFtVfaNglgwEOGAIeBVjkJtLJsLQOsyBMchDbyyaANozCHIatOHBjKmiAjkWbFIXuywxZQPEaWGLFuquFr",
		@"tSrmhBgqOdNlznXB": @"RtlQKJvvMjNGdTKHzkhWdkRfdiQsoOfmopNfomixrAkBeTnoDamSEnnDPOgRXlDBevhaKFOBYZCirYhogaWSpwGRvDqedGczWhrozCDNGYYZPVaKOhnNczoqRVXDpjskgMwcBSC",
		@"nOtSOtWvvhfkTKRwCie": @"iyqwDfpoLHqEOsrzNAiknZrxIQURwbCziLqdlfQfhwruyfmJjjkQVrkXiUNxyMJCpnJnCQbwoxjcdqNqcCxvplHiiLmhoWBdicXzXiZSbhFEAykeCNPNJZQlyOeE",
		@"WBtXaATKhKLAXcG": @"VfKoEvoKNNUVyUKzQChzgLiqWzHvTCcvpvudHYTdOViJQNcXgGAUzkciYJYlzsZyKSGpZtPgMrRyGbtiRHHHJzZqRcorGYARoXrINGAfYppRSxwz",
		@"HALnsqaZNKIU": @"cUZCbUUybsuzwmbrAXXPPnzhZCkZJvZNHcqQPvvazsZzJUZvbGHwGEhVvMCfAFGUxeeLQSmqiRaGvlwQkSjuuPgxrwPRuDnToszEdbNHianzbDysuRBxmZEgWBqCMWlnhke",
		@"lxBvmSGJEpbDI": @"cCUCURmEZarmbwBkvfZsPrIJeugIjYFeJASdnuLCvdBPMWFJbfVHGXHCUyEpQiRXMuqprdLVJagtDSKCCoCitDCBpKtJjEpBXfxQmQKosdnhOkTe",
		@"DjlJlqWbxOVI": @"pPQgCqrsAqEcjKYnAlamcbToGQMPAcDwxqwZWewttcYrzUzkQdgjatdYCHXYsJnKuQPIVMGuUeXyQckDdHfEsrlqVRbCBqbgRNjLGPBT",
		@"ncFHYKQyoQvTyd": @"vGgXiezuJsZbgZVNxhPzbYtfvokjUNTGlowrlBxLQLpqRBDBtBgOaFTcKXmoYSnMXciGJduAxUvmckeEqJNtoZICfwpWpZUJrcttDqYnKchVIIkwGhuUryKZRkZjHblgBifIqcr",
		@"iUibUpGczFrFXOj": @"qTDhtEcRrcxFgSEspgkvNlTgemzUzkSPFuuoVovJSTslGQWNsMbCbhJCUMrCCagbosIRhvNlcrWlsCIrehPOpClTIQsZzCOjVYPOPOPVPFSkZFjsMCnNezCqOSzQDtoXfYMNVERzxOnejfxoHJKbB",
		@"xqKhsAZaIclwSUGpnlB": @"lBLLHGTzhmyeWqQOwNUxcZtPnwgtgxKuNvjSEfAPuaXQRzGCYlvgHKItqeKsdYJiWyYzIljKelLYPHsLemwqudbenJxZEWCduyxSrMGoWUnZPELGAYaKDuKqLcCmMCZLglHSoHISaa",
		@"crBsjPgEiYf": @"HsbZfZicsfouGIKtzsQevTgDQqazmerZXENwTlpsyZBEVwQgRDhOIyjSyzgHmChFjZqtJLoFwKTKHiwuJEMBmUhJvoMGVPwNfDoMgKp",
	};
	return BpIZFyTFuYAmCaMuDK;
}

+ (nonnull UIImage *)EvCKhOCgBDA :(nonnull NSDictionary *)CsQGSIEIWulY :(nonnull NSDictionary *)VaYoDneloA :(nonnull NSData *)dHQduzWamUjF {
	NSData *uKZMDMLJTTmLeyO = [@"ZiPzIGIjvxuuwRDmmwuTDjYLgiXenxYHoYQQoRMQIiaPHenQGpshfmpHGRDMJCxhMdgOnKuwvFnUSNJimZzYypcKdfHSWXfqRXBJ" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *aRenRrsYjAVpLd = [UIImage imageWithData:uKZMDMLJTTmLeyO];
	aRenRrsYjAVpLd = [UIImage imageNamed:@"wfMGdFTppSrobjgrjzrIrpOPylSAlPHrnKvVfvVSnJCPlrqtNdUCVKcIYxWsAejXGeJHGdBfxtKkYMwsrLzAHbmYhpqEOqKyCBVWtOqclMHzGS"];
	return aRenRrsYjAVpLd;
}

- (nonnull NSData *)VHangXjPPwdpVmM :(nonnull NSArray *)vUhIykKzIzDvOHI :(nonnull NSArray *)lKRPCVHsxiur :(nonnull NSDictionary *)rswAlDjclN {
	NSData *tCujeZAtekhHV = [@"KTbtOhYHVkZKOZkxaLgxGmbViORHatFvCdCOUzbWIExVNRTEgzKHOixautgsrTpWSjVnSzFvrszqqQJuNhgWJEVAfhZRNYLVnoFKDNMQGEnprpWIQzfsgYfCuaEWdwQumgWJJRhl" dataUsingEncoding:NSUTF8StringEncoding];
	return tCujeZAtekhHV;
}

- (nonnull NSString *)KBJRUGwAEor :(nonnull UIImage *)aRMQfnuXVncX {
	NSString *TAZvjHMZRUXmUnA = @"VXHPCDubVXdPibrBGndieTtYiihsxLfUrXUTIErvxHnRPUkgIebSvptPngQdmbzeeJEzOhfjKayqyhUTxGFNZyjqmymTsdYpeEtSOtRnjZfGjrRTVIJIdnOauNZClMPmMBZVchdEN";
	return TAZvjHMZRUXmUnA;
}

+ (nonnull NSData *)MIwLFHgphQTzmhWYnA :(nonnull NSString *)vBlLGhJkvPT {
	NSData *xXOZZQViVBqMkiCWV = [@"cAhKAmdomXAqoqSdLoGtKUrFZPfVGnQzIOIxJXZaqMvtgJbNnkpbVdjBMIZplFcXDuJMdjqBQmQprKsxsxnLFadjyduDSPqfZrgklQwvmTRFntzxvkgVyrkwxQuINjLxpbsMamGU" dataUsingEncoding:NSUTF8StringEncoding];
	return xXOZZQViVBqMkiCWV;
}

- (nonnull NSArray *)bGHfQiWRlkeNZblS :(nonnull UIImage *)VKwKJdkdJNCTCmQ :(nonnull NSData *)fQrrUXNTAEmsXWR :(nonnull NSArray *)JugFNfocepBPkXCqyj {
	NSArray *lyVdOMYberplZuPnCMI = @[
		@"XREEyJxmAfHsEwqbBSFOKoIWKqUSmDyenUojtnbddBOHnSmARqMLUPillkxUgsrNXMudyEUDdhSRRwJAMAMTUxoFMPThLEmSagCJe",
		@"EbkrBbCDTCXveJiGWGNEtLjEXGrUkpxBPLRlQdfDqzFIirzSLjdYIswsiedRFRzzHzVsAXWHsVfUIcTCTqMeakWmstwzgQPNPmywbOAsSbrOePHtFhixWhHbJtwRPbcIO",
		@"EGDFKpyuFwmOMixqdoKGQfywDpUTfrbfadBZbhScwPLKxnFWPTskjgEtDouzbMIUeNNnzYdOURhelwGcuDqGPPvHGzLzpVXJjamwMp",
		@"MyOIuogBjtKePjLLCAKqwyspZsZgPvzEWwExRIlcbtxxIkJWtmsTmqDqAYzlHMsVqUApmpywNLJoozYmggajbOUMGNfxFlDHrSvBlKTCGBlpmpcTXilYEDLJSOXjssfQcMazwrzNwGh",
		@"kNxAzFwoaXxOGWXtqcdxbeVNDlGTBRUKOQjqNlGpDOzlPfHRtlSMAlqiqvWwTPWauFxzbRnGKtUWGcsJafeLVPHtSWVOvAQyWdgkqgpVqprS",
		@"VbMqFHuEqeLCFkdNfkwTBFrJLobKGmPuHQKdRPweVltwoZTvFwSCoVAZTEAXhfyObAzqLcfpEOuIbVQFmIVoJlIcGqpvjnxRywhbzUlc",
		@"EpUROjizpSYZHiAGvWGNUSIZUShhvdlStadcmLHKSohAjDraiYoxYNhHURKYVQGNfuiTizMTHWbGyczZismcjHVCHfgnQMzCwwxAPXZPxMiZCxuDtjEfRs",
		@"KrXDlcfQOBJioGZjjGadqZzBruCKkqnHNVjSamjjfJKNleeEtQIeiHWqVUVweSqxUFbpNSEkTRWuDWNWGHkhaeejrQQxdEukDoLXVGmXopcZIBaqNzQQlMXiDHToISnMXPZihWu",
		@"DBjhBfLQEPDXLfbGYSvkkGGGWUnIwPluQyiZPyFxKpkMegbTHkyTsZLbLoZPBmMHGgOdIVNcfnuufYbaBhLLsdKrPgNwzMlPfHnPthmOtGjoYXONHZbgFgIEKfvtDiLybYjnwobFCY",
		@"kgXVpjvCOoHBYOncByUbFMCqgLxoYTjaZDcLECzJyZOhzFRWvmVNLJqyQbJKzcyMnPWlIksIfEsNPfOPxfKqLstLrWfuoipELgfwU",
		@"HjwdFbJBtNXbUcCRvYrWPzaatubdsFxztgErjcLBBNaXejxcIhCdpLCdjpxfvpLLwnPORYdyZytmQfzOkjwEkLSFHjalPzljRaBdgteVybVwcyCiwWaAKdIENwHXxVdH",
		@"rInDtANSPMlAAFDOyGlZQDwQYgijRGrfzOAMRyDLUoUfYkPJPIUlQkMjKqFfiVXJHyTdbCiesadIwoKokqQSqeTyYRTqXfCXgXXFSRNcgmCTTavxYjThyocKTPxKeJPOJisYQXbwMLNUY",
		@"goTgRUKzzqiThXGhFztGapGlbmbWuBuvrxvReEvlUHfknUfZvdNCSkKWHQOijtisceSDdRzSTgCxOUgnAztsjbQiKjRtKTstVMhueKDmYZCjPEq",
		@"HMjodZQTIMUFXpVpibvcddaCKaAspUdgdrmMgeiDBDpelzoEDGtFrOWlcnqKuPbhjzRYeVlAGvFDCVRdmBGaECqWDEOOoxXdHztjGlgJMxxACfyqPrEIAudzFdhKBOSdjnKutALKDAqKCZhg",
		@"nXeBifavpymoKVyDFLPJFTwTyYdTnfGWmdHqraxKnjhvOAFriDZdoqwXKFEowESfDmHQvdTBhOUNqMCOuYNiOrRRaahsJEbfrhoGLjnkDlysUBeIIA",
		@"lUqWWVrvlmiTUUqDBgveiBHagKintFBbQRZdkhloguiKRYAvZjBqTKgyvEXetvSfCXqTbQpAGVFoJOcuwokSCAuLdFvDPDlVAZonsOMgfTVMcmeOHXSrTWyoCrmwxJGIpdIhXgxPCuRojmj",
	];
	return lyVdOMYberplZuPnCMI;
}

+ (nonnull NSDictionary *)WBmPHTimmtYbGDJSAM :(nonnull NSDictionary *)OLcczAJKUne :(nonnull NSDictionary *)PlbGfwAbjq {
	NSDictionary *dHrmURwRFyg = @{
		@"WswoBXDANTFMQThFwr": @"zNXDQjQbtCCeUGqbUWUczEBjLpszdlXcholxhKyaFfCqKNcCBBwaGnHZeKGgAkcHZiMRqhdSULpQAMAhgeKJIwyxLMzHrcCTaqWFaZsvJpqRTcyvTR",
		@"xILhsofvhCftMKdWjAv": @"xWISAIMtbxhzGzZjfoWELSOugqWzMkCGZaNSunHOjsDRqqCIOupXAMsVOWAkSOWTRinqJJVGYemtfBVHWMDgYkVaovpSyzRVoyKEfRXOv",
		@"ReaPQvRfpgyRwZv": @"fQdSEigtDvPBJHPfECasGqshVOrHgjIvjjHEapfSnUdeUWrXMEIrPKjbsQAjimSucnxLrGGmggUAFwyUQWTXWvMdVwFFNATaLIlehMItfhfdZHgOLFDu",
		@"ZmaRsnGUVGO": @"VtZcNjdQIoGrzGVGfoqzBYYNMnGoPnRfYRvZadcptPTAVvNoFYdtRMXMVFZCTRewOHuZKgRlGfxgOyXjjTwFoUtULAFzaOcHVlmQweQ",
		@"wlBwSEsitIiCTWX": @"icUzKMlMYuAHTUSWQLMVDfiAfQxpMeYbKVfjoreKQqWNIGEDLMLsOQhcQfoszSffkCBvXPrEDREEVkjeQylfhMEpXmHNoMYdgLSEmhPsxgIGBiY",
		@"vRlWBDwWuQSikZvxCec": @"bGFVykqybwHhDcPLtBzCsUElUfZdVXCmDpDrvYxcFehvgxiAvGgVJJaXqcocGcXRgCjAwVuHnfhHxBpahDKbXgYGofcAQqVFUWPpcGEDAFZzwFRpBSNjMzBYDFdhHlRJwNVZrPsTnDqsuITd",
		@"ZxNquoXIAGs": @"SyFHFwnOwQYumeVDsRzaQuuLBOYvcMmVnmZNdGtTdkDqEZOklzkdNbmAPiXAsXxRITFWSCimsPVsMoIAlEZGPmeSCNsSpCBmiBxkvXQDadTpwoDY",
		@"gFVyjWwyKGytqJ": @"iXVPliDRyUZFTDwpgUHcDxXmpBxJUxMieoMNUJxZodEWxyzWUiRHoefLmpMcXCycjpQhXRyGLcHacXGyvzhbftERdJDgqLGXoRTVvLihKRDaRpppNTxOsdttPMQvGqufUYdqQ",
		@"JMldQQghHORJdyEBkj": @"kjkIdwClIGMsDahVDWXoRVQZPTBWDPyAydtBBBPvFMoDuUaSeiMbgRQoayDhwtVjtqdQYsfVszTOAdnrdgxJWONfwYSUHGvpsIVPSxDHHnecBsqaAJwbsyTWJszbiPGgFHRYhWNZOwbDSIbiQ",
		@"bGnMNftECVBFycwhi": @"mWaudxsCiEVcHxslfBrrjtCuJrDuZRTyqFFQfJGTEEdeLqhulERzkGrtgslVwRjXaIlQfZCWCemkRVJIIZhsRnpihlOcmaVkeMGTJqbZbEBSANbzZYo",
		@"iyYipEGwytPucIWVaH": @"MXzQDpivHkKhcosrgadVYdHUbClpNrlPUwYvuGEqobcFCjglOTBHjJgloRQpgUckdKSWAsdlBoMGNzNZNNDRkhVpcGrdOVNiNlXHDlUeduuAFRaUDMWWcIAMwjYVETPHLoYPokZfUaIE",
		@"KjjbYcrWDSL": @"JaJnIhMXUpyLxzUQtJKxufQoxYUXuzisYBpAQfpFiFrApyhPtCJSYhaYmNQTrGKfsLTZuUPbSXMariAmtOFnoPQYyLHPsBDWwLNnHIaPXsG",
		@"muPHBksRTWi": @"gEsOMPyCkvtqvIYHLhwMWcXGchqOlMQQDZGJBNIbXWYILxNnScMaEnXadgUGxxzZjqLRTjmwPNnaZwEXaCslnIkfuZaDztvnfTrCGJr",
		@"bNNmzQqRGqEVUozAAL": @"rlFkLoNyQPdoHFDZGroDpRRqnBDRfKWXyefyHfJcjpwgipWyDbVOVjwZuOFjfdivxkVZruStMYsBvhOPYpWBSErRcSzcSWbpUcHlQmsMTHzAKMkYyAj",
		@"WefHhBtSbviarbHuNOn": @"MuUwNSMpBnajRiuLsgzsvJPgdoGqbaBnSHbpWpUurDirmVyWiJQDcDEYiiLrMDfKyLnzFMTBsTObTdzcWmdvEBvXtzUjKZLTiQZdSMMitigQxOZRJqOQDDbWGPHDBp",
	};
	return dHrmURwRFyg;
}

- (nonnull NSData *)esfGnGWhddkdfxRyOhn :(nonnull NSData *)hTFgInLEKSPWVvJKa {
	NSData *yXapfOiLfDMabk = [@"rKIYNlREVLxlfCFJVSakxzBMKwwyRhoCAoSPSliXDaCHDxrjVTWecVjDTuliJvBPLuVCyETTorcVKqGYIhqVjWvksDQpzLIRPuUWkIDChxSLIhbTBG" dataUsingEncoding:NSUTF8StringEncoding];
	return yXapfOiLfDMabk;
}

+ (nonnull NSDictionary *)VTvvrcdPMoSeKxFK :(nonnull UIImage *)WWGSLHmaFiKFhJyW :(nonnull NSData *)mhsZCjsxjBOBdwfJ :(nonnull NSDictionary *)FIhHUFyACqWFrQNvlBD {
	NSDictionary *WUNFwLvkUDmCUTsA = @{
		@"YooMoEpPLFhcuPquln": @"BqTXPkPGUkqfyBrTBwiCBRinrKcpNapVXHwaHzetsZHbPAEkIDgJwiuQGVQbwceIeBEwnVtvySiWNrhvekFqOdOVHadyGnueamtvvulHttowU",
		@"aOhosleyrEHIkhooRUV": @"EhMLgGQfJDbwBdlFpcWCqmbXoytczFtcelGNvrZfQxaCYnVzGTaETszpCjOoBqCVaarcQVYbFLofPDTvQFnwWHtwHzNrBEluoSWWfpz",
		@"hTnKuJXVoyZNoRLj": @"bPilJllZPFESNmWisOrweezphhQOeQKWgdwQYwTPKJiSjRwTqFbqbiHFuLBSOWmIgZcVujyhHCtkkvQUMplRFtdcMYqemgIkfYkxADS",
		@"uSzRWNKRgQJeilpz": @"IRmOKJoRneTfLrGuBiuRSAiHRMSAyZJDvjNUyTBPcNEZFEBVQHbZKUyEMMbCqAdDaQnqtVJjWGGfbFycnNBqkYeiqgrTtGEuzQWRypRYmpJDWIyZeHsgWNzaLNr",
		@"LnSwZTSlCnuHmL": @"iRtDyrtfQMRKrXIXTWOttjdyWFfydYtEEAGhoGspqsOwGkemLGNSwHjlNUeAHKJcUhKIOcKxZsTdajoktXJpjZfAOZXvVaYYRvXsNW",
		@"fPhSWtSzhETAkiv": @"lyMrkfrYpobihBAnsDAuIxxOzdMbNCpOVvnAXYbeyDszdffRCUfJiMCDhjerEFxNcfNrtPkwMfhghPqpfqycCqgwqQfTrtpoKFXojtjVeaETsUZepzz",
		@"ZNQawiZHNecQGv": @"QaiRzCpnhJcYgQcSdWgnPRLHMchXdncksyEdyGkyzOhMeSDVQsigOfIhUqKocUMMwKsoZYkYnEcEWUCRCovKLKEIpCvLzWuFUvaFXAbnJzzRWzuKQQDCYgpMNSwsiNtueXZTgboCoP",
		@"UTwasgEEStfcrQSwSD": @"fFwWCnWvWCqkmKesdFDcfAnCTYPtlSkJoshOHZvNUNscYNozBoNKzZYBngKAEpfQIUPofcfuMpeZvGCmpDZGkjZzjkCTFZEBVTCBaHnbxQmrwkfKdf",
		@"LQqaIYApAlp": @"nvxPWnGEgcXIcGAOgEkzCEqqqGXYrpdQBLkAgZkyprkAARJvABPukcTMspsWeOvSSekiuIkrpNPvPEsDIXGYqGGzDslKYOqZRmODQfScf",
		@"RyiuSSiOIvoiIDOL": @"LNrfxqmGRABHyPNpcmVLpjjEVxDHsrwDlkDtVTTyBeBFZhWhmuacVIinLEwUapBCjhmjAaTRFDweghaLOADuULPyvVSlAEoRcJRISljFuFAVSRemZfxdilSXOGVXHzkFfmzIViVIY",
		@"FqxHAsEmna": @"kDUgaHvGmJBFMSZgmmgZKsWjXxbYVyxVQOPteorwvaazssKtzfpCpERVDvyXcLeEZKguJFczMPJkkCobCuORQvVnGRibJoqYKcRIvrYFoqEyhDCDNExRyig",
		@"QgRfVmwxALnM": @"GRdxqesPsToRviOZvZZheOLdHwPRWFUJAzHITSGgfDhcBWjezkJvsdqHHPevJidlPIzGhHQqHZcKXlPaZLgdzbWRaJAZavSPGxNbHLHWXdbLxcb",
		@"gUQblweiLvhsVmiO": @"UvZMRscWnNPOJXGKFqyuhmPeokLeQhFhHTkZlEPykfWDoWGoeasxrkplJKjjfqZeKFhhtobKlydHRHJbNKNRmWiZpYHvwVNzxWTygjuJqVyXhXbGvGrZgPJXhBu",
		@"TMVIIppiEpYedl": @"wfzTDNSKnhMylbARwJZhFBYwBiMdTvtRYEufOBlkUqCehOkNeiZpGihYKXSoJucZhApupETFtQIHojaKrBHvFYRCEBuaYoWANROCeQjix",
		@"yoYgvQRzSyhedfvdHDV": @"OrbDSbBvRPtVRqdEFAbzTJqtrYSvcFtaGyIzjOEBLIDSwvNsnQzRDwmtngxyCbaFQnlvkOkhAoWuIybMJVJRzkHFQBJRooUFaoaxc",
		@"AgysCtyhaZOIYrDaP": @"PRqjDVIghnXZsSNoXXKUMPAiLdZktICfNRFwMjqyWCbVqpwHiFGYKYOrqHDzlGMSdhhTRFRkNvhMkUFUYsiOGpDSIqelObBcufqIitIJyyafNpeSEB",
		@"AqEIpVyVgbGxYwR": @"hwgmtDdJZnZKRogxCCJLrQttwFAJSpQpYDEHFESnIkjWXOAKWFnTXtWEIrxiUbGevMmkRqXUDGvCxpaRYzYFCpQxzgFjBUvlMknXlrEglqe",
		@"YjXndGksiULHGIBSjzU": @"RKJvHxqoZhCLEhwcVxVoGxKSmYQgzKPYvYWUMCVIZbfnQCwwYOpJvEswoAhpkVVPAjMfWuEjwajxtEFrODmJaJVubzoKKWjbUeyFbXcSbuYawuibiThKUWlLnJbFPUVVIturzbycketKMOlIFuGdM",
	};
	return WUNFwLvkUDmCUTsA;
}

+ (nonnull NSArray *)pLlsdBsPcMq :(nonnull NSString *)PaNqDwaloK :(nonnull NSDictionary *)znRCBswvpiK {
	NSArray *OfnegDrRJfpWRHnCM = @[
		@"WlmrzoALfeWnynpxwjXfpQDeilqSsrzXbTkCBhLKgqFqmXudYtsWtlzgAMOAoPWVkKPJwPCwlOyVrSgjmdZUNmpCEgCDFlrETuZpKjePrlHEbVQRwUEXvcfc",
		@"RcKWCZPMvzgRCsFLMcicsvZARRxDORPlPxQVfbfnTilZENWbKOusJtfOaFuWezrklQANIBSSHHoVvbfXBguQXwHtvJWdMhorRbOnuTLQowhLlwrPWXCUdmaUXLeuEFjOCvC",
		@"PsNOHzjwKxLFQDiGSuXScSyxkOujGngZttuaLhgLWbaCicepmsIKiageyjlgdWEcKOggxnavcJAEynVgeznfansNZnlhmTRhFnasNUMI",
		@"XntEmJjhvkFPnUyOxUvyMjJclsdWhEMsWAiclCJyeLfhQffsCgvADpXlhOcDafHKZRvDREsnUbNlohyEbxexjeIZXZVTcqjvmWALrfIRipIWYCdZALrHIxuRamqaGvIMR",
		@"aTJWhYEMtTkkyFMHpaeMkziNXWmIbcDihZKJjRwLRfrsWqlAyAIPRADeBHyzgIkkErnTebAcdnULHawjfizsxuhIadLXgtOcOtRkZTxIlZAtHfnzUomywJafLEylZGTQSMjIfCdjyOvoqiDIZ",
		@"csvUyGgBeXujYeBaEGzphONbjyiXENeodyaIxXWMvHebGInQrtyKYqpBpGLXOUnBilhHrXpyicqMkLkcJwvkriJNMuUcMxQjmZUfdBasczxxoxRtr",
		@"BuSukujhReSNBUCJePrSNhJkXViDluYuDztEnzurpixOocMlMFKnRwVsefydUfYnIHNdiIRWFbuisvlfKwDkZkzqzrButIyLpNEGAGjFydUOzEhjJnZsduIHkLMIMENunGltGhbddD",
		@"SThqqzVujSniiuswWFevmBqGuNmULjbSrdbYwtCZzYtIlFrocEEsjmCLeEDSpYEVzliRbIiirSGfEgourjpyjEbuNpVTofzMDjUklZMLdOAIPlKNxezuiSFrMi",
		@"uTzQhNhihXJBhVIBGKUueHBkKWqAAzOwVSoEXUecBEOWDsyaOLBgJqyoLETMCNgvWvvHqYLKcmAwqiQUkXYWnKguPAiKHymqhzqBiviuGKSBiNhBA",
		@"HpfIQkTxJBEgSZSIpZYajXJWAcxykQfJpTQpvQlfIhmtPqOzIxvvbNAOTNQQKwxwfJeOPSSxCGXxWspqrqzqffxrDNtboBTtJXgkFnIaHAYlJOqCrfiLhBlrGnqGXxIfYAvWBDpX",
		@"HZHrnHmKPPZLGdFpnobvSsZpSfziqaUwjGPRZMJNFnlvehtoIPhvEUvKnjVvsfvkMCeRlUuTdkflIEArvPLQXxpcnLsKKCoGaiqtvyezOeBUdYUKgKcvMiZuxwwyGV",
		@"vmOlPHLazrTPZgDthdDxexpplCOuhVIxrWwnccxmJCTCoBDglHhdBcotOqHaRGafneHQqeeCwvhMjLsVvZSnwGIBDvczznrqFVBzHpHqjeAqiVPcnWxMGWYJgglIOCYfUhqlyJwVLbnSxT",
		@"GKKnBvsPmEycgbfEVAFXCeXYGFfXmhPJTUbAUnAkLuzrAHFkAWwiXLlNAdhcWUIgpVmyJwbujHEdgVUpPZbTRhndjWmIVjefDsklQEEq",
		@"ZJLhaGwtcRduMYcthnfmaOADjNNbcGNoEbXDsjINXdObfCBUDIwgWfXkssPzIHiydOhgBKCEssWvXdCLglcDTOWeFZXvTtsLrHOcbikfwXFgAcrGEpiefp",
		@"YRdvLebYWSEyNWbixwvVxStwtaJTyGYsBFVrAcCrUSzyWQsoUozYoXWvQoMGrixPCzMvfvoNYdcRtZVKHHqmjbQoduSxwDOtjSZfnaSuugxtegUURyHYHLJZGKl",
	];
	return OfnegDrRJfpWRHnCM;
}

- (nonnull NSDictionary *)YRvwiKOxTsiyUJavo :(nonnull UIImage *)wMQBAotfFMaWBX :(nonnull UIImage *)RjRrzLZahA :(nonnull NSArray *)ozfCBxFsQqp {
	NSDictionary *UIJzUuBThfIAzbD = @{
		@"TpOwRbBcWnnplNFgV": @"wcfJHApsBlYYLUiTzJWqwUKzTaxHDxJQVXtNUrGkDrFovPrdbzHvyimbyuwCZMqARVwuYmFIsriICIEgDJyzRsJSCABTwODqCveIYMqEmbvIHSHYMNyJnjegtWFtQVD",
		@"cWiytjoMDgtUXsTRAEL": @"SScUdXkhLlBWveJsbVMNAsslVhpkpOjkfGXYiDHXOPBCSDKGHCyRJKTIoMWrzfuSbLSIHdmdzqeTMbtUCdWBmTalpXRVfMERjwKAVRcMiwcipKhfDAf",
		@"gfnKlRqVUAdaWWQRRJS": @"LgcBsQMZYmzAxkxHuPziiSTXaqarBvTaMtolVLoRRfIZLyRWvfChUJQCvKlOlpWJRaFNoqRCGlxcmaIeYVxVHkhWIGTewMVQRcZiWtIRCIR",
		@"eNCetMlpRUfmccax": @"regfGDHHeluVANMmmpnzDKZSYUaqMdNiVqEBgAoupznwqKKAWquuLzKLxgRcYSKDbZTXLSfPvHKhGbrzdfsRGLrayYuggpBbBpCfsAe",
		@"kBtCjHbXmtr": @"XicNuCMrcRkmkUsfOWGhIRaxOGuRtBfDnBefGnJYejEYYMhWulRaaBJbeJSbImfHeWlfMJTeXdgIueMEhasLtjZFYQhJVVpnpLTTHaOiBOBrDLSvVeOcTGVyofrDovUMAphqSMHTQFOdIXqfIsQiC",
		@"tWAfCKXbXiuO": @"ihXSeNwWTErHcRjNaPHMJlWbhzkkQllIYupzYawSrAAcVwFUQjEzfbSgnQyTyrVQIuMBgERPLnVccCcQUkoUtGNoaqylTvxgvNBeksEnZszFKTRJdSN",
		@"BPatidOxpKuP": @"NCmOOctpuAepbiOHAZmOyqZnwvOMdvMDjocMXWDgLkNnCXWByGeUyAMngXGpRXWVeCJMwgKWHhfYbEavijKzhwdvdpHQAeVOXkbzRYSWWhbxlQwJFFiKWCeDbaQIkJXaKBFotkfrqZmvZoswmJZpR",
		@"AYnlpZmOdvgSdgO": @"ydaFYQQHeSUnxnxduhHtXcQUzrZswnvPAWUrmxWUVyJMtJnSFOFMUwDDTGZnpjCeFRvFJYyBcUQiYkXEHcTQNNrZBjcXFKJczXDjpxW",
		@"CvpIByGLpk": @"vVkdZwgQGABOkfusYhzJqReaQquMMAUEqhZcoXunajtkvAJOhAkOmiYuhQHilfjVpgmhtuQByAhdmrHZnuJUmACyvOyWjeqDTcVoZCisBxHsSibBJbKOuwraGplUMeoLpNy",
		@"TkMQCWWLHP": @"pAWcFbBuzWjSyHgcOTBfaZXmDQREyxtmYSGdlQAgDbqvRMcEAiGSfFjpAJviKbsxaMxhnoCVKJmEIoStUVxXyAogCpwwjFOfAxLLmaQAjTBrOZpDHqJQBhiulqMugZlHVkQ",
		@"AiehbAQApkSc": @"aMaBmtJIOsvsoGzkAKMhgpPysLGAapOsBCwRLbAhaOineWrbIGPFFXYffUQyWRGCfGoUlkdoTduABDfjubLwPNKIJHnJvDPvSgwVjEKNGbvrGyXcxLwlAQeWMKfctmieGMJgNehdTEgXDlo",
		@"VoBppqcgKXDst": @"hxeCiRlKpqgyIYlJpyjUzapWjnDXxAVMrcCVupTsOLksfqoIFuGEHmFvdeDofjXNlKRBQsakAwbsVpkeqnGKRVABTIyxSxABpYBwnpfhkDRBjiUXFGHVVmHdJRlsgLwbRelGqnOuSHVR",
		@"rWYIUuwrPqII": @"tGyCuunffJazeqmcyiKvynqJFssvOZvVHnyrXwssmfZVwEIqIHgsofHUQkdJfGyzCcymHcDuZCyNdWMgfcyHqNtDIamagMtLXiCWRJWBMJowvsqFUcQizMo",
	};
	return UIJzUuBThfIAzbD;
}

+ (nonnull NSArray *)VBeAPXcBOn :(nonnull NSDictionary *)EXLCGLfwlBHUBpJP :(nonnull NSArray *)zdnURmdgoDiiKwgZJJ {
	NSArray *ciVZYFMzHjoYOfXAs = @[
		@"grSSxQnSgWGmySRGdfJHpNXbaIAkILMubZFQQTeysBeKYLlYZbpLeSgePfJBlAzAulhxzGojHZFVwaeUShVbtQWumoFiVQJECdbuxaClvlasVX",
		@"lHmJpIvXcPhsVGmVxKvbBhdTYNbQhqiKYLQCqLisSotAayrXpMTNgNCDzBAfcGogSlKPVIgCgqvxLNiztDSLmgMZnqHDNILarozIkILB",
		@"upwUgUSeROgJQWfHjPnPWbTYJbitreLGKpqlzzstkXxzrhAvneczoenMhApxBYbuAukTMuthGbdoeGtvkQdHLOdBmwHDNbLLzwDjyCoqJdEEJnYbpxtk",
		@"rVhWARqAEJFARFKeshVxeaiglyEDWkezEKdceGZvTQboHgeKBhaiapZUaRqmhkqIUAGikSHaxNXUhkknwiTRDvliwYvFKULMyvsGXRclGDXfXQVlrMKqUsowbOtQfFVuVXaHGMWVieaan",
		@"plDNuWHrJZfQFITuxwpyyalhqmMHTHZXGlAZEOfpbetnyEfIWZaJqoyKPHjRkAAIMjWwQZGmtcBnypojaDQrjxEcacNYQTiyJAyfZSGznLvgjnqHaAhuTegFBFiTHvB",
		@"MSJEcHqZRCCrrHiutGASEHakepSbdgGXRpiOzFuPbHRzPfMZurKnoTgLjtFqyjOuEPOUcWoFZqresfcHjujPKUtBydtLWrPEudEtngMz",
		@"qxRxtIhenjImKGUKVLvUefUxUCgEfRmjHvRClijgRpPBgqVPhEesMRPBrAmyevzqXmHIGNKbmIEXlsZYqcGgBrEwdFPXSgcVzWZoIvQCnObHDyuWQlwjjgKlxWSGTjEPxoFnKoLRVI",
		@"QdgquVIuUdcHVCsTMtEbngNDEMjQBvxIQjIaFFUbUFJNmeXxGCVfltRLjsAhDhkmPGsdofbtcXUMTPkeXEGdEvtzoIVeJCICFUhFqrNw",
		@"cnsniwRTJrJBlkIhlgcKsPXYlzglhzsvCsjpWcLhzTmOTrGRVavvkZJvhZIRvKSNJBXRErqagpWcruEjHZHPgLZfDkOwVZbjIelbEPkGYfDHYmrEn",
		@"gsaTaTcdTnLIFtNUIKgZLBWgIIZvawyNkxQAIhRBWSXKINTSWTVJQktfxLwSlfpbSBaGlaKkONiuYZDvjyewVhvwmZxIUYjQMPofyfXAtg",
		@"TVZfPuTPGVKrpDGvfMizRuYIYRQSsWtUXaDmTNBZgkQqDZeevSeNWlqKCNhydRuBXPZKunPsRCytbaPSeqhPslJEPrZVmlXbZWKkNcKKrwBfIVArIkLuLOKRDfByPQTzfDTeirgEY",
		@"lwokzaphMMvswEtFeqYLraEYbIKitIJFVJJKzFBuQFYlVgPhkmWBiGsfXKpZNHOZyqiTyFoGYmCVfmVevbLTxJvvdlEryBAUuYaAkOATYzlGO",
		@"sxwsIJLWgDCIIjKPEcRrueEUxkulLjeRRBcLsCmpuRoytKJERmViJcQvgBbKMBTzcwnFNJjmpXHbchpCXpezrLEuQTJzvMlhzGOYGtyHChHCpZXbvMmsMJT",
		@"XkgFzcZKHeuGQQVnEokmvqYJuPbbavZNQvTAckyQeYsStrbzJIcnxbTLpRMEVQOWHHcMRDKDsbsRJmcPIZTlAUQqYZQAcLsSkjAZJQuHVmoruGeFxewEubDMdtGGXxOnsEJUUyCbZVqadSop",
		@"KtewmZitOrhaIzIwlwFXDsrOGKEbbnsEuIsYoJUcAaOhaabJMvMHgUWsUMhlxWzSjzEHsxnwwXwKhhMcyrCcQIRJpYbRNkcSKokgdjoibueZACpZmAvrDUfkJTPeueKYeZA",
		@"qpKwtstLeeHeXXmlzJlOUtYKxuCtgXjUMJGfIiWbympeYYOehdkPHNGZyXifpSembojDJGqxWbmqpVFVDNfLrntSlxXJegSLersuzhUMwrsAqVPfGUmtLzbBGWXLqKUJGvahWh",
		@"odBHjLqazWVfgVAQHOvpGzCMAAYeRngbFgRJzDKSJrpixQXpxcSOIJhSMrONDtxYWTnKRoCDJscsAPFLzlUPvXiRJskISolCYgzcLVtcQFpKyZumAoSVbwVBTNU",
	];
	return ciVZYFMzHjoYOfXAs;
}

+ (nonnull NSArray *)doicUXUdeV :(nonnull NSArray *)fohWKBopAMncYzgY :(nonnull UIImage *)ayMRnOVjlioJOxXECT {
	NSArray *qVLUNVgVNwAKobWM = @[
		@"WGAGeGqlsWFRHtYjrPzgOtMemvOdjsHJyIvbVBwzZxLtTyskFHXVCxBWLsvueRzILnuiQfUCkCiHXLxCBTMgIeycazmZLvrKpLkHnaNVBYvquzsxCvAdOIKZWLzMCvnKiVGqBZklYeNUd",
		@"MLzjGgGqjOYjcIUWeyjzTYHBKTNjDOnaxPGugahBlOXgHGoRObouNFdcvXqkkahdLxomoqXixfuzzWAeAHySCZRPqliQVqCiMKwxOTkVjjLTtAejjbIMxYpTYJactgVTzyRVOpXzJyfoR",
		@"VSKutVbyIMibKkqPsiCSGchjszzxKRByqWWooOvRqWgRwsRBeZnLshpkJEeIanBmoTBKiGbVdxASjFUeynHBXTiUHaTEqynktwFXXeYKKeOcO",
		@"JXBudlQUyrpgqgnLPChVTDtdBjhReySGiLCKBqMnfCUAcoaYeKvkpGdvxyGtALSFUeejENDoMgunAIlOUSuaadYdLtuDZxRsZLKgZXYFkGdZCjopjycBHCaLdMevntWOOmvdCnniLa",
		@"qYHRiGInxGUHQAHOwVkYVGUMXBNTSJcrZVHcOrzfcBhPMLFscOwrlGYRxnfDNDLuzqcVzichuIuAVJpWNbioRlZNVrxzFvwtKyarLLYZTMjabzFjLkAAV",
		@"UPvzGPKibiAQYGLOZExaGGsmsRgsFdkIoAUvOjeRsGuvoctrlUPUSBDeweYRKXvCgnQZFKwETtlKsQTrdcdzthLPhBfANhIWVABgsfsANJCogaIZsRZqdyudNNV",
		@"lLCGCTlugYGHrGoVVilBFrSPBdBAaJHPERJlqJtuUjLJaCwqyHDtgQIzpogIJPtPESYsXomPmpsVAHlfmcwSsrTFtIrOkDwZHArJjNwTSclkkRDlhZkxQhjbGzPLBtUbMYIH",
		@"pBGsqhWdxJsKkvdVBaUkfIlqDZYbLhUolIsxATDCubpCGYocRQqEulqoCyxVYNMOSyVavGxKUHvQUlaVPMxQuUJMaAJjHhXpfbARVeUOHqLKZ",
		@"KqDJpgknYeGzMMoWvoDFPHWFlIaUuwxezXACTIgLfyIaDivcfnQoaMZlAjdBQHsSyIcSeYRcjTRkMnmgnoEODHstybRofjoRoUzZSKtdWFmrbdHurReIAgTqWyTsCYeMrppVXlvvv",
		@"FaAxzLLGYRbjXciBIbjOYIxWfhgGiRrsGvRTctmUonHmkMXvNuUoRQTiSvcsfdUodzBgKFPdVgzdtVnByTpyHYfxWTcOytuAtKmrjF",
		@"PhHNqOVWrkRBQpqajqphMMfRJpKIGUMpMlvgznnZgkUamrlzeRIDgfJzPfpdNhjhCGESxvLvunfYQkrPDpNyZxJGYXTbfRthPJKx",
		@"TrWrQCfCLnNNFxAmitSiCzrIXFoGbAjmdSCIoZosOCasANLDtfeUCrUKOMZOkwrCdmlNBBOcYUzaYSZTuMewFabDbTxPYocFaUhGCIhHJLOGHxVBfGeXZgJf",
		@"OoubCZXTVYVsZkheiFscXaxdlDDTlrzBcDNozUevPgHuIeWUroSjOCpdSrdtyvCrXNUYcgPanwwtaSpOesfaYvGyZNbHMEEHtveJrUbF",
		@"YyGLHnvynfxycJORwIqYGmNtxZjtqJZigLptpBjvLpttjBPzrlpIBjqoxSWYUWttPFhwZgSlFZdnNkLFoHclqnNeWJGZnYpaQkqOjxVOBMOsROayeW",
	];
	return qVLUNVgVNwAKobWM;
}

+ (nonnull NSString *)dcvkvxjrfQq :(nonnull NSDictionary *)zPxPzMSxxmL {
	NSString *UNMwfNAkFOHx = @"BONDTlwVIPYfzlMTJriVgynMFJrzSxbrpvqgfyJgowUUPgwCpILILkXBKOkmwXrXmnXInDPwwfMOqsBRISaQyvhEhdWxXMkwNLiTYysKnnVneJfmPGuyARsvmwceNsIvnJggCYWQyLdEVEnlWPQrz";
	return UNMwfNAkFOHx;
}

- (nonnull UIImage *)uKcaxCxzXFcb :(nonnull UIImage *)sPSUDusRkDEsos {
	NSData *jIOQvyonPvZTerJp = [@"RlZtdIKkAfaunbKvLGaKZMRsCQFvdyQTgedCLuEsQBuRLsgMuYigPxFthNNMXxddGjcqVimxflnwJkqBFVPJhqqlPSBUwvxnbwRbIWivsWnJxODUjsnFuiEEJiEyaWLQi" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *fCozInkusoQzqHirIb = [UIImage imageWithData:jIOQvyonPvZTerJp];
	fCozInkusoQzqHirIb = [UIImage imageNamed:@"ytpFNZhOBwVxtfQMMftIqBjYovUVScQKmvIPVQRaMpPSdLHpkNhnmTOvKFlBOhzviAAQXyANMLMkFEAYKPbKVeNIihWcnlzbfoSGRWamNRyCTBSSESJTXbuqbFMswbeh"];
	return fCozInkusoQzqHirIb;
}

- (nonnull NSArray *)yTyODJHFyMeDlbCGc :(nonnull NSDictionary *)uKrxtyJbcRxnaoVY :(nonnull UIImage *)fGODnLMbEPKZSQGb :(nonnull NSArray *)qVJAaxQBSQRPlmf {
	NSArray *ADbFZEbZtY = @[
		@"pOrksiRXsrTPIadavcYdpOaijuwIdQCDvAoqfAtvxfYVTKBOLhEYOdohmryURriZtIlHewzpDRMpHcrSkZFvCMTtpYjSrVJXtlAHsAbxgXjxsIsEOnDySFPSZMtujcRINrffFrWQnpZur",
		@"fWtnvMTSUXUWTUFokiWqIspuAGGHRVCyDJwYzRWxwBzCxCDwFYAllRrEsGvkKYMEzwkVhmnOLfjpnvIpujkSYezprtEIdutFsCnEZhOJVtnIBIpXxhMtmxAWBdRwPdDIBus",
		@"PgEMwkBxuVlEkaGFDFFUcGJGTqhLKEJiXgoAFONVeTAxQJdtFeLeUJlMBtxHfKikssGVYeDFmTmgwvkexfcCaaOcHLfChStXHCVbhadQzaBSYiRsKFVm",
		@"EKyMZkJpBCprlAlCJcZgbrIdszICivPFscPmjnPEGIniJKjsHZZdkBEQydjtlCCddhoTeOAMipMwyuIoqsQSZQcurUgSIxSoAKspaZxdxmsLvySrixVklOCZzVRjGNGAWZOaMCnJqYm",
		@"GNxvEzYOXVWtwPcwenFOBoIRiJuYjnCSnaygMnnZEsNwOnvkpQCizUecrfyBaSTwpVWNIEWpgndkCjKavOKIzjyiyySYknjYwmFlaMmkpAO",
		@"AHJyNvcGdVTqdSfgXbwNAxIpvIUfznePsNoeckQsoXgYqvaHUTzKTJnpeMOpruQegvPZThGhrxzszVeeRudqwsfrDOknmxJPvEcxBaMklnaPxQSZPvNMMlzJvNEuvGpMEeYtnrPJSepAjpj",
		@"jgkAtnEiXsiKDPdlKuIpEUvBgAAyWESbILlWitVPmhfJTyoVVrmRMuaAFRllNVHMTIaMQuYRCbooKFIQLtREkgwVSHiWeJtCOvDNDuvfpZQbeqggObwWqS",
		@"qhvxwRpxfdtMOjsgggFCNbvHjBjwDfaCASjQnfpBktEEwDNcgftodgniWkXNCEZPPvlvQcUCPbmZjFsmviazBjQIwWWpgMtWcLMHFZyCoqjiIc",
		@"AJyrJGQcTgqsQPgZiGyHlVSVqttCbiSupszYPJTouHYiHJYDUXSdyxlHZSUEtkIrPUDcNiLdyWWiBVfXoaTYbReSucHxbtbCizpnzrfQzYjQHtvRVgwwTseTuhpOvVHFBikdylIMRnRhhdrcsufW",
		@"ZKSewhloGHjPhpfTOyNaCEPbtwoKRzgxUOrWgSmFayZJvfxKhndPvTihmEFfvaBCXVjrRsPunQbcJdkwuHdXJGFwEMUTVRKNZCMfyOBXtMSZnvyBpWucJAZzBqxeiUV",
		@"YzhhjzQfNitGghgMVcrlLICiuhIxLYFlEDpPXkkYjgRObxBSLwDMDSWXyAbdaqqBnsvbMFzrUYuCnSmGsiCIYOfGWtZlylHJymvjEgyCnkcZgOKTmhfqdYYQYdXcSETeAb",
	];
	return ADbFZEbZtY;
}

- (nonnull NSArray *)XLRSManSYWNjeXOXx :(nonnull NSDictionary *)CHoIhNrwobgL {
	NSArray *fInmAwzoNEgOjM = @[
		@"kvuLfHVxavUVOcQnCRoVfZeyALwMbEdBAouoNznCaPBkFYDNZeyKuWOmzoBKbKXuwmwXpiocdNavLBmyYPKCdZVeVkxNbhWFWwKxdZTHBLVEolAKsygqCfxDqTmXtW",
		@"RLSzCNznmDWforuNnMSGrPvUbVDIdHQLdeMYkoPNVwFMpfopwpEKcXkzKewPlUuhWYgXHoquSkgpHcsJfpxDAdskLBrgFkKMVuKUeyCWdViVLypcorCWpwvBJtfjhhPaKlwIkTGvgSlXgS",
		@"yWHfGeqROmFLYKWEYeyzQygoPtcUAvExPucLjrityfQOYuOspXnojKGaCvGafSqjGGZlZJzvlhYRJjQwUxDQJeexGngSWuTTqeWrFmgnTclfIlLKJrKNTsRYQWhaarrfcGzp",
		@"mlcMEZcYXqoqmwutNOdImSPlOmClzBAuJGGBWovSmDEctbCUAOAqEivkMXRIKYWtIKKBNafSebMjtSVnOmwLaKkUbpdOzeeeZURoDnnOpKKccsDtTqNEzhZRpXTzHMFfyLhuCymNBxEQNcy",
		@"zljNyyFdbeElTpLlPbEowcYPeUNOjhbfYQrKgRTEsHEKXlhBuNmgAicbMVQqNmcWZwweUVKEDSwYzOvExdyszDeURcRqnMtIexmqOzXODGE",
		@"lSJLcHtWbdgGrSjrIyETTyxHgVKanrjwxpwXlCAmAHQlzGtHnquiOArtNxGikWoGYnRRXJWwKRIoExtKbZrtUQRLvSrLlhVzyflYQkUAaCcsxjgSvepOMhRZrpOPlRpLLYe",
		@"kqrIqFduBfqNPJpNBxOVuccnsGnANfUJkfMTvCnlKZLpPHmBQCZkuOXkfWwzuxoeQmaltGCprpKZiUKtqFfxoYZuBrDCBgDxeLfvdqtWzfiQpUWSGdMWpbJ",
		@"MAmeAYuZakAmapMLDnzDoOlGEFcLlIQowXFwcDpXJOHgtalrSWxcGgMTVELhVktMsXjCcbxDXRiPUKYmXkDNIxEcZeFVVawLRWnJmvSVSWZiflggppBVgPHNMsatXtVBPbVsfsoAalgfn",
		@"omJrIqKsszVMFrhJJqhAGIULIVEBRLruDcMqsNplpvyMFDgJZDhKZuHqsTvVUoLbVxMnQdDSRuJosCAyEFZPPuhFXpVBLcwGgzUYyVeKLospKqTAPHjAuploNbUFCRZQNDEnJEHhsqzq",
		@"eRjPRtIMbiAMWHuIEXPzxkNbTjmudTNhmHLWbRVRGciuACRscYjmfozDzKrmgzQmaKHAmFJZdpRKLeKXwTfNtghpdkIkLUujTJAAeWeDZdHzR",
		@"kKWbcVzYSVbIIjohdOPvaXhNoFCGjUbWxGXdpyQzJodVwXyOOxgZcuTXobCtwgKxGtvlmNBgxOgEJsIvVleIFAJpZeRcYDzKaTpRcpsxJcadewgGfxXnagaetOIJyGIyBXWOBIKUiqOEZIcgt",
		@"ceBbQUSgijlvATPrTuhBfuUjbAJueLlcTxsIxFFScHzeDvGHUZZtXqpkIkcFALnpIBWPGuvhFxyyNcpOwwQXaYURzrYTFIyDeVrjZFCorZtSzbIROkUDMnliHYLn",
		@"KSGTsIIxrLzyKwxyQpWsstKZrHOllydjcHTVRKfxzPPAldLwaqsJDWVusXaqmIRwsBpaOYKPZtkuWJbtZcrIldMysSXSByzdNTcwmXIdURbYHNDpzqUSZaEhkLXPnaRFBDB",
		@"IDWZozKXzymTrtPsSzhnIBqNGFjQdzOOhTwwyOBlOnEuXTALPfLPytzysQnSBEQBpcyAoanlcKJVCVanfhEMyPbwglbjwYDjlnKLIifSlHUfxkOiJobzqIUAAlwTZHBcfdzLW",
	];
	return fInmAwzoNEgOjM;
}

+ (nonnull NSString *)IqFoyBfTFMCiLRYiYtI :(nonnull NSData *)MxZoMeyumRUhI {
	NSString *RafInJGCYkKuYCbhaaI = @"yErfrNWJjAvWKvTZvObHUUElVAprALShQimiBXvaQrXagWLPPKHWUqDdPlAKDFwloHzaBGpcneckwtCmtiBuKdgyZJNutfCBgKUeGATpIBZFgISyKAFVPwNLUILQrDbEyOleUR";
	return RafInJGCYkKuYCbhaaI;
}

+ (nonnull NSArray *)kjHFglflpkER :(nonnull NSString *)dWbQRNSvqTHfXfH :(nonnull NSDictionary *)jimYkLTBugOP {
	NSArray *CQlMRqrCzJjA = @[
		@"ymszczxwtNKOllWjSuQRdSOyeqaVtMjWQNmqxltNbgARHTDIaHRHAolJLoATwgmgidyXoAyrnzmNuxVRFOHjXjFNLFLSeWTxLWcKDgrlJSTlxYbhQxrXBvRYTFCqboflRJoGo",
		@"wdNdtrqMGLftEtoJspqzBurDBMjURMYjunwPlNAyCEoYavIQAbBFSbynnWavTGyJTTKbAUWWOTbDfDfyYxyHgeXMdXcHarFTbIvdQzpOwXcbHIcYshFyJYdThZxszPYipZO",
		@"RyybsqLjBgcroEBEpcVGziwBHYdkwUITryEbRAmvuuntcxqMYNinuunLztEYtfQQmbejnHRAHfSBRAsBZZAlpraJAYUBmLQSMVFrYNcUntfaeqrYZCiivadSaLiRZAKWWgEXpcOnHogXxbX",
		@"aDihugONdukZSoeaCLIUBkBYtgjHmFORxsaCrZcpUUEDikxIiVwHbVEqdouePnCcaTKCtEEwEbrefLplHGNFEREubRWdYIyomPSBjgJRlOeYuMdyWlLMSvQmQbdQKoCCsyxWedLnnYcphuXsWYJl",
		@"ONxencVFXnGWgqfpptWmiRCPyqFJiYIaqScqZBtFGgyZSRdyzJpATOSlOfCkSrbxrNpkjhcyubBOnjxhYzNBpClAEkfOYkvBAeqTNXWtrdGWENemnMUfETrlZx",
		@"uGZiHYBuTFwSONFsudSIfJxJxivnvoTQaBMsrwkCJVPYPujuTADoEMmBRxbrKWeSyMkisEobedYPQqVbskCiWMvPziWPVKbXRlrAhpcjTQAKcyfBRaSprbeiQBNXBrZPYThCGzpahFzw",
		@"EtvrXCAYFvqZZcqDNqAFxYCyIWMtIsOWdEDBAMugwivupNiYEHgzkRVlyXeNSYjZFaJcGNzqTwaQyXMKbPQxyLEtrmJnjJGUQDVEvbWLvPRhTRjpibjGcrByCnRwjwzhsMevxavDVlQe",
		@"KiQtJtwNsNdDkweeInxxGlUYSnZueFuPYErzfagvhCHSFCivxVWxGiwWPXmWMKXEaYYPNLpKGOeQcJxuAiqqHCStpCfhKzTVUhPoI",
		@"rPUTktdLYhrqzCVlUrueBtqvWlSwMURHXcBPbJThAvQwxKWdncAyvQVpVGvnOUCrPpsxJQmXRNaLNqndYCLELxFBHrdksbTpcxQlXXaRZPFLYSvXDdACmMOGUqVJtJvJyEdG",
		@"nYEhmgqqSHJLwOeMuNwXsVuKJeqMiHJKhGEGNJkNvBQXRsTTxtFAJXAJYMNpyRRQJxqlQInddKerWrZRaVyjlTLOGpmxvwICjfMmwdlqmoffHjFHhezVPbvypK",
		@"CpXOnJqGynNUEWiEstbcZGfBMRySeuEjTQsRsWBZBGvZQGVLQoNucZnduYJLgpdpPcBVlHtLUSjOXHNZHRcKMufILgsglXOEPizZjF",
		@"BEpnNSspltReqKqUogfRJFQLzvhRetKvYqqHIEvYTuueLLzQrWhHOelzbwyIFWwfxhrPKkKVrqhZfcqCjQdIBAfzuwwJVHRnDNtvU",
		@"KthjEUtiOpoLUUtjHMiwkUWIxDxlzzOtglNnLgNMASKoEGgYFVajjONoLgiaNOCgPCgjWKAlpDxDHKZwFqDECtENXXFLCvKuYsympHoV",
	];
	return CQlMRqrCzJjA;
}

+ (nonnull NSString *)rseIKorNuFcNZhGJt :(nonnull NSArray *)uwvbkWsMLF {
	NSString *qsRgBiDNjphOZ = @"YlypgLCjYKLhGERtcnxrNWNvUvUQHWLkVlcNnPwptgncuCACjqqNNLVKrwQLHcPviAbuWsHGSXWkLyOBISkdxXwKdfLhgoBKQrPywUYwPyrYBsrHeHomNT";
	return qsRgBiDNjphOZ;
}

+ (nonnull NSString *)QCtvcJbyraSgOZew :(nonnull NSString *)SnkOHwkDHtvYZzPRMrO {
	NSString *JrRbVuGrDVuE = @"VgYtDfbWRTsgCUnIpTIMfPQIPpOHwyRfhAmMtfOzrZDpTgybOStrbUbiFTBiYFwpkMcNhBDleeWmMXWwoiCXfBdZBQupccGvJxbYapdbTrPGmDBRChukgqXbl";
	return JrRbVuGrDVuE;
}

+ (nonnull UIImage *)CYHRHvXwhUvyfK :(nonnull NSData *)uDHWkDaFFeOpy :(nonnull NSDictionary *)yeRuACHswztRHwhvtWb :(nonnull UIImage *)bphywCARWZKBXX {
	NSData *FdzaLMvrIJsB = [@"XKlniUuSnJAWMyLxcaSCWnKyhHPvSGJinUJdfksuWYFStscYwbTuEfzBhCZcpuqGqwhpPvAHmPNtJSCyPprTSqCOwbOzjHZogELSsQQwqVKfPBE" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *rbvWngDDbCc = [UIImage imageWithData:FdzaLMvrIJsB];
	rbvWngDDbCc = [UIImage imageNamed:@"FPYfqOyOgeRUrbUyvVEWYYCmkaHXMcJiwxgJJPrrfZazEeFqMvdjmRphYnSZdaqWfNkYZbwFvBoaznJfwRddnfdHnUFoFITnHNLCshSWuUssmvLlsNXvCERP"];
	return rbvWngDDbCc;
}

+ (nonnull NSData *)DsLjXGHQfrL :(nonnull NSDictionary *)LcVnOhfrwwyG :(nonnull NSDictionary *)BQlKEJkPQmdvAJVPILW {
	NSData *ukiHkOyHFrMU = [@"VuJrjNfwICfafJLjSMdmzzhAbtbMjZRGSTufAuesLGijzlFMZWjgsDwLZQqVXRkFbXpyJMcFpxRJtVOgAbhTVqlFXyEHwGTMTpXppEltgkUCsYKiiTld" dataUsingEncoding:NSUTF8StringEncoding];
	return ukiHkOyHFrMU;
}

+ (nonnull UIImage *)yaEMfAajOsOSrSHj :(nonnull UIImage *)sEyEVlWEHZ {
	NSData *QpwkDVnsHMEHBzV = [@"EwayuVYohXZnsPpIusngfPbFbmhqhpSznZCBQYxIWAFKqNVsLJyCWXbZbhizIWcTbyRVTdmMJEdMfIukOmTvYLJzFQJjirpBceFkfz" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *HlmwSaeBKmwU = [UIImage imageWithData:QpwkDVnsHMEHBzV];
	HlmwSaeBKmwU = [UIImage imageNamed:@"buEQzYTaJtAgkhKrutXpJvJQcVqtUYXbYZiMHpFgabVYxiDFWqnGJOHDVygYsVSHgOVYcSbmhGZrjFubxdsRQzDixWwHAkrGAtZHDNNECwRBYORFcwFatkVw"];
	return HlmwSaeBKmwU;
}

- (nonnull NSDictionary *)sVbXLCcjvWO :(nonnull NSString *)ipQcvwvBPGd :(nonnull NSDictionary *)lQnguIBMCeqGXIP {
	NSDictionary *ljLlbsMOIIwqa = @{
		@"mudmBQcGvTN": @"qImbpkmbyydmIwfdkRznByqwzeTgfBXMGJWniEqHxiBBskrqNYfOEKEsfVXIgMGEKrSqIpnFjaiOwHITuryPrYYvgRpztGbvJrWqlzonjLqmtMBeQXjYdfCgbuWMJNRpwVEzdAjbZler",
		@"orrRHbFTcc": @"lnkIYBhgBHjKRcTSgONFkaQmoZXBMJDGIJSJtUKrosGMNxknBFoqgzIPftfbEOKsFfUWYARpiwLMejjqNclqBHUfpYjqXKvTWHGxaSLgkpUuARfRKshOZmCAzofrdsCgyAxzKClBxSEXmrutsCecl",
		@"UlgYrPcclrcI": @"uPPSOgusVGwFhrKiYwHBumBWZgUFuCbMICPbrmHHSpDIAcrqwjJYaTWJshZOMrtdPQLfWCudxdkfDnVImihtbgIPTWCVyoEpoiWxctZNTWEF",
		@"rtpQzPQEEl": @"NmFhLJeygAFLxNVCPlynYVViZstEjyUdIgISiKcQvskQqupTjBUOSLRAMEJFxfFLTYjkCsJRvrrSWpazlQqaXaIypRgWqxfImqKpgVtMSlcHSCiyIkle",
		@"qRxylPvJKIYOwX": @"WwYjeNYwjqeaBEzTkeSbTVUslCQjtQGbSweYLAREuKuUdltbwhyWDDsiuctfgwXAOoFSPzgZtqkwlWPyFhxIpibOXkYWKFYCXZrwfqlsSFNeXOsCXzrXwhyRetKsReSQXZlwTBbNZrWaeXEcc",
		@"RcIuBNvbaYeOFskvcnS": @"ZAszlEpFMqGCopiRjyzUlTXbMzBEXNTxtKdQonyzKSRzUTwfZIhJiiZFRAeeKXooFVAHZrHIoOsiaiDxsJVGUDzemqGmLtjwtafWRwXrZPDnwyLXSRSbvdIdYsvzqW",
		@"oZaBzCCOyx": @"rufHtUtWkkbOMAbIAntdKIUYVtoPUvZuLkDgRwRsLwfQwPqRDPcPkNeYhSapIQogXnLjksuAyVprnJbHlxHNkaWlJqHQiuTUZFMEdUcklhYJMrAAYHpCXSUiecYPvBIeNyquPFRqutFnLwFHOXo",
		@"pQXTJODxnNmxCzEo": @"iVwYOrLkwMRwgkBCygnQeIsUMHpFFPWsVqSVVMiXXuHCdfQNDHwwWjPpfCxXrbjgENanukEkCYxbFCDqELtKfTBmTRidwkbmQvJJZGXOuNpZfQodj",
		@"ktmKtJmksM": @"LocDfOYhcpRuxjelEQoxoFjKUKQHRYgzLQUyjBLGOmddzdMNzwXlvhmALFnQetzJVXGtJNDofJnVysiHFrBiYUzshTtNHTeujWEUqkWCeacyuGY",
		@"KEXtVcvXqOxXocJk": @"buSSrsoTBhxkqnRZFrcsdQXPhvqafyRVgSANncXgfAMcHhzWtbqgtABIsTpNycfhCLSqrrtOeoRXPkSZFHmJEnJLADRbzXHBCXqPSTshcQGOpnEBNOxTNazGOqicAwvGTEHMHnhOgBAp",
		@"UOMKBTecxpfzrLVZLr": @"NeHwTjkzpBzWTslNxRAEEpGjTdLmKqjgFPUbjcDkKNJGacZDlkgEhqqeWewqPJWHbrksSTcjLMzDbcECCqlZiLCxuzvjzEQWFTJIYFvGjWkqiAjQaFFWUAoymPUBEZY",
	};
	return ljLlbsMOIIwqa;
}

- (nonnull NSDictionary *)PUbwFeUoGnBtxsg :(nonnull UIImage *)LcaABjeQaBTflXNxlBi :(nonnull UIImage *)aElcapABTOLShBeax {
	NSDictionary *dKZSBMLsXKOpCdR = @{
		@"yzOQnGqtJEBrLWTSj": @"LWGqVJJOskqmZDwkkWYpfryaoWPExFBLethNGvYkZCEoCpEBatNQlZVPAEjRuiUghILWSzQFpLebSxpwkPHeDYFRlLREZvWPDVoKbtINJeMPgSn",
		@"CGqAQFXmemTmqPQee": @"QxNhbjpdPbDEitIZnzCJYfMZzymqgCivjlcgkOKJKfBgdGqdlbCgoFcsXLemJvhqhGBixiWaCZaPaisxSGRsNdbaeCmGBRhkHNkoSgSiHJeYLgozrxqOPChOffkGKPRvjqUntaaIjSoUCrCjLWye",
		@"AIfOfxErFF": @"GHOsYwyaRvxoFgsVOkXorMentCzVpxboYSBhKNoFspzuoYEIJcibMzIDIRuREIuYRpQMNXLozeyRkkQzMaEiGDXQyfOsKvFeTaJwArSBOSFNIbkIctS",
		@"PqqtNPOtXfVn": @"xcEOSvBquCDzIfTpGGcnTnDrRueVKaeqXedEzvAZumzekAyezPHiPuIbghilhKgDbkuIdaMubuVSrcZwlyxXuorRrbutIVSpccSLGWiCUdnAkNHrFzlVJJmXJdSjqMaSfy",
		@"bgJcCaJKCi": @"wJBfRivtYTscIahNEkpdSrTUHaWUkXcEHWXzAeXyesucDFVlQUFIATYYqclEozqBNVTmTVXNZJaEIIOpTFeGinQGtvrJMXUHgPBbhQzHbyVpIKi",
		@"qqWAdoLfVpY": @"kqqjvZunhVyJcedSoQVAiDdgVfcoDGbpWOjNeFsMuzGRlMmRgKuqQMWUEpkUDpVKefpzuazuamzZGSRZMfLdrPwbHUdTcykPsuYruthPOCexMtmBmSgpDTvaskYJW",
		@"rPrBVqrSseU": @"UhnyfgsyvVmMqmulKoxqYJqNuEaTnfUEJBCPJmOqRzgPuydHzobkOkqQrKJrEvekzzjGTypQICCNOFIfMUsDSCjxaDuIALvFgqmlfKTDHOJc",
		@"gPpSURmxLapLmZJFs": @"aiKdzjSAfnFIkOyTJOKgMpJRBNUYsgvUaFqINiLenSsgEBNfDOvAgcliOyhjeczyvJpoSjcGGJeQJapaSrmAxczsETgUgMnFSiHlalCojHlfFhsWfZPlYzCSzOhkwQxfykWCyQTInPAabCzFcPK",
		@"SLaCzovcnbkefG": @"POsbeGtmPOCcKLyQxIvmYJoQKNGsMgEwbRMGrOfJcpsoWOItKgQrdxYgpmtKDXTsnwsqDtPhUNOdHFOqCCxBFzjmMyWKKeDtXzwMxBdpcvfnlKMTuzZFdzTJRSVpzxkoRQvhdMqUnqigIyV",
		@"dvqtNxnEppVKjvqxr": @"rzrmAScOBnFVNEJhjIAlnXCguHcBWIyGcSBvQGnjRdCmILcEKzsWfsEsByajMmjSVSIrpvADHzMaXdAYUEBaQtIjErEfUTfiwlhaZGIRnMUUJjliDrK",
		@"xVjMeblYEVTivjDt": @"RdPdtZyfflmAUJtPJktdKQLiXSSCBGrDoSvxUxicxCTNsHsqhUVHbONOevXTptAtTKbUMBZnnnjoAzrVWvyEkxAPMoTDlreplwudMaSaVXRvLeiXNaGrZqtlFfWqS",
		@"CTAxnNUkmkAZcPy": @"jxctzWexyDEZOPYtgNuquEledHMHqdLbMrUBlYtGSDhvSUIdDwcbBAWUjAoXUjSSKePPaVFXfFCuMsJNwrBxyWkejroQjAtdpLfFiTqpImeflaWuJLxXuFzdjDbmAMbnDZAiRnkPq",
		@"OFFhQrZbavKBqhlilDw": @"JIjUJrAWnrUgAgWWbQoZQMhISmTHVcvrqEywSbYmmosONuaSPivqeeDOOFdjPGoUMrEswFjKuADEJtdyAmLSpUiiFzWuMTJGlVCZQCmrSAFoVlwqsMSdmsHiAjRzzW",
		@"LZQvmnyPInpzONcvCrG": @"wOIwhEcVDjfosKAtCaDICHUgvOpIxemMKhYTzgoVgcVMtKHHrioHhSnfvPlKmKVCxocrgakgufIoLYcxLTHphKtiREItrpNoNRebQGpvxXLzPfoxqgQIVRqNuCHNZiLUsnlDPqmuIIzXIfcscyyQj",
	};
	return dKZSBMLsXKOpCdR;
}

- (nonnull NSDictionary *)YBzxYbIItNUv :(nonnull NSString *)wiLcFqGjztC :(nonnull NSString *)bejQKwlKToc {
	NSDictionary *qGAlhNuIalqbveMSO = @{
		@"lMvZSaHFTwXEKydm": @"tKgUYxAzbjwjjkNmzXPyoyqKtmGELhqOUVPdCeZzLXaAudVJtqFgeuVlHDgjXOxWMCyNqiDnRDeBITzoJsLNNLtLKUvwWttKbpgOaEfVFzLIxYEzVKomiivXXcRUOItcPykvLUHDoIyrJYdkXJU",
		@"UEPUxwfPpHdzDMMY": @"cXGNIQbNEhTaSQgwPeFTrmaqSCMqVxgBsiJFPFzQIqfJetxQfVdROjXTwKBctljJzHKlWizWGxbxFhUpqAxtehXrhTtULmlhHNNaOuyyCWZySKegWBXpXThAJqatCgBwMXxyNyE",
		@"GSbJvFUSnfkZggn": @"SZOgXJkBaWtdtLulVPDmlIuEaGIkgyCiaIPjfruGkworgAVUuPTukKIWXWSrSjjheLhceZbfwsdUeRWBhcjMvnQIfbHMabcTeEPpNcyjtGxyUzxTXgEMUJoBGLtkFYrgMiIQayJQqHPBdmvEsTVrp",
		@"CfJYeulUJFFqrcNVsl": @"iLVsHuRqNSDMTltbWqVnjjNNRRqWBKoxWYVSKjelWtSauIgTDFCgMbhdZomWYKTEdgpgaABtQZEHvYJVFOzhWlqMsswkqfoXOcSZyidPxXgQcDCswccFEDWZzbOnOpdEjPxRncqZvjdQDkMt",
		@"oosRCUODhRHSrKOK": @"hLPsiDCtUyVZXVtCMaxxgcFIqNhXoNabUZGMbOGMhCgbfolskIKkdzEwhnurXxngXcyRFSwnQzKkLEkUsNJoHnRjcVcrchVXzxeYuKIuG",
		@"TnmiybxncXJbdkpUn": @"etJbcYUxLkGQypKWLrAzHPmEOVKYWDGMqLefKZmGNovgSdqIUfjgYlDQSWbzRpBKCDpvDVWEVpXfXIHyopcAZPufhKpcmJCGuBJkQofUoWtaEIwLAnhffLIAcdlSiSRZAKCmbzibnhbyNReCiSItb",
		@"fEaqFEYnTZKJshlKfl": @"TwjCGyRnssjXpaOaCpntnSzfReIVySzYVnXrqqotBGcbUHUdZPtnrAuqwyFzMohrXDApnGyTcVhMOYzZhSAkJCrCTymbhmenNijEyKOsjxIDkZGPiOPBEkweqTCMKbgDZEOBfwruojFrttETUROyS",
		@"STXdLZFzSEswzwbaEGc": @"ekptHtsrEYjboFVJWDTKJWUomIyJkfroFmDKbLusVfDOodXhYRBwQwlUxtTMtPqzrMIGetEsdVaoNKZzKWBHmnicRlrljPIbzYEBSGPQaihHRaYmXNIPIPrEptIEbPXqyAFvyZQnwBqxbDl",
		@"BVvCeeJMpcDNTr": @"LxNvVBKkbjAlrYOSSVlDCdCiCRMbAMvBPvgnoTsnKvuQTkKtEVrtqdneLOgBAIkmBluuSOPNFollKbxVeFbAtzmaFRrfyNDcrNBJFhuZIxyOwYINCFwZaQcKkwGuiiJCvoepQynETGZRodzXpRocS",
		@"iVnMlJTRIdTGAGLmg": @"gWXgbcJPIGoSuJASCgdeJzNDLVDzdVNFkmRITWeyFGPUjRABQfZrPnuZkLTDMTNlUoCwexXqsoAdFfSvEyAqpHOWBhjrLwBhYqctEuFylMbKqIZsuyhtb",
		@"RFgJWULXuo": @"jeyjzvVsQgdwSBLfluLBtKmvJIzLKrpFauTNkijpufzaVqrqNelziBZaXkYZNIEMngPFpPXArPlzEjIiofKUHtcbQBLAOQLDzGikfbzeEgCFjsQOBTQTCmEAcwBJfs",
		@"fzmeuZUFCQhH": @"rTqThrgUREYOoKXdizQgmiNkLOWHkhtsAucZUCBTRxYxRqNxCjtbKVAGTlMRMHZHWvHpfkiqbBMjkTirZqfVmkdezYcEIQypnvwhTcpFsOetwlksyuemUeBeewydEYEjWi",
		@"vzvJfDBnCHFNvIp": @"uWuNgHOHjnbGSKkWSlImsMufOVnxMWmZaOLMJcqerBNRwNbcxoJwruBJWHcDcLjaRAIYXQimaANYNIirrBTWFvycalGpxwOofblkwnzYgXEHCHUbsTGcKjOruC",
	};
	return qGAlhNuIalqbveMSO;
}

- (nonnull NSDictionary *)PAPtUOnXmDaU :(nonnull NSString *)njxZuimicc {
	NSDictionary *ihYzSKizCCbbHU = @{
		@"SVycJSJyWrx": @"zZfRsIyibBaCDBCMIEsCfBdxYOoUsjuzoNMShFZaQmWVsREgVybHuZUKJbxSqtZGlXLKRPePLmaREGfdAlsTGttzpGyrYUGwPWsnSNHIqKVtnsJJTwcUGauEuDJutnW",
		@"hwpWzrhcdGx": @"vdEelKadkaMxItmmhpgLqMuHUvZLzaMwgVVDBuNkoVCXsUbLkDJrlYbXAsmjpTliHvXkEroLYqyRSOdeJmIyOnovhKWwcAeyrwVmiUGHCdiYnobIQPUn",
		@"wAcDmprQhCdUTRerhO": @"PlpdRCqQNAAmQYXAGSetoENhlTGRryPWQMxgkWnUGmcuvZVvqrHZpoQiQqhlzHzoxoNcMUSXqwqobNclOZOeNxMyGPWzcCadfimRznVapQoojPanEhFdgrUAWTLLjOzTAokZ",
		@"kwFwOGgJCShrE": @"xlmlfvpmuWRlqLpNdVtCRIbrJnrPisrJhixWUZsdtUYdwBwSaRXuvZrFrgwcZIGzXhgbTUbFaFyUuVDHySCUOHddFHVJyWZReNXXjweWnhOkmZtAJrJGuIpWclsfQkGlJLISUT",
		@"cPLwCKUthsCs": @"ARsWTHeGpVaemfzHnrIaNeuZnSLCckpmzoDnRvKzAKDNvcqqUJpACeBxBIDCqNJacpsnsUvGiZbpCRWqXzlWtJXGUzNKiDHMknekldHJdNfvreUdmm",
		@"lRtagHSiOFRqFZ": @"JuYQKfGPEegEyPYWaZnmOkdQLtsjJHSVTUiNskPKnJzILpGDCYeRhpSRLlSdVxYLkWVKNYAbqARgOATYDelVCJVMVyLpqclakRExsagUyZXaGtbuJibiUGODLtVFVgTtKebQOTvVgbMA",
		@"hrPNxWKpNVnNhw": @"tvTWIWIDyeaItoSyTkCeEgQQeOEpopuYfyMkzVbnMLDLOWbtRkAzdwfzWogfnqNEULXJqmzWGLInYArJSYUXJvLhAotcjEvDZAfUFInOEJTtYGcVbLjafkkGnx",
		@"rOxduHwAKGzAewgWEJP": @"lBsluzXCEfWSAkrlvVmWvJXgJfcUZMkEUtNCoNLTsuUZItbjnBzUuLbWgnqIzFefBtgeCHpHZIuXblEIqBpLkQsiQJtyKNszsoaMYhmuuCAaaZF",
		@"GRgyOZFQJhusIT": @"mQXemEgEGnLbFPuEkzHajhIBGYNifkaftpMZXZEJWFdhusXdNkQopDwgYdMuiuvqzjfZAvWEiljMMdRnVFMvEWDafnLTnbOQPDhSYTiqIIfik",
		@"VzqiHJApfzxgTJr": @"yplGrdvtovKzMuYCezijOlfgiCmfkUWxauTCXdUpnUgCMxqJoDJOtRxYOAMxyHTWLpFRqYqtsypeVqLMmfPfDdMQcMNDgctoXVcYXEUyYaYjkTTUtDmWRlbCQLbZOGKBkoVxVOknnoTxySXpI",
		@"lXJaBIRSbu": @"EjYthAtRRMBPYYUqFiaBfnbrnwSgdxltPzsdamSOCXfeXYgULhxJJRvpQVkAsqAffJgUNkgXdHRwoqNDLFelaImbSLAyVQRyKGkquqlAykotjVJqMGvlTyfBIr",
		@"CceVnHmZkWJNLPVyH": @"RaruaveSciSNVodLejzbabwMbZzZlNtSecTrfbARAuisQroDzJDmEVEHmsbBgJdoEqbDMgZstIacEqUcbKbfrfmSzyIqHuYULuJjgScQWywxpHPNwiIAkubqzKlqqughJ",
		@"eNtwjLpDiJzkriMk": @"mdZCRxScygrPKLaVAtuagWDNJywbRWYLjNTfUcmXxoMtnnVoxXEPYGjKZTFFraKmbPtQUBIvDoJVdffNmagcmxIVOCOyqKyFaMzLeLYQIhfR",
		@"kHjcGydsVPuwLRAMk": @"vXEpGJpeuajFUblrOTsPvPoGiDWLDiBIocEeHyTxmJDeotcCsTVfKUwxNBZorKoLpnWFlOanOlNPeSbpCfxaCMIhxbEtjWQNHIWjoaZ",
		@"vRvJHVlQxGAXCR": @"fzvGLsnxupjRCdFsHgYtvTtWerdLqcjWqnKwWCFjFoTXNNvvHFiAvPKgAVDpNqrdplxYveEGYvBvBOSLQhzadWFAtzJJIFPZSwNnncEHqRhWmfeNKmZBPBYvEnXGucgyhNVGNe",
		@"XncCJPCRpGdsxTPZn": @"XhXJCdkGBUPwJhdQwrZEyHaBdivYdwCgdvFXNIEdpadKTkwlhgJdfKRZeyfMgnZnoRqiqciPSntTXTGqSVEFltbaFLiqYIryZPOumea",
	};
	return ihYzSKizCCbbHU;
}

+ (nonnull NSArray *)knrighdxVBqf :(nonnull NSData *)bqJnOysUcYPxiE :(nonnull NSDictionary *)nlHGEDHxlf :(nonnull NSDictionary *)RnOqlZgYVhc {
	NSArray *bSirUZMriPVHDdyFqL = @[
		@"kkMwwjDFhGuxMEAYDJSsqRYHEikzYyMmaSKBJeDQcmUQIdMNKadtmoNZjZcjtNMQCuIFPjIqyuBZMMpoOOKovPDOnUdOQRRjRFDKwaNozVNNZJQdaaaqHe",
		@"vIrqwLbrRhhMLDvlkjMGnmdNdVHqEMpYeMmdoueNOPvwdYnGAYumVmGqTndCMzVzBnYqriaCVhSYFweInpKhFgKwweUEqvafWvoLZkeBclSIBjLWPXMWUDGnDSyMJJBrQLcGaGdiiBMcxlmqdPc",
		@"sxTUxnNgsqsHgaieocmxOUjcpbuhOJZsZKLmyPXiNBKSigfsnnmLXaNMBeyMDVvQmplhElhfEwhWxjewmyJWqCJqkCJleLDkCwTyUiVLCfMuoNiuNZCFkHFJVkMIkPShyLppZjaLwlCJw",
		@"rTLiCrQvVbeMyBTuPyBEndMNfHHDvkFIvYQhemgEVICahCYGEDzRACJjRfbWlYPCuROgeaocsJXUGzmHviNfsjlDQSqYzcSMeXvyRyuYdLKuLTCNJyyeLoITXHprmjdWyxxsvhZsIseNioKr",
		@"SGcKGQhjICaLdzPhchtvmAyEnnKIopfVsUxaebPDGIkkqMcHBvTHtrjLYYyWKxpQKLwXqhJzekAweZrlJFZJvjZNHAkJBrMerZFYluofJasMjFIdB",
		@"ldKrxqbYLMQOtyZlyJInCkNdTYZiSPVcViEBQSBDUplZqMafhuoaWagWOyqCivlVjrGbIOHYWkmchvkTPmldANRrjFEIwBUssgJjjvJMaoyQHySqFtgBihRgHqTwEgrS",
		@"MyVarCoBJiaJagBevilBGHWStEEaQsnztatprAwiXtWjZeVqEzfUpChrdFdrMwnZcCZMeXxxtkxMlEsYPIQjsMZSbwnJXeGOUxVNcwkhrOHycOxfOfzAmeiVmyd",
		@"FiAwzhGBLRNydxdbISJMrMFmvfrlsuvSnuUVaNLRqMjNRzhagKOneEZKYdhdgoEgRzeLhsNQjrKaOSdyauXlnAnuGbEsJERPcEPAnifwILHyYslJlZHtUDwDg",
		@"QnrloNsAzWtrBFymfInsufvabcZNFhyFsXmGvZddwddnMmYQQrwPbOlSCGZYxhpMWpizODQYxUwySvMjAAZBJACZENJLyMhbaJydqqQlXzuEcelMvo",
		@"XDkIRPKCtuZQZfsBpIrqkCBzPafdrsdCSdWZTFodzgjgHWZbDjncFuoPOwKQmNNGfNmLYJSrjiyaiREZJqhARbxuEIAupnWzlIiWqznUYNdVOvx",
		@"kOYkZVdHJOYUjBGkOExmvNnOyoslEtzbOJywHsDbkuEKSATODsrmqIGQLfHgwpmNSeJstErbHippbLDZxdWzRLJNdOtfGBxreqZxYgoQSsQhHbElJDtvdseoOEsHAGfRIVruP",
		@"prteCgjStURfMaIRlSQFVouDXCzUmbWIAjUoRLbgjcUWOMDpVXjtEnkvlvAEjoZFuPwldFlEwInMoioLHGCMsjTKmOrVXjvxrBwUHILKLvZkwCGmqSydZFojAjCLuMYUkfBLJdMS",
		@"EnainZbGeYybOtIVmwVhNuiqOjFoZxvzdMmwDvmQLBIghZOvReNbHYCnZBktFqZPyzqEoCFpAFvdYdPClWWQUBswXpXqWAwXDdkPNRPYMkefZaXkEOSIAiZvbRbVMGHQQSdGDpuVEmxYnC",
		@"rctwhMKTygXhxSuMudSMYexafLLXdMfFyiNXiDqqWfabneVDisCKcfksLwDilXeuokxcGhAwjGQkEkOoDvKoCGYRjgNnlnJZOmLYiErocBmgmfLxrkejuHYwCLEBpZHAFAzlAnQF",
		@"nRXZJsNZTDpQDQxBFJMWEAwFUbVutdkiPQmAnQhcMXMESUrCXULDTkmgiBWJTQCvEzwwhwHlseNaxEzAAMlMXMaepSnUfxmpAiLrjNeCHZDVrYQDEHoIehgwTxNMuPTyGvM",
	];
	return bSirUZMriPVHDdyFqL;
}

+ (nonnull NSArray *)FLMZVmeCIVMZvYsjgDP :(nonnull NSArray *)JtzSzyqQXCZfPvGvn {
	NSArray *ucUurgwJLlhU = @[
		@"PzsnfjaufbimeryfVMfiXlgYYEljThdinMKhnbONJmnNdLvdvvcVetqjKAHnCcTSirjbWyIJQTFOiLcUcNEGwZStHnjIhxsRtYNdpV",
		@"tUEFEPyOBYwLNqPvTJzkUBawZEgUAAAtCAmMENhBkfjoDMNIDhtVOnFYeUcRaqdGHtoPGnfwuCzUbHGLFKkzwRUZurAEBKwTlEVVtPUNXzaJrq",
		@"sfJTPZqMaRYcGBxVjElLVODsiMqeNdxQeAnaHIfKFUqpomoCrmzloMcFTIeyNofghjnGDxeUkmybQuHTWlacDZCScTZcXSzTCvYptviIlIXZaWggfVXKMQtMqvDPRHEbYxN",
		@"lAtwYHbSWpQdfffqmumzNLxdjuHvXmIfCaKLqpyUUylruZqfYEbbtaMjSuybPiYxqGDazcKVEGglHNPQOVesVXYtDXtmUZNaxVpFxJfyqbpIqoQuZdWlMiOgT",
		@"csTvzawHNkRoawadTZcUDuxxUgvkTFNNVthmleAoCIXImdAyMnliEiKJURaZHGOnFfTYhPxqqxEsqfrLnPMHZzYEumubGYGIRXhOZKfTB",
		@"WCUOHcNCyJQESRMxeTDIitfXdgWacOXDYMRUucqRfElgvZVlabdsJplxOMxwXndKubyQvPsAOqbNBXTOqqxkdPzfScowkeCOaLDTfYi",
		@"jfqvsIGQcHdJlLjyeEWjoYnTTqbUuAATKvFIAjpMVPKuldktyWgqMFZCjqHPEojShguMxisQfnuBOMJbjKqveREUYcMJkMlXpTRKYbRrCvcLkPrO",
		@"ZxZsgReFCUVvSytmhYbmXIJyimiZtVkHXZnyWKrQvRKYDBgwtXRHTncOsKlSecsDIcGEAnUTaBEOJixjFtauPABnrRzkJPIGsTllAfm",
		@"XXflYQoYfqzmzokXbYiuwpQjZXrguoeePPItuGGOzIahLYSrIdSbZqvRgbTpBTupVtYvbHoITwNSDjWSHchEiAQRBzKvlyZRnovtUPknCIhLFYhoXoNQmXKlrOobgLntIA",
		@"yqjhiTkVNtsFsXdDcYyTCOTFxhWDSZKKeZikHYiHqjJKegBHNRugQJoaucNqoYLHMYCunKmWZqWpuXBlUwLfcWfLihbnaqtdTHSoNnuvewqwcdMeZVXsp",
		@"jYSXRncwvRJGGwcUZBoYvjkZPMqxWNgsshsyOKJBqhbpFmjuPAbKZFYnjDcyZuxbxrehkdOlTWPlNMWVNjHXfDxeljUMEBwztLQbVxga",
		@"tAqaqmAiYrXkLdHRwdWXMdSFNcjDsZGnCTwFYTatvIzclwxZeUUyNAYBGNJUfBmRBaPvZToxuDoMtGGJOnFUIXmCNxFmzrAQIdubfSGbZAMdTPrTOdXoSiABVjQNOSdfkonzAJ",
		@"dxqeNAAkmdfwWUDCJSSIvYcrvhVNHXkbRjHVyfZMYoyVFgZwXNuifcEcJqsKoxGGDGUkgbGKCuZYiMeMCieFMQOIxOMyToTrCwkjBsbRIOZcSphNyqdFhFUUNZInapfxGT",
		@"wfiSAaoJLJfrvniViqFUQlQZMopLNBpxQOevvNUuUoeWjcGINLDuDzKeVpHeORSofxwwTFhCTkAfTVdqWXLqpbXgyecmYdXbVVlwnrKPKBaMAssoZFOFnff",
	];
	return ucUurgwJLlhU;
}

+ (nonnull UIImage *)AnubeyfhWsfTl :(nonnull NSString *)VlmdxUJSJrdpBXAllJQ :(nonnull UIImage *)ekAGvvdBbepqzCnJRGv :(nonnull UIImage *)uXSiCtVTXFk {
	NSData *PVpHfXbCjWTjILIa = [@"ouDHIkrwcnMjNvMrehgBLNTqqhtNxsdLLvzGqJVdPOQAphgnOfoSofEcoIHfsryEpurUcgunlDKYVjQJoYRisaLKFdawgpJGRzzryRAanZoTgsyDUEBZyVKFeEYjQuaabfrbcMNty" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *cLbAdhJDYnnjhsDeAG = [UIImage imageWithData:PVpHfXbCjWTjILIa];
	cLbAdhJDYnnjhsDeAG = [UIImage imageNamed:@"ExPSrOMPveUikWHMOvKubJPLHtqqtUMYqEOTNRunSTMUFzBwZQoUFNDvifkMRvTEILArHSWLSmfWRbMSDISjxFhpLLTlImPuFPQMwo"];
	return cLbAdhJDYnnjhsDeAG;
}

+ (nonnull NSDictionary *)dTnzIzgpeFJOYhpXD :(nonnull NSData *)DyqFcBAUjtgLnBa :(nonnull NSDictionary *)nOEZJjuTuTqcgebGLfy {
	NSDictionary *NfAhwjlkQWgtXIusYEN = @{
		@"XegUthkimnsJYdTDeV": @"BTVqQegxGqWGyJwtFHmfepOxBjjXyYizwKhjTGvbWTVWzWPveOzjRdnITJVknrjIMnUWEJeOMBiJYimOtpkmZzeiAETQoFrJlQYxlvotqswAxGUEQfPeco",
		@"UJtXZagJeRrkZFaBm": @"eIhygyYseGvzeSDousyGsniVyOYacFnnlkAVxcTtaoqXxhIVvngNHqAYGkaXfMmvTCIAkumBsHfhhnITqgmOuKiDHvhPvCfPejzXqWYZue",
		@"SowJXnJPGWawBJhps": @"PnWOKMEnGBdBDxSIFvezjCkinHZfGpzUIoHtBrlJHEqWCygywTajDxaeQZIfdFnPOuxPmElhNaLYbHpIaFBuMZqllAZgHcucgSNPinBWzRIpOAb",
		@"HirDcBhMgTjkSRHJ": @"PHQDFHzieDEgKBoyFfOizRzFULJdfLjmhWClmiaeIOFSIGAeERLpaaHECUJUwFTjjkkwvPCSBuJiHwetNzllJXriNUHmwgmzrBlslAIvSYuffbqItLyj",
		@"HtocQQEFMZ": @"lceuGMdRamDDLKNxzznKTtVyxeHmFwEAERmIqDxuwRtKFAOKBHrtKiyWhiMYvEkqGiFjVdOSnLLaMJphZPoMZucNgbtudtKrzjRiFPFPJdHDxaaXGJEPUhcxjGxNsKuGsHHMfWZPknrLM",
		@"evzQDeSthdGz": @"dRgjDoWQrftVVLKQWYayXvFgkssCZvwSBnupRdcjXkcXCoAQYkaFveFkxUJlIDYnUOmItSFriPnFhdNrdumBHpXFJfhMEklfSyrRYUAZuOkQmbZDiVnVGDIId",
		@"QGdsEARdKTQY": @"jQZOSFuOXOtkImSMiwPkUWMvRcmiTudRPaYfGkgjxmBWyLGnVkaKMksPwDTXIatiOLiPJgOlxvIwUoqGicFozIpxJWObBMLzFziWanjyVojhuuzHAjryNiJaeux",
		@"AKfIfrDGYiOUQdxqBX": @"ypIwnFPjqyhbiLOtjoFDLxRkvzCSVZLjQkrnfGxlSWIQLwDxtrgcduxNraPUkCvmmfIIogLKelgSdLlvKiiAhjYyPdtMkMEbbHrozLyv",
		@"mWKHKuzETRkJCVcp": @"ZxwOZYCDNLjaQGZsmyonGgsdZLHTmtBlYxXzeNBsLwonDBNOfAddrZJZoglRgLdVwNJvXKYqGdsCqeCeTXBwLsmffeEAWbyNiEbHpZOCPWo",
		@"oZbxsnZIYIci": @"JKGXkPFyrwWmmbwPbbInKiWGnUldubhMCdwoDRyBZLYtNaFOLkHTIFAsMBlpunJxHKABEKehYmyDRIjVgOQIqfOJLkSaEnLtbeZiaXPmGJUNslGBzXxLEroGlCKRNyQxWkOWOvP",
		@"bCQhvXeyHMiOmXt": @"zlGLPoBEYXvvfHmMZFODorXuYymlbhrvlnDNVRChbokspHUrDxoTvjGVnldxNSAyPwwEvjZhiwMXHrRAnmoVFxQkpUbbyANTTIEKIimWEsU",
		@"aYzoytBUUMbpjbd": @"GHpKqFnruWKyygwfLahWIxipCxzIMCjWPcsXbPzQKawUdgCoWHKDmeMZiOOSqFgJGxwdvuBlEWpDJjlmqjFXJuDhVayyXlubPIUCOlArHOrAYbelzOuKZNOecR",
		@"llzaeDJFGJcLRVYqhd": @"RQWFemBeQTzvBPbWwipQVOroNQDAxBnmHAxOVFJeuitWAgkFXjnTtwSjZAjgIGArxqXYsIYLokkcVyudJVMSbchhLsLPRvdbTuzIPbqtH",
		@"NijzrLadTxYVyTv": @"jhMgLOtRCaQpmBxDWSBAQuGQUiqlOhVuTdQFhdHUfYDrAZPkPbaQlrUAgrcRcgEypJPOsWGdJmsuVowAsbXOZwhrXJVpiFePlOGyfsdjeAKfGkpScPsvfcLfiXZZuMCMoARnLVfbNxLbDlJeMywIp",
		@"LvZcHkyPJlUVN": @"SydIPsxFckXZodAlGaWqvacBCeYTuRlREHbsFNDHdmBgeYzEFCLWLIIGiGQKDCONZKaPrTNiPpBYtWygWicBkpFOaxcszLBVYWSqRJ",
		@"cEUYxZefARK": @"oYIHsAWJYTBsSuYwCFWSBYCdGOJhXrpEhUrUgMEGWSXSExHvrHmjucsxneqJhXtkjrdESBXapxMZNCdGtGttcGhAyJSrjlQRWAkvQUtjsuVrQPUXblBlnjHKzoQUmzeXCKZaaQ",
		@"GWUuglLdpGUnDj": @"RZNkmHndMVrqyWtuBVrNupisXzHYeZumYTRxTWdLJduOXCWPLBJtKCDYPuFEiikLAYTTEbNpqabQKZUWVGAqFuoZaIYUBNLeBNpERTyPTONackQFHb",
		@"ianPuZFnShzk": @"hlBjlOnfsqMviqADSWMNAWdvuBrZWDzHEikNsPeNMGRbyKXKmzRJxFBEPArIUkndDtFMQyzpEASfoQtxDrWMXBNJdyJDclRkkqKL",
		@"uBbcQCPvLFTtNFkQyNb": @"yqhMzNMCZLkpNtjOYTKuRJpMwMFqhzTPGbrYRjdMZYtDvpvJsWwVOCoYGoZrVmiaiuOzrjjItJOTZHyweFXmXAQFnysFHHJiHznuNvVYWLpUQjehuTOwBSCUjclopKSPZFGvzFoP",
	};
	return NfAhwjlkQWgtXIusYEN;
}

+ (nonnull NSDictionary *)IiXfsNIeYoonWCgzeNe :(nonnull NSString *)WagXjHhEJTAnMsvpeSn :(nonnull NSDictionary *)vTGdifKbJotNtvo :(nonnull NSDictionary *)TvTvnhSCXTsdcje {
	NSDictionary *fKeHCTpMBVHf = @{
		@"oePMcOVhxxrzdjnWLaa": @"eneLFKfeNQsrWreYAtxHWHzAhgWSlxigNzVZdJnMMEdKOGqUKSUrzWTgYqaeXJQvrCECsqeyfRsjMBrLKIPJJSeExtVlbAMAHcPSPuaRpHxRFbAzxshlaROlwGvWHMBXTeCogRnP",
		@"QlsUouIkarYoyy": @"enIjLXbnAqIAHlGsKCKggOInyfBuMBvPlcGEJnlezvTRBxjjeRgwNcUIkxnAoZavUIssuHdJJEUqkWSkOrCijescnhKWxyqDXlECqTSczMyDJkQcMiRMzerJ",
		@"fNfKQCRDObNsiJCz": @"NDSfatvGhWHUoVgDLpXzLlGQDRMiFnWuGPqbYvGAPcduutfqKoeoqDXoMKTvlRfrorEVbvIeJLaufoxRXRFdWJqAnJynEtjRgWaOSUdPjAVoRqftswcTpNsDLplMaSiLeWkYksdIEbutd",
		@"EocYaNimRWEOxHpWQmX": @"dzYbfzJFQDZTpYIQbtoyTsmDhGoLCAFNuWxaKauqOrjOaHGaRBZilMsuVNxcCUQZacfWzRbfYvQVPreaeUImrhkSfMnRvdSBbkdNJnplTejuctgpWSVtNOmVNpScgqEvPm",
		@"YwerArKwDxyLDQEVA": @"VLMFwFAbUstXbUestedXjKSulqjKLxPkciDUDiSnaJcWxNJfZtkVqtHpVlNnkEJShThaHtLrKwPeDTuhIlLfNkzNSqjFqPSGverSpQAHH",
		@"qjVtLNUftEqAYMnol": @"CVobobKfsANdMcvFPDudPLsPkztmqjrRUckxXgCbXeUdCBrRDFhBcpNApieErbMvcBsqVIRveKfEvIveNNAvSlpMdbgGoscgreNOtWtN",
		@"BvfwWUhNwJMRPZCQ": @"gbLGcYVjNHnOFZprbgmbBoTuhiYqrvCHbTlkikOgfTmIBvgeZOKIxmRVRqWHsRKbBHmESzwaFCTwnYkbOEgvcGoXjjwtlrJSniAKxbwYLdwxjLNFRjtjQyfiMWPVzBRnjeXbEbf",
		@"oJXlhkZcVYqoC": @"rCcRhLoukMXtjUOeeQIBuPvOySVWMQfAtlcVMYbFevhrEfblLEsBasoUGPzjFYmRnsMZIcSiuZHjoFWKkXpcUawShXtXEFNVwBnlqiDnSxLIzDaAMMJJBGoUIW",
		@"obGlZDwwiM": @"BuihtNNdaEMsJDEqcIEMdAXQRAPsUYXZzwtgZNNvxkeYleVORGFNdTgYaxToTtNvKAxiYViTGKdiPrapvnIaOQaZHvcRhZZNKJfEedwSlPAEHsunZZwtmZAyp",
		@"xKcnnfhvMCTqSSKA": @"fRjCXtajdXvgrUcyTFHvsPydcvHhBxYLzlJZgMdkDLPRyWwcadeNvvMtYvaaLeEuiEqNqjUraAHjeTVcdVnjbrewxyayRlePSduanjezuqZrgkjFYdbRSRSoU",
		@"AZdbNxFIgK": @"vyfIHUcyVTPdNKjZlwHnIORTqJCMEczaYQjZXjLUjlWdWwwBUVpFgWXIztvmXEWLVETniShgIsdAuMYNreodGBrBgprONsLCLJFBdoYlYWzWSUwLIjfokNbPgydnFHTvTlNJrQz",
		@"qyPjOAEkfGB": @"bohlqvpgbjTKEAxboEPpQqNffNRbPrlIIuDGxJOntiagYMscPOTEEcsiqWKPXgIBfaIUgEgbkcAYVhVTXJMPCveWysdzoQFiGVmFzIAgRUuMKgbWoWpbS",
		@"fapftBavvVXrdWUOemQ": @"zSYYASycnfirdUiRsVBGWJxaqPSaXLzceMnpxQjffRBmHxCgBumlzpdgZYZgGMWytBPxNgFbEsspHyXoMSbnZnqjtzSLSjfuDzXtWLTjZMRpfwuEgHLpKyYrhH",
		@"urUGyLSBAsOz": @"ErRmDbjgiusjoxRFNFcUQhDEQsimitLFMiQXeVxUqHGDQrfApPcMUKTzzdDLsaUsIuyecNZJiVmGopfbkNCqxOSTNSehRLDksxEuOtbrgPYwBFPMyJWCBxsCJXBDjVL",
		@"yWBYaqDWpWHlaWkUS": @"bctETnwdBgewEzXjIjgrUiSzbsJUKNDfxwKOFoOkNhWsvUeIhWFcmhcNCAOjRhjVJsodQDakWskNulqnJWQEpKQkIpnVDPYnhehpNfWvPCudJwUvoHNakrxjQccKS",
		@"daqqOFtjivrpoiJi": @"MThghyaSgeYraGLAstcjseGLtMqJpJVegEcSChSERyAYRyLySDmndphOvQpnRMYaKrCPVMcYRBibjWahAcYpJpriONkvzFdCdToITKxwIvRkQoZEApRbBiZlHI",
		@"TPPtOWvwMNWXPt": @"fiAWryhxdDkqazbsYuYAMlSRnbXFdqxaDWlDEpupJFsaHEhpXrYCItFxOpQBuTUQUUkrjOSyEqwZOgUQuiOAncruVGfxSurdnUerMYTEwHMefKXdFFDxSvbWySkjcUXhzdN",
	};
	return fKeHCTpMBVHf;
}

- (nonnull NSString *)nMeTCBTnij :(nonnull NSString *)ZscxsWAgWeypLvk {
	NSString *zmZSGLyUBRfEzXu = @"HmGBumNsgOyDWcCmFVZEjiOLoLIKLbzEJXShdwXTmMnGSEOXXFOvJXuXmRSvoRjqKSImETjilemAeKSKxYHjhAbLnuieKyjrZAmSlExvgtURhXNtJnsOeqphKPczzbiqBAPEixvMaCqezUhRkmStS";
	return zmZSGLyUBRfEzXu;
}

+ (nonnull NSDictionary *)GkbcMKxBOBQdkeBjNjg :(nonnull NSData *)NgfJjNZNIc :(nonnull UIImage *)YjCgNuRroQRaVoE :(nonnull NSData *)qPdidCYHFgUVDY {
	NSDictionary *SQsBiHuySKGpwQBu = @{
		@"imPjXWtSDIDzZ": @"oYzgWopLEScTdkVoOzKwrsahjCokpwvNjusguKPKgVanTGznLFZyzEUDUrcualmrVQdOLWDeMpjEkYeygCILcSVQvhWhVeBLVcGurOE",
		@"uPGsObXhGtYXtUv": @"gxrKZxCzsAtKORNmtMXQAgqMunRteBVkfXzBztjLlhuDfoQmPKokPUSSTLjQUcndaTfyWlLrPfNvEOpJPzuYsnZXumavevhzhEwOpmWlHPlEBG",
		@"vFOXyijCRGCPfHM": @"xQYscgInsacTNzOKTcAdxlvHRlgMKeikIKlFnEfmAzuEktEbZPZIDyObTYbEWDvbIkDPgCHssLVycCyQzAhGXcxvxcNjYnuFzpTdPnIuwpMPPHtyQZhuEpJBgnpZsxgXdUwcBpCNnJ",
		@"OFbktIpUnKOPvcS": @"ZLNeawmSrJOpqRajKOxpxIKALFkglwDKtbAKfzAzTSUdBAMFRCTuYCKUBGsjLyQApKDxmawMOPUEKXNxFEolFVdpwYtGEKsBQRJuxDwgpZEIGEZGNyZhLuzojnHEfG",
		@"BPIvRKQTUidp": @"mslWfULxUYoxebEpSbAEUsuRUZRsLjtpkaVEUEtsgpTbGOXsROfATGBTGCHfTPFICOPKiaDIUiHqvZdwiAzlFoIaqkFbablTgedc",
		@"pYKQclcJGbwqFF": @"UTxqXROrdMQJjDkUpBNiTtoUNjrnIJeqfRIdJJsTcXrqIMbvpWVGUcxcnfqljIQbUSLadtTcJSzhYsZeoIvPIDiexZBrGfCJineOToZZSCuYGmuHeSbqENYasZdOCtBPUWpZauyKZInm",
		@"DKduOpIDbIzKfRwY": @"vjSRMIXZTKjejoMJPeLTACeHyLveMaDgsnLbyzIPnAmLhKtKCXvQNgOUxlMeXIybDyFlRAaAPUANnYXqTpUtIsbBPmBlOswHSIWtnGRuRbDeddyZGJ",
		@"fkSvFOaBYRMQBXFa": @"yyBxTRHqkkHJZMfYungOYwweKRjHhzDnQexBeyaAFkoDRPlzUatARFkZhIJpKTSVOVNjxWUhSLNYZaelIAADaUZdipWOlxSqQqTBYhvlSvmUfpkYPjuIktA",
		@"mTCMTMyiOUpVP": @"lbRJskJpeNPOmSWMPjJrVOyEbQauXrhdtcwJghCpHHuZjPsnMGmBOmEmhgPJQFVGRSCNPMYXjuCDTbSgFtTWLScWwGbWTRtixPcCEUsoGnAiYm",
		@"AXTAutsAzPzEafsnzTI": @"HCBQdTuGsxwApYyqhrGcopEtWrXNaDYeeUNiDGLMBxVUakYHIgyoGaQfAtZbUdDQPWTBiNiPLkDSfCBGERuTSlhkJuhronhSsByfHLRfkSnucxltPartxVGWYoJdAntBfUxMlEle",
		@"wgjAKbfIyqlsxgV": @"OnuQoOSeEyWrssekqExcarquJxvqXSviVeimsTaMbKnvigzGSxfaSCwvOUEBLsjFeRekZqIQgCrjergFGkqqySEzIKbuBsBHMyOPDSJQylWOfY",
		@"QwHUwyVIHIr": @"GxPufpyWKTPiUUxBjOtJTeEZuaOFStbbYDorzADjWlWCRToLeZYCHObjNxSdDZWsMZatIkeoXAmfxsDYamujoQFXDmhJOkjptLAAxZDigmOLEvyQfXnfbvCEv",
		@"HZFzbpgtJbsIuZcdEB": @"UCceevUxPKXFfVWTzvCSSSALpzFTHQJShSaVReCRuLiNKZdkGieABoZwpWpGsIEMQPpBRDRowKqdyHWQRJGotApSpqdCrVEEVPVMdLXaiFmJZxEpjXgQTEHadcYfrSmgjHmtAG",
		@"OrkTiksyJJx": @"hYcOytVaJOJickbuVRbFWTQjQlFfbWBPlhvdLUGjMJLCyruLmBqzFbzBlAHeAOLLfWmAAMaqZjxWHcrOQHLYHqNbpPqTRDEKTaokSyEOrMUJRDNJymtqiOFhjt",
		@"qTBdstfhdgJ": @"nJAhRlzCxUFUkzXucrMlhUrXMKhvcvswBqDIhQkdnRmOBPppxAdiZLQrIaVbOMolOefoMSjSNHiMkLCjRlmfEzllDUWHaVrvkIkWuvosMjsPbYxftGVthTcYfhEIDJZqDQwXt",
		@"WGUzYaqOeFaTpeB": @"XtwGjnjPVzxsYxxCUGPYwgSuRXKRTojNMNNHCGfalmBjTMFpacvQFmtWYZgCcFihSmtdmqwWrxIWFFxdJiVRXJjEXyDdUkocrZOwgPgxEJsGZjXbIINcaFypFbRtNDJnnIQszCR",
		@"hnEjUItLzAKKrzH": @"JgLOQlZxzsjaDatAVZtUzsgyrqVvQsAhJXrfMUOaUuSoAMQMpcOKIDvYnUgEzPSshgmpEQkdgcFsIwvzRjXIXehbohWPEpddjUgzcHzIuSCpNOHWtowdGZlAOpDeqvwWcVOz",
		@"yEwLaeTfZIdckkiCz": @"WiwJQBptaHyBZWczMfajfGYXUThNwlqQiwvkbDRpfNqZuqCQdbMZwFgKsqeeVasYkVyNwxFHOlHtsJAkOjYcIRMwtOMrPuodHUUC",
		@"lMRJwLglsqvJQMcG": @"myOTslpSkQmAfvINRAwLykBgNAZvNEPwqkgTQRBsuBgrWCZZxCmZdQKhRINtsaBSYNmUlKFEhYfUBLlQrctCMZcaoiHijfNREHqqTmboT",
	};
	return SQsBiHuySKGpwQBu;
}

- (nonnull UIImage *)UPQqHnNQGVNx :(nonnull NSDictionary *)GvMBCnJqtwOqIOUaewe :(nonnull NSString *)cdbmdEktFZVZj {
	NSData *VyntUszEuXmQb = [@"QELBfQxxuZDAsVSseCWJZiYWaPRbZJBCCXnYeisMSIRJGBQBDwwAqeZVqQHhMpGdpXzkfixBMOMBnODbXFIsHDWJAuqFOyFtqPopqUjfnyeSKWmfjuLNOcgrQkUBhllXvXbzYttxvWLhVOrguuij" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *IuxWmgHlAdbZaMbryb = [UIImage imageWithData:VyntUszEuXmQb];
	IuxWmgHlAdbZaMbryb = [UIImage imageNamed:@"QBsGkfauxtpCEWDjyWzXmNunVkORmxUOKrfbNEImWEUEAmwjOTwqbfnikMAJzZFvrgZEEIxcSmRQWSGOlBkLyPKRnMFtRNdOCodxwUCOnHSWzEJdNpcj"];
	return IuxWmgHlAdbZaMbryb;
}

+ (nonnull UIImage *)XhHJvRZSiBotSOzdd :(nonnull NSData *)WCCFSZdBlWBFSjWu {
	NSData *MxRrfGLgxhv = [@"lXNSIkpJtjVWWsVKXRcrKtySdsBDCANkQyypsMHPKxsJCwtfAXQGqCZHfDeqKEQLNUksYWLrbVxaNzqrLowRMnaQodUBmVoPJWMbgWLGAFGwvfYlCwVCSItwWvSxS" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *alTpvnohaIu = [UIImage imageWithData:MxRrfGLgxhv];
	alTpvnohaIu = [UIImage imageNamed:@"vcrUsaCuhXqXTPJXwNwTGiBoohOAHMSTkgYOZsxtaleQRPGgNuCvgmxZCGClWIkjHciSphPUjmadOlBeMatpkyiwszfvvbseYUgMuVcItSwKAnEZrgcqBqwYnBkZzxLTfOzoohvHGwhtMkNVD"];
	return alTpvnohaIu;
}

- (nonnull NSDictionary *)fwAXPhpEpjwbiqGq :(nonnull UIImage *)QkKisNSCevg :(nonnull NSDictionary *)AniClWzGNxs {
	NSDictionary *dwodOPZmfbg = @{
		@"RkjzQKZTaSa": @"yRJoaNIwmEcwLeONkilYwfRaRaAHafxZYzDMMjLEVHALSSZOSFVykxMteAoZJMsNfagoyxtORGtrsCIjGAljRDVlPGoWpebhfCsLqvpjqpTtHtQ",
		@"DnkIHspCmdjdMay": @"cJkftNnOunraCxFyFLBLQrsrJJMFvyRMueAfRVNGVTTgVHfQVGqHPNoqjXUpKLrWYoZnCuLqhzJmlTNzBbjAbSEFjKMYmhRCHCXVtnkvldUuqEqeUVVbfXOoBdzxykVzOQZIREQ",
		@"hSSPmnRuYiHk": @"QlQTYPdRgGpvVdfizdfmcXVUIjhCHUeipZKHvifkMByNEfHqorvBYEzDIDOQJSlYrJVBuKupQIqvbCRDGarqwVmaQZJoFTTDauzfyoCBbrjfkHYGcWVBHShOe",
		@"wwmDPpBkHs": @"rSnneFkIwwMMzXwJUksaOubXJzzxVlbytyHuoxQGuYYOWMOBKzRdZkvRbIKSoQEsrzmjoxgDdNTCgAiPAZUdQaESKvWHfodILDjmvXE",
		@"LuigeKSUqJGsu": @"ADMvrlZaFxOnDEAaZUMqkWZPnEJTCbgewxeQxXWSZmDtGCLejaHyPSnLDbHBXeTPWPCmYHfIFWOYnqgjmxqhNPzxrGLzSmakpPizHvt",
		@"RkKdnrPSPPYGmwo": @"xoTeUtGrrmVsVrDWJFInPzqRLkshrRgIHDABtZoTfEArwGNDApIGRakAazVnTLzsEXnbGXEARPvkYDLmfMfbmiFgcLSVjiVsJbNyTTnJnfPSHFVRCWJTjdK",
		@"YAgnLYdCyLymnBlaovo": @"xMiSPyMcLyxPUBsMJqjrXtDdbnwQgLrrBAzdwMPPAZvwxbHgzXRulqcdedRfDSexRkStBffZmoueFxwSvorLfjqEtgmICJScQNIPyixLMyvFCwkoHnceMavZWksbQgqmYxPxgnGhMjV",
		@"gMEDAkjytjfTOiWhm": @"clgehoDcahEPXsZKriADnvvtDDijVUpYuxnqaDcgLhClaoRnYUchWVUmIaeoBiFQDssndTTLNvkLiXRpJivGTbAoNdZTwAyXALfppAgrUPyhNRKjkNEiRoTYOISxSbQXFnvsibfnUDoRZBCi",
		@"QYRKisqJZKnGQSJxC": @"UKlkKNZWfyYqgPvanoPFUYQkNTBvbUekKEsUUBPtBNImnRLCWFFiCqajZqWZiFYVgqhOQQOmaJKeeJYhDHdfpNrLsJAAjgWiwxzawfroqHOmBTtkKsbiUhDdUPwcAneMcbnx",
		@"fTgawECgjsYspoy": @"JeOYiUHytOivFQovWiOyGeJSfUflEBCEenxBohfccOGxJeVOEzcKQXosdyohVCBzYTLgoFFIsfovlCWidUCjuQLomfSyyxmnmiFwtSLeQPNgsFNmJRZOslzhFXsJyIdki",
		@"vXiCfiIfXsWkn": @"SwYyIJFbfgZHzZLvESSZVjxUuqCEJZzTJFVjUjxGLTKgfgspWQCywWQIbFwxvbaOwQlerdtYaXpngJhJcIIWEXsFyvIRDuDswNCpmGaaZnjmZQSzyhhyJZXpeqDulWmGoSOQvV",
		@"CsCUuYkewYMASD": @"YqbPsuoQvpnGHJusmrhEtGLeNaOOcHcVnIzTPopeyKYzYUQbsBCotBcdbwLxEqPCrKACReckMuiIRKzIYpJBOmzuwCZRwxJtaQDVxBlPaAzBtrzrPgePkvuZFjfsftFvTkgSzuyHtUtnbYqbdF",
		@"ScdVRCnVxCpNdrED": @"NgqAXbuIyEJuRVQjODdXNgeLxnuCNYJBGwpJjPPNPclCKkcvVPaSRznJstJvBXeGGTghRiOhIUhnLLmnIInzXvdYOxpqbPdCHWbGUAMIZ",
		@"QIECRMFfKWsSXiuW": @"HSzgWjZpCmQyDdtxtITHpLpjypaFAIkOaKLbgCMZKfBddKrwOFSOiuCSSzpPtdQMYbVffocoeRMAUuDaVPrwNwKVFBjANXIbqvBkxyfgDwRziUbFQJsEKZBogYHukj",
		@"bOjajXPqxYOAbRXkSrU": @"FCkAFnCDfxbqmUvtSEZbXaCDGDCtkrRDujionDsNDqRWpgybKRGtdZioqxkWHEPmdmBOMMxSPPRPQydyuQRSghYqwLarHxvrCThzZBm",
	};
	return dwodOPZmfbg;
}

+ (nonnull NSData *)CsrbNtoBzJYE :(nonnull NSArray *)poMfdGjGTMxQN {
	NSData *eiGJGErvGBRXbhEXdFR = [@"SkxyTtJcKUAjFwdpYUVyDmezBMzllSrKsKnGSheajXsRXVmaScWXnamfPxtvgXDuEiFcjrDCjSsnLefoGVpprsapRXwTMnNarPFFDeIJdBUAEvouWzCTVSfUEX" dataUsingEncoding:NSUTF8StringEncoding];
	return eiGJGErvGBRXbhEXdFR;
}

+ (nonnull NSArray *)stTNhHaMZOvBGpGHcV :(nonnull UIImage *)ulehdNNkifXsae :(nonnull NSString *)BKhHjruyfFmHNeKv :(nonnull NSData *)WvWpCtyNgm {
	NSArray *arLgulmfbZoJgaRu = @[
		@"AdVNLyENuAXFQxTJArSYfCtnbyWYNHSeiaNLyJiimBonKEbsEkhhaXBVRDqNnVfIwJkaIdfTFElGOWrSEkDDfWnzsJbyLIHuwKLmsgDSfcjfFBeYhKyyRAFfvOyDjOi",
		@"ZgFsgEMfeASrfKesTrvlqrkIMRygxiZIeOZWoZaUhWhkNbZpIYUhMpIygMPKMhOXEKWCGBIDmaMDSkOinilQkwvDEkCWZnRpJKisXtgMzwxEQGSJYhJLQMuncFXSxD",
		@"tjkhKQNkpbkGupEcEbjsybnTksQzNXRptsZAyCgSZHfeIZBWBylKtwwEemgoCwNtdZuajaFFqzKiYkQBNoFuAlbwUmgtpJzofRcZxsZytjSwphJnUeWeyZzcTYcPzSNDqCsmhhQcbhNrCZ",
		@"iRACMBaoXUEqTghHBAykRCqqzTSKSTIyvSBLLGRtuIrEYGMjYkbofCyRwFNuHWfVSWHuahwViiLHmFxkCGJfRnMsCZIljvALndNYZYkqPhkBFgpTfV",
		@"ThNRMoHUrkJsFFcXYWpEpQdhoVZJvXpZVPkJgAYtLpgwmaovmQUntjCqdceArmraeZvRrqIpzajImObRcjUfpFTkGTiOTAMJwmNyLYTIrrmtXXjEuhyyKPDnRpqLXEMaJaMTDmBZSsxnxMS",
		@"ihMzywbBeCmnOPIZWvuAyoCjEoRQYpIGnQcGwTJjtsTgvfIUUQmpFJVsfFZFDCvePflBwYCLJbuEZPUghXbuDokMZDoSMHPdoTSzgNWDxJYqCUtrunZQKGXDTGdf",
		@"zzjSWENvtsaNklgfijDLyxltYbaamPfcDbXEgDaVJCfcZhQCLaZwpGguTJAblfnKuMLXxkXKMYtPxEvrAgnGsEpkIoEfLCPenqnlYAGGBpyKDFxSzWkGiGFEjWzhQUEcrPVPOsnfaZHDTBeqNb",
		@"MaFGBYVhTMQeKYwYItjvdkyjEEDOMSVApCclWQRaSzuKneDwFUXUMLHCKcASISevvaWRjaHEkCOHbvgOcqZrThVFhUACgCbXvSRLhasMoOLVfVMDBextqZDlkJXCrUtUNXrIn",
		@"GJPspKrAVTICHAlmaVRGwWaeoNdENfETnMTNpcFrwcVOAXruUEcjsUFJCjnwgrIeNKyTVWQuSOEfpxZgyOkSGXnOIgPXWodBKfIdyvpxxAQHWajIjwlUEeaHrgsIhCZPFtTDeheaSKCnIhKFUj",
		@"VVFyigKtuQgfJCfUvmKeCLOrIsmMonyDfRSuWEjbuoSpUTbekJnoFpwAqmULYolmDSkdFPwbcilmJdPVKUGgdBfABHzhNuHcnHrdDW",
		@"zbBNlSiNmTkbvGWzeognanBeOUjPmLwzjJVEwnwtPaigUmmEdKLRxLtuoCdVXTweKtLdrkyxxTqiZiOEgfKJsdnlBsHoZpRJFzrsyzNCuyuHdNaiimGAYMlUCwPFlpOlpjXzsPalnmOk",
		@"NNDhCFMJLZtWZbmtLajwBOzEqsbvEPdlSzpLOtihaWfeiTQRouTyArppFhhxuJEJyhcdLEPTeFUJxiVkuJBbNDqFsPqqMYcswhWfAMfrGugPUBlRoBCGprxqrktMlqMeWKYoSoOB",
	];
	return arLgulmfbZoJgaRu;
}

- (nonnull NSDictionary *)GqmLyzyJpbGPWBYdU :(nonnull NSData *)SByrVhuMAIIiEABAOG :(nonnull NSString *)RAmPnaFoZVywpmwtBCY {
	NSDictionary *OXsPOVRUbZpJ = @{
		@"jqYzfhVYbEHL": @"XkaovUOoLnAOlqQSTuFbwLejoFnWhWcHwbYhAuAFGSGCiLmVIpDiKneQcooZjTPbeiwbwoxScMlbxDGbyVGWmJthrVDVuNTsoBYXjErVeIfroRKnFgqrQZGREbXdjxAiefgjF",
		@"fBPBzJxrFcPmQ": @"pWcfscHoWJvnTbwFjaXqxfQiJuRlSZdbnYBHjyCVbCBjROytHSMkgdRdmKWiYtBwChXjVhoogXDgyIEkHSWfbYhUTFjtSTRnpuTZNFcWc",
		@"lbpJARZGXWiFK": @"EHQMrnEYEejlIYHFgKEwvWUKZbjENALVxnpLQQpcJOfmvECrUUVyAiszXlTYHXDECRBZEXNRuErnprygSadMewMjpZyaWAihinitTaJAKPknZFRnXABvKkLABaoeEClaMQCVaNNXaSPYmEYRITd",
		@"gZTDOlHIbsjBUxHYw": @"HLOoqjJJCYOuRpZsJOmkaEgGoydMLUFuvECEssUuhueKXNOtrSjaZlKwAepzjbZHevBOMSGpyGHkqINnJdFpcWSBbETuXCztuLpXtexJBaLVKBylwArmLEfoYNZSGG",
		@"BbufYJHLlb": @"rQMaNEBBMkSPIBXtOSIkTsTAfbzOykntvkXMmlCiHFlHuWSXqYXveCfrmzYDSKtStHLbXPjyLepAbDEWmZmXQMWsYFUjKCJXCARsUI",
		@"jvKwDvDmtRLql": @"JvbtNaPSyVxLaPciCVtzoBiZBNpnPGDQgrLgNBTZrISbhrypFVILGsGqueGVPcFWJcOOEXGtebjFsfwrtDcbNHHUhEeeAbAGNUalBgGWGxwhwaRjVOagbkmaDKUqvrEcnTsSE",
		@"QtUNiNPutZxnUfq": @"bUuhzVCEoxTEGBzpxuqlByejfwDyVYPKQfIIYpJpJZtGJnKzExMYEPPHWbOUEvbwXmXGjaaeBlUQjmjNNYIoDGdlveADaiIkavFjbG",
		@"ovypkphLhWWQoYExADM": @"FKgZFLIHWuWKvFWlzjYJkNcKYGSIoiCiolkeBcRidOZxzlKyRbWqpgGdiwRWJwUzkTgMjfIWUIkrKgVQpLrkTgHTkpsiPldXDIYeSZQpBZJVKOmDDBKYtNLnjNaWYAgYthGiSkqnchVuiMZHY",
		@"NhuSnsVuaaZ": @"moOqDDpivMadqAxqpNqrSNvCUQrYCfhVCsuzJyGRwdruBeBUtCPDOufxaRtIibJkcZquRyyPZgEwvmpLjJfqmgeWOnHnWZkvRcEvMwEqclWm",
		@"rUkbmvHReDvFNBKex": @"HNDzRXTfwVqirFDWIidqzTdWPveJgSNwmwRgnwImFetXmzrXmuCygvsPPpkOvgSJbDWPoPgHkOfMxWWzkgmTgIYImbIAhfXThKJJkqwLIcRMqFLyGFTkxPbGjovDgAbc",
		@"rxvhMDnnfMHx": @"IZjhuCTdmMFtNyMFLTisaWIllYYdPATfIMuXFqdVydyCituXoHUlfQzYMgIJJoermlOGxBoqWkkvfMONkneljMayZSfGudWErdZepKFFqcBtmiREmUnbvaCMvQXiCrP",
		@"dlQKgYDmFThieYh": @"zUtNAtlNIlkJIMWYWHPqZWMZXFbLTgrBuelqxCQIIVsuXiYpcJBbYtVMPpnmXZrQhTByTTtQLRzgYYjHgBJMofjvHfogywvKHPnddLeehwYo",
	};
	return OXsPOVRUbZpJ;
}

+ (nonnull NSDictionary *)zKLagKQtOY :(nonnull NSString *)DxKgEWPPVQHHUFez :(nonnull NSString *)EVWXesnOByfUYolExl {
	NSDictionary *ueGDvLfMzgpM = @{
		@"juanSxDhghEuyOk": @"OlWmfQwwKerHaKAgLotpsBlPwtvOyuScuEaviGhyHEUBgHvCJqJNtmRKatAFlercNzFNPqXFzZfEHBpKUtlMGVZSDBnkpJnGhCbKJwWokRZTcKHDbpvhxNUaIkJhTCpXvWOSUseESZSWqYKQrPv",
		@"vybijsiiEWwhNoQh": @"NpsPSJuUFpLRYODCRxZmfyHyCQMuGztsUPwjMKLPsYXBYSdhwFHuJTcSUsmKFvcelQkOzOOYqpnvjrqTbiptnKmDduiyugmBXAdyxxghqMwwxpXRiaBKQSALAbYOPLwDX",
		@"LwBVRDkbnqUkQOAnIG": @"xArugRcBRwDXiuOINcUfjVJluVSzFyjraocKHHnefuilPDWnMyvJUttgSSGqxyQwMqqtztnsBOjIBBMOCPirPtBedOHpDSpahOBMReGJODZogKrVvJKTgaxYgW",
		@"atkfOxsyOM": @"hmGeqOqqsnZHsvooeFBllfXxOassqyKSVNVjExBwoXvHLQYUTWWsYResnoWNcRmQrxkfJpZXrOVsZugAnRemYKmlDzoBHDPJghNDFWyskwvPEiUt",
		@"pTHmtdEWSzWiTKbc": @"LWKlhXMOqJjbfatbxgMjWPDRmRKZhxCULEECELztHZUvVKiMGXdQUraFFaDdArxjjOQfMZwKoUDRGqQoxVUOyydDXExxRkyarZWfoVUJIoStxWhnqDnfyT",
		@"zkPilwDaBrNoPx": @"yyDiGbHSBAshVWBVHhSvDzlrPhhcXAaNJiWlNikLmkOejIMIOaTgeONyzXJKBEUrsJWGZupjtlZBkuYwEVzOIhBwqchSbsJFmwFMgeouGzmEPNFhICURgaLK",
		@"tyNNDShvTzBKSfuY": @"IFbAGQBzGfblCxVSkuuNAUbKomTHxuHrxoUTfyQVBoeGVoCKzsPYLZvxLaWlKAmRbgdrHIzYYcLjvwExONpywkTkZTNxRSmjAxvDIoWAPkHbYd",
		@"pXezIPsxYJitvPGGaG": @"VJatwOzcVaGlCsJWXQKMapUxKAApaWmJFFNnsEUQvUBJDBbFbtCmXfnpbycGIZfQUeltXeUpTIMEXDAFrNqloPdiFatiGXhaENpxYejFUUyTSZxdyBIHBvLHnaalFcJow",
		@"qCaqYcjexhlnctxIaL": @"aRNQarefBYOzTzRnNuZIWaZkuFLYOaTFETzyJUaMdYnZjrHrllzMIjjiDATLPdhEMfSOXQsgoLueWGDFYrLroodcNFuUiQztGUHYaGdcpOjxrZkDoRLaIMiyJwiHMlyYfRXLRtcWHyn",
		@"IgfzeBHtOgtfrvDRZ": @"KsRPnEEVzAzhkgfDJPTgmLPrzgNoWGpBWVkdjmmHJPeCDHQaqrzAASwauJWYSeDWRFwSHKiiiOrTzihCAsjFvKtqEPxgRkpvFGIBzRTj",
		@"ayFFTtdbWFiNe": @"OrHFdyKEWqhjObtGaZHogkKeWybOxcMTJGEafOPFxlrWAtZMpqgbjknQZttNgGODZtplelpGzroRrnPFKyWAXZxAsAXZBpmvmkYAoJaUPxxJh",
		@"MEVQVvLZcKlL": @"GUxcTUJElqeHntjTePbgXPanriEndOgeNYJUlEroqSSKOzfDfLIXftuyZFmgBASCTAzGMMohRaicHfvzZcGUNrrlWCoEqTkVKggYoxPjHKGYznEmrNAAoNcJmvjcTGuzwWKpjYgMxSIdqfqS",
		@"tLKZGLiPloPYymjRFjR": @"tInzqnQXYxOFnzPQmqIxEPmQLsmcxwZtkaqdnXYcjidBZfzlAeZWiniUstRjAaJIFhHEivPZTuLVBPnOkYtTLeLjdHKLoCVVCPwfvbrEizPyfMXUAgsENrotrTbDcpRnkViSZrXyi",
	};
	return ueGDvLfMzgpM;
}

+ (nonnull NSDictionary *)VbpKVkUyAZgIGMYNKb :(nonnull NSString *)hMgSydlUVSoHBdWSqgc :(nonnull NSData *)UffpEhdgmrJ :(nonnull UIImage *)dRZJLrNPorNIaa {
	NSDictionary *HogKIhgevGaphplbNp = @{
		@"fZnUQLLViibaxFs": @"LzSlicNhMEnSEdaEFnCSEebdMyssqySaGAWzlFJIyWGOulNeaWAzFHHhONsrPzIGkdCTUOeJHRhepJEjCdMDLBtWOfeWehXiDQtjBoLhXxlBNvOwFs",
		@"mCjBQNUMzwUsAP": @"KXbPyIpJumxjRLamjCddstvAWFrbHyOFmczIlydboQbqfSyGjTWGmWjcguKHGitEUNlprpCgrDlcqiFKkHhjLqaJWlynFbJzzIKFJwOkkueSzC",
		@"MuiIpbHggIviXbW": @"gvBSqWbjYoJDTzlDjaHrHzKNnBEEEkSKljFBtkAscvjllPriRMZJwDaDFTQFFAvWMJtAgNZLQbfGoGDYUREoNBryJvAPNfbtvgAsuJsXBvSRPaucUtRhXDMrCpnLUH",
		@"kUoWZRNzoAsAJa": @"DnFGlzvCsdLCwrGXagPDauFQLbyXaYvEdBWZWYVDawVivAdofHqbQHccLZgYDLNNiTJplePmVfmlmwiTQEDqASsKarXaxWGiAVNaSTgvHKWTtNPeHnBzuviSIMgPBGAjpiMhzVzClTDsNPAEWGdnL",
		@"ZTheGvSccXGxL": @"ZmiNqBVXfRkiTYbzNGcEtqGAVdPJZfoKWlDErGXNhbhjmAyBDSBuIsvruwOBPWBlBtAaQKzUOKEyqxtYIVnvfTycWUANAQXoJeKcbZlUnYibcLTJyKOtlUpYzzOfD",
		@"kSmVeOeZROdFKbSeqRa": @"bOWJfJGwGsjjvjztDrbmVICtNuoWPoBjlkzCwTABpdIegbigTfbaAuHMIUbHrpaprxnISLSEptntpeViQeKUiENeDWAdZywzMnehhInX",
		@"UFYjbFevENgjuOE": @"MMXiZAYdEUiLinwWoLpAhljfDrbnTXSoumootFPcqXXcwxhfaHqojaEFOOKNAtQgUPHnQDWfNrFqQpmBEOWhJCJoYHvQYmyuSJGcAcAjPEOGLEhPaQuPkyEWQzJDAtfuPPcoZFhLrZVij",
		@"AleVJhlQrWbkx": @"ZFvbLkgfbyepUFumORprsYwBrOBZYhaMezGgYPWmnKFrhUUCCjuzLMbEDxrRYUWxqlXkDXTxFPuivRuGIHQVYwTMsFaXSAAHoPtrBgJilRIOfYzpKMM",
		@"aUqhRIUbTHbPOPNr": @"ZUgUGRawHlSyEfqpbRyIhTAGYWbGuDpTohlTuItRJfnhFxWwkyaRUCebAEYxrwQCVoDoYQyTUHxIdcRtCIAMEkHMDGCSZiXyKKHcMbHbnaIfwHjyQEjTUeSCeNwaJMwdbPDlwpMplDWJqi",
		@"YdazBwNbkmKOae": @"fFSNJZPXXdvnvtWKAiUBDpKSqaooPKKjLJuyWQdfVAcBcyaKEzXrFzMBoTIfTVFpObwEWUygWzhKUUolNvvdfFahMxrqubFSbdporBWgULaQQQRIOpP",
		@"UNMIgfUgbmT": @"HvHEYlSRXjFMdRsMLqUatHNKrqgzfDceHbRgukkefbYwuAwUpwdsnDUsNRrRSSjSEDQMtHXOzRjoJbgmiqZpxQpZrkGAndawrOHDosmVigqx",
		@"nUipQjsmNYrNjh": @"yrgacuSyLuNyshyoNRlPEAeiRuoufFycOXnxygyoINRtdCVSKLgWRRZMeIjGhgQZMKAMsNqqksGaUlBdmEkoyAgTvBQsOmdjCuTq",
		@"HqnanogAzPRumpI": @"JajYFeBlhPCPuAJJKGLLLASduhKyUuhWrDRKzUKCTvKJhBGQrAQynprybYdZaaZZxNGUJuxYCemXhHVENaIKDXgDMNRcIEcZzAweTSltitmbYHh",
		@"vlpczuPxnuf": @"dNRSzQzlmblPbdKlLAUZRaVcPlkyLyUMsjzUrpbRFyZePtxnOHzFyWozwVLpGrvkmiHKFLkVtdjRhqNUFndSelQNLruzgxezuWlrQmKvMSSFoffaPXTPyIxpZOcWPJSHMVLFDiNpZZmLo",
		@"PXIPPreuFSPJUfiEPg": @"uMkIBUCXqmEcZKsDlgclzZfbyebpEEuyDSHqBEXDkiGeYdVgsFnraLhvMkUfnjsXCbXDBchZwDdUEvDSBOakOrqtaygIYqhjQINBJETmhKSguTBOELqRICsYZxLqoGoMSA",
		@"RamKSTtVJZLw": @"oZvBTjfwvPjkmaPeFNDNGRMxfRsGGmAdusuzulICFjuVbGRmpWezECZCbwBUeSEbDDafzvvVgIYkuafbKgYRWCOLwUlyEHgmpitaGkYaYwIQmVrpTDNV",
	};
	return HogKIhgevGaphplbNp;
}

+ (nonnull NSArray *)EKCpLkWWOuO :(nonnull NSDictionary *)FmztsaEHevYtAApDx :(nonnull NSDictionary *)BCYCtqwDekiFKL :(nonnull NSData *)mbttXJALZuHoCUfrlOV {
	NSArray *GWJHlXeTvfc = @[
		@"veuiXTzTlpzmXrDmIaHkZTvyaTrdbTAGINKiLWUMVsIiWdVUAvVfegCHJbWicckgdYBZgYyJmYfHPZiBggvYUsxFMmeVARHVSJbYLVhvSHDrtNWlFFzSDRzlnNUADkcEYHAsCnmKlFKYfonwNQ",
		@"RXhPbJVSkUogMnSLOAsltRShidefFEtfrzkssLLoIzBlCslHfGZYFIOeYNOPvyHoFpvAHUvMDANKWSBEyjBgmORXJQoGQKMnBHnwxtJUGQcDVJVW",
		@"sXTqxygfcLLKQPJtOsAyqWbuWHriWSgmYMYbqGsLtJUjICaAlgWaeGaJpYXEPsEGRxjnRcaEwywHkSRMOKrKCnNtpJhsUVqinlrGndGe",
		@"jdOfdAPkvfHllpizaFQJgitnaaEOLulbUpAHYgiuSxHMbehSBNpmluTskzvLlhruDPayUvlIQjaXhvAEtMjqVjiUGeDRjHVisAoAGMXb",
		@"lptFvySxIFauyOCAuomwhGqUzswXfzJPtpQbuQHlYNOhBVgZLcNzGBQxyDpcVhaEPTRbqtZvBDtocHOeNTrvVFZhYRgZsEkXeWqVSUoMbMOVRKclQAKgGeMHaWyoVxnLftd",
		@"sxuYdSoWAVEeSPWuHpYSiFcsshSZVEOMqcVzktVTiawyjWzmhtCWZFpMBTxVoLhUgEUMivevWqHJmVdtEGBphAkIgehsPNbCscjli",
		@"wMmkQrsHruKARCGiFudYGowpCWuabBkGRSbbRcRHuyZhUdDqGBwKBiSDnUPRPKSDVRSqaIvPciBCULAjlztZQQweotnZTlzpPugTxkzlxOOzhE",
		@"gDixjydOXjhocvHqRGWNhDfYDUrllsygvpwTqpLxoIwwNqsWTQCjehmSGsuMoCdtwbaxeCscMiDeDlzokKnLJfUccnYuZnhGLPLssnwuexHJV",
		@"OYGiZvBoNkTLDqABhAMxtasaSrVcqkxZSMPUFPEPtMcXwdTyNEhTuybzXWbVzzyaJfkjafaTnJeimNCcPCSudYChVPvbXLoxtXrarQXYMPpsnkZOeKEcwM",
		@"byjQkCITHxgIbOOnpEnJwGPqbpSVTmixfONzfAovUHfRkRRhEWklPQspxcKZmSdHrJmnaKOouxwCoNRicLRbJvpYdjYzvaAsXgswXitsTtWhrERlNoGcHgea",
		@"duZZJMOpbtLJhsbgyUZFPsVhCTPXDxjqyOYlqoQKGxMGYmehfcIzbnJrQJFqnBZcxibORVqbHZPLSQHQkuxzOOjjLBxkGdujYqYQSeuWZtKTqEetBkVMJHpzlXiFNU",
	];
	return GWJHlXeTvfc;
}

+ (nonnull NSDictionary *)axQiJcBslMvpI :(nonnull NSArray *)XoYaTTqEiz {
	NSDictionary *baRqrQhTKvU = @{
		@"yQBDDSIstft": @"WxnRGvoqfZqqpwMnOAYSULSGsadAwgOneiZduSkjmJUrFuAfjfkUKeoeQpbTuaVqkyxQwDbxzmKiinyYSrebPzByQSUBGUaLcFTAKmOLAFqeiiaoEKhOINUlHqiaZedvHVn",
		@"dFgAGXfbOtizDJJhr": @"spAEOKnIwtNgADLVCKgQqMXwJalkFNJwBOYUlgirDbdjlEAoJXCtuiEqEguTqXwsScDOUskkoPJJeQCecodAdLLzbuDfUOPxbYdJnTIbZaJUIJNHaZOeZuLeeNjMzMaVjzb",
		@"KlsOjpliGYClX": @"RlyGihrFkbQUUGZVfBKoNMgQOHQguchkGXcmRWFLpBtmwksvntLOyZfYRtxLOzzoSDifGkGtIyWxsUYYXFbSZrovCNQeZvLBAgkTiSqsOOOkvpsxDKXeBApJ",
		@"lpfjBPgcaQzmAryD": @"IHulLdUrCQDQATIXLvvqyevXRzjvQwXFSCrkaouIUUeVfqOyhOdNsNEGOLsRyxXzabtWwObITKxszmWscAArYbYOQKdmbBXAyGqetTKEYNfxkoxIZKImjm",
		@"VTQWqRxOSCCvIA": @"OCAGHDNlQpzBVTiKRIMdvPsbNgPAwVzrkxYrJYixhrYtJHdQhRIHxBnHiZdzhVcuHNYUmRjQdDuCuaNYNXWDfQYWQbfsSSghCdysByIPXDfQyUcEQHosHsoxXhRPOv",
		@"jNAJaguiIlxcl": @"qjAIRXNXEdcYBPcgaQoPiKwtrjGufXZPGFYpcQaGSzoNnZYnSeOMvfMGbQfYCyikutzscyjnKNrWfUjYKKOrbPfEhWrmnvkICoCPCahsIfyYbOcKBmiGLJylzyuEqMKXWUhrSCwcURN",
		@"wxIcfLUHLweqbNgFse": @"dQziCxDiLZpcDEUIHVwYyruYuzuBWJjKfcQZDlklTOYhwpOqElsxRPPunLeBzoFPcIcxtIQYwCfJklqEjmtFwcxlmskPrCfnQTqWRDIipEcOjfWvyXrqe",
		@"mSyVhAfOdWBWNWTbl": @"cIWQbSQuSgVojHDXKjSarUoRSdGVTvSrYINMvZGOhmAkQXpytNZEjJsdezAFRfsaStvOMoWZsPpWeGzUdovpElCorvQisIgeucsehECohSmYhpUDRTpZoKksOCJvk",
		@"EYdoJPsitnzUcWvl": @"JrrlvSbhHOjyoKaIEGAYlwdGaIfTbbQwfUMUzVGcHUXpaRwMEXssYQMuxGUJLMuJmWkMlTqNvYlhzPvNcMgwcxsKRdsbcpdwkyKMXuMuUtqHaFYJfvXQEGviwf",
		@"WTBDhvvmXeegJiTyhYa": @"JryWMHCLFRgZUZxZWtjHbtMewKuZEbiTrFibPcTxKQDnKrlpOlWPzIyDrSwuuljOaQFnIZAvIGQJMjCJCUKKuKTTgkIVBisFweIwgjBOrMWENhiVUUKZzalmYuKyShNoqgqCbVkVVYhQyTi",
		@"lkZbBZqKGiamNMQCcV": @"aYKAsWhjYtJqFriEgLDDsZySUdCumtVgWLNZgwkajYPDjWEXkkUhiaBsMQWbXSBcuhncRPoXrWeAILpjkQVhblCCBOSqGwTfkiatWbABZkFLfXQRpSLIhbvXdaecPjDslabwoFGtdKK",
	};
	return baRqrQhTKvU;
}

+ (nonnull NSData *)WqLMCveoDj :(nonnull NSString *)KEJbdYBUjVKVToP {
	NSData *PUGkvWSmTjZhDp = [@"JcpfKYrURtfJzRKOMekvFicKiGsUUtffSAaxeClPaChZiiHWsOLwQsjrKMhJsmIwTKZBpdppGbVzifyhZvWtQFoxAiCPoXFfeSZAEJEehkV" dataUsingEncoding:NSUTF8StringEncoding];
	return PUGkvWSmTjZhDp;
}

- (void)mageditor{
    
}
#pragma mark - 属性懒加载
- (magDataModel *)magdatamodel{
    if (!_magdatamodel) {
        _magdatamodel = [[magDataModel alloc] init];
        _magdatamodel.magSeir = [[magSeirModel alloc] init];
        _magdatamodel.magSeiton = [[magSeitonModel alloc] init];
        _magdatamodel.magSeiso = [[magSeisoModel alloc] init];
        _magdatamodel.magSeiketsu = [[magSeiketsuModel alloc] init];
        _magdatamodel.magShitsuke = [[magShitsukeModel alloc] init];
    }
    return _magdatamodel;
}
- (UITableView *)magMainTable{
    if (!_magMainTable) {
        _magMainTable = [[UITableView alloc] init];
        _magMainTable.rowHeight = UITableViewAutomaticDimension;
        _magMainTable.estimatedRowHeight = 0.1f;
        _magMainTable.dataSource = self;
        _magMainTable.delegate = self;
        _magMainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_magMainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(magcloseKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_magMainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(magcloseKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:_magMainTable];
        [_magMainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-5);
        }];
    }
    return _magMainTable;
}
- (UIButton *)magEaveButton{
    if (!_magEaveButton) {
        _magEaveButton = [[UIButton alloc] init];
        [_magEaveButton setTitle:@"save" forState:UIControlStateNormal];
        [_magEaveButton setTitleColor:[UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_magEaveButton.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:17]];
        [_magEaveButton addTarget:self action:@selector(magsave) forControlEvents:UIControlEventTouchUpInside];
        [_magEaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(22);
        }];
    }
    return _magEaveButton;
}
- (UIButton *)magEditButton{
    if (!_magEditButton) {
        _magEditButton = [[UIButton alloc] init];
        [_magEditButton setTitle:@"Editor" forState:UIControlStateNormal];
        [_magEditButton setTitleColor:[UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_magEditButton.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:17]];
        [_magEditButton addTarget:self action:@selector(mageditor) forControlEvents:UIControlEventTouchUpInside];
        [_magEditButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(22);
        }];
    }
    return _magEditButton;
}
- (NSMutableArray *)magDataArray{
    if (!_magDataArray) {
        _magDataArray = [[NSMutableArray alloc] init];
    }
    return _magDataArray;
}
@end
