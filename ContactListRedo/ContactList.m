//
//  ContactList.m
//  ContactListRedo
//
//  Created by naomi schettini on 2016-09-06.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList


- (instancetype)init
{
    self = [super init];
    if (self) {
        _listOfContacts = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void) addContact:(Contact *)contact {
    [_listOfContacts addObject:contact];
}


@end
