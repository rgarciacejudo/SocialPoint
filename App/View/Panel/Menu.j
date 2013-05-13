/*
 * Menu.j
 * SocialPoint
 *
 * Created by You on January 29, 2013.
 * Copyright 2013, Your Company All rights reserved.
 */

@import <AppKit/CPMenu.j>

@implementation Menu : CPMenu
{
}

- (id) initWithTitle(CPString):anTitle
{
    self = [super initWithTitle:anTitle];
    if(self){
        [self setDelegate:self];
        [self setupMenu];
    }
    return self;
}

- (void) setupMenu()
{
	[self removeAllItems];

	var fileItem = [[CPMenuItem alloc] initWithTitle:@"Archivo" action:nil keyEquivalent:@"A"];
	var editItem = [[CPMenuItem alloc] initWithTitle:@"Edición" action:nil keyEquivalent:@"E"];
	var viewItem = [[CPMenuItem alloc] initWithTitle:@"Vista" action:nil keyEquivalent:@"V"];

    [self addItem:fileItem];
    [self addItem:editItem];
    [self addItem:viewItem];

    var fileMenu = [[CPMenu alloc] initWithTitle:@"FileMenu"];
  	var newItem = [[CPMenuItem alloc] initWithTitle:@"Nuevo" action:@selector(showAlert:) keyEquivalent:@"N"];
  	[fileMenu addItem:newItem];
  	[fileMenu addItem:[CPMenuItem separatorItem]];
  	var openItem = [[CPMenuItem alloc] initWithTitle:@"Abrir..." action:@selector(showAlert:) keyEquivalent:@"A"];
  	[fileMenu addItem:openItem];

    [fileItem setSubmenu:fileMenu];

}

- (void)showAlert:(id)sender
{
	var alert = [[CPAlert alloc] init];
	[alert setMessageText:@"My new alert"];
	[alert setDelegate:self];
	[alert setAlertStyle:CPWarningAlertStyle];
	[alert addButtonWithTitle:@"OK"]
	[alert addButtonWithTitle:@"Cancel"]
	[alert runModal];
}
