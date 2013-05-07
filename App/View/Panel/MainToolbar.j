

@import <AppKit/CPToolbar.j>


var AddToolbarItemIdentifier = "AddToolbarItem",
    CopyToolbarItemIdentifier = "CopyToolbarItem",
     RemoveToolbarItemIdentifier = "RemoveToolbarItem";
     UndoToolbarItemIdentifier = "UndoToolbarItem",
     RedoToolbarItemIdentifier = "RedoToolbarItem";

@implementation MainToolbar : CPToolbar
{

}

- (id) initWithIdentifier(CPString):anIdentifier
{
    self = [super initWithIdentifier:anIdentifier];
    if(self){
            [self setDelegate:self];
            [self setVisible:YES];
    }
    return self;
}

// Return an array of toolbar item identifier (all the toolbar items that may be present in the toolbar)
- (CPArray)toolbarAllowedItemIdentifiers:(CPToolbar)aToolbar
{
   return [AddToolbarItemIdentifier,CopyToolbarItemIdentifier, RemoveToolbarItemIdentifier,UndoToolbarItemIdentifier,RedoToolbarItemIdentifier,CPToolbarSeparatorItemIdentifier];
}

// Return an array of toolbar item identifier (the default toolbar items that are present in the toolbar) CPToolbarFlexibleSpaceItemIdentifier
- (CPArray)toolbarDefaultItemIdentifiers:(CPToolbar)aToolbar
{
   return [CPToolbarSeparatorItemIdentifier,AddToolbarItemIdentifier,CopyToolbarItemIdentifier, RemoveToolbarItemIdentifier,
    CPToolbarSpaceItemIdentifier,CPToolbarSeparatorItemIdentifier,UndoToolbarItemIdentifier,RedoToolbarItemIdentifier,CPToolbarSpaceItemIdentifier,
    CPToolbarSeparatorItemIdentifier];
}

- (CPToolbarItem)toolbar:(CPToolbar)aToolbar itemForItemIdentifier:(CPString)anItemIdentifier willBeInsertedIntoToolbar:(BOOL)aFlag
{
    var toolbarItem = [[CPToolbarItem alloc] initWithItemIdentifier:anItemIdentifier];

    var image = [[CPImage alloc] initWithContentsOfFile:"Resources/icon/"+anItemIdentifier+".png" size:CPSizeMake(32, 32)];
    [toolbarItem setImage:image];
    [toolbarItem setMinSize:CGSizeMake(50, 32)];
    [toolbarItem setMaxSize:CGSizeMake(50, 32)];
    switch(anItemIdentifier){
        case AddToolbarItemIdentifier:
            [toolbarItem setLabel:"Agregar"];
        break;
        case CopyToolbarItemIdentifier:
            [toolbarItem setLabel:"Copiar"];
        break;
        case RemoveToolbarItemIdentifier:
            [toolbarItem setLabel:"Remover"];
        break;
        case UndoToolbarItemIdentifier:
            [toolbarItem setLabel:"Deshacer"];
        break;
        case RedoToolbarItemIdentifier:
            [toolbarItem setLabel:"Rehacer"];
        break;
    }
     
    return toolbarItem;
}

@end
