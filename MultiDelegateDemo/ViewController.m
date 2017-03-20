//
//  ViewController.m
//  MultiDelegateDemo
//
//  Created by JiangMing on 2017/3/20.
//  Copyright © 2017年 JiangMing. All rights reserved.
//

#import "ViewController.h"
#import "Manger.h"

@interface ViewController ()<MangerDelegate>

@end

@implementation ViewController



- (void)dealloc{
    
     [[Manger shareManger] deleteDelegate:self];
}

- (IBAction)bottonClick:(UIButton *)sender {
    
    [[Manger shareManger] reciveBottonClick:sender];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[Manger shareManger] addDelegate:self];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)manger:(Manger *)manger didBottonClick:(UIButton *)button{
    
    NSLog(@"我是item1，接受到了按钮点击的消息，按钮地址是%p",button);
}

@end
