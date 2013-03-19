//
//  RvcViewController.m
//  RootViewController
//
//  Created by XmL on 13-3-19.
//  Copyright (c) 2013年 XmL. All rights reserved.
//

#import "RvcViewController.h"
#import "DesUtil.h"
@interface RvcViewController ()

@end

@implementation RvcViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(NSString *)addDesString:(NSString *)string
{
    
    string = [string stringByReplacingOccurrencesOfString:@"+" withString:@"-"];
    string = [string stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    string = [string stringByReplacingOccurrencesOfString:@"=" withString:@"@"];
    
    return string;
}

-(NSString *)jDesString:(NSString *)string
{
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
    string = [string stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
    string = [string stringByReplacingOccurrencesOfString:@"@" withString:@"="];

    return string;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString * str = @"c2WeCmW_tGU@";
    NSString * str1 = @"11119688";
    
    NSString * string = [DesUtil encryptUseDES:str key:str1];
    NSLog(@"加密之后 %@",string);
    
    
    NSString * adString =  [self addDesString:string];    
    NSLog(@"这个有点乱 %@",adString);
    
    
    NSString * jString = [self jDesString:string];
    NSLog(@"解密转换之后 %@",jString);
    
    
    NSString * strJing = [DesUtil decryptUseDES:string key:str1];
    NSLog(@"这个更乱 %@",strJing);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
