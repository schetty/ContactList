//
//  InputCollector.m
//  ContactListRedo
//
//  Created by naomi schettini on 2016-09-06.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

//return type | method name  | parameter type | parameter name

- (NSString *)inputForPrompt:(NSString *)promptString {
    char inputChars [255];
    
    NSLog(@"%@", promptString);
    fgets(inputChars, 255, stdin);
    NSString *str = [NSString stringWithFormat:@"%s", inputChars];
     str = [str stringByReplacingOccurrencesOfString:(@"\n") withString:(@"")];
    
    return str;
}


@end
