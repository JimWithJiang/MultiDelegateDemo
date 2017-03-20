//
//  Manger.m
//  MultiDelegateDemo
//
//  Created by JiangMing on 2017/3/20.
//  Copyright © 2017年 JiangMing. All rights reserved.
//

#import "Manger.h"

@interface Manger()

{
    MultiDelegate<MangerDelegate>     *_multiDelegate;
    
}

@end

@implementation Manger

+ (instancetype)shareManger{
    static Manger *manger = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manger = [[self alloc] init];
    });
    return manger;
}


- (id)init {
    if (self = [super init]) {
        _multiDelegate = (MultiDelegate<MangerDelegate> *)[[MultiDelegate alloc] init];
        _multiDelegate.silentWhenEmpty = YES;
    }
    return self;
}


#pragma mark - Public Methods
- (void)addDelegate:(id<MangerDelegate>)delegate{
    if (delegate && ![_multiDelegate.delegates.allObjects containsObject:delegate]) {
        [_multiDelegate addDelegate:delegate];
    }
}

- (void)deleteDelegate:(id<MangerDelegate>)delegate{
    [_multiDelegate removeDelegate:delegate];
}

- (void)clearAllDelegates{
    [_multiDelegate removeAllDelegates];
}


- (void)reciveBottonClick:(UIButton *)button{
    
    [_multiDelegate manger:self didBottonClick:button];
}


@end
