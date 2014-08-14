//
//  GameConsole.h
//  RefreshCells
//
//  Created by Vik Denic on 8/14/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameConsole : NSObject

@property UIImage *image;
@property NSString *name;
@property int yearOfRelease;

-(GameConsole *)initWithInfo:(UIImage *)image withName:(NSString *)name withYear:(int)year;

@end
