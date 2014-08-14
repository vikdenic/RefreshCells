//
//  GameConsole.m
//  RefreshCells
//
//  Created by Vik Denic on 8/14/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "GameConsole.h"

@implementation GameConsole

-(GameConsole *)initWithInfo:(UIImage *)image withName:(NSString *)name withPrice:(NSInteger *)price
{
    GameConsole *newGameConsole = [GameConsole new];
    newGameConsole.image = image;
    newGameConsole.name = name;
    newGameConsole.price = price;

    return newGameConsole;
}

@end
