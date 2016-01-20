
{******************************************************************}
{                                                                  }
{                         XML Data Binding                         }
{                                                                  }
{         Generated on: 4/7/2005 12:04:38 PM                       }
{       Generated from: D:\md2005code\22\XmlInterface\Sample.xml   }
{   Settings stored in: D:\md2005code\22\XmlInterface\Sample.xdb   }
{                                                                  }
{******************************************************************}

unit Sample;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLBooksType = interface;
  IXMLBookType = interface;
  IXMLBookTypeList = interface;
  IXMLEbookType = interface;
  IXMLEbookTypeList = interface;
  IXMLString_List = interface;

{ IXMLBooksType }

  IXMLBooksType = interface(IXMLNode)
    ['{FB6E9F98-0108-4408-9F75-E878E83E6872}']
    { Property Accessors }
    function Get_Text: WideString;
    function Get_Book: IXMLBookTypeList;
    function Get_Ebook: IXMLEbookTypeList;
    procedure Set_Text(Value: WideString);
    { Methods & Properties }
    property Text: WideString read Get_Text write Set_Text;
    property Book: IXMLBookTypeList read Get_Book;
    property Ebook: IXMLEbookTypeList read Get_Ebook;
  end;

{ IXMLBookType }

  IXMLBookType = interface(IXMLNode)
    ['{A900E7C7-5EA1-4D0C-91D2-3D562DF56E0F}']
    { Property Accessors }
    function Get_Title: WideString;
    function Get_Author: IXMLString_List;
    procedure Set_Title(Value: WideString);
    { Methods & Properties }
    property Title: WideString read Get_Title write Set_Title;
    property Author: IXMLString_List read Get_Author;
  end;

{ IXMLBookTypeList }

  IXMLBookTypeList = interface(IXMLNodeCollection)
    ['{D93EA0D7-BABD-4C6B-8145-14B6E839D585}']
    { Methods & Properties }
    function Add: IXMLBookType;
    function Insert(const Index: Integer): IXMLBookType;
    function Get_Item(Index: Integer): IXMLBookType;
    property Items[Index: Integer]: IXMLBookType read Get_Item; default;
  end;

{ IXMLEbookType }

  IXMLEbookType = interface(IXMLNode)
    ['{97E52157-16AF-41B8-97AE-305CBD40657C}']
    { Property Accessors }
    function Get_Title: WideString;
    function Get_Url: WideString;
    function Get_Author: WideString;
    procedure Set_Title(Value: WideString);
    procedure Set_Url(Value: WideString);
    procedure Set_Author(Value: WideString);
    { Methods & Properties }
    property Title: WideString read Get_Title write Set_Title;
    property Url: WideString read Get_Url write Set_Url;
    property Author: WideString read Get_Author write Set_Author;
  end;

{ IXMLEbookTypeList }

  IXMLEbookTypeList = interface(IXMLNodeCollection)
    ['{C8A0EF52-4519-48CD-93E1-9310EC9D3E9A}']
    { Methods & Properties }
    function Add: IXMLEbookType;
    function Insert(const Index: Integer): IXMLEbookType;
    function Get_Item(Index: Integer): IXMLEbookType;
    property Items[Index: Integer]: IXMLEbookType read Get_Item; default;
  end;

{ IXMLString_List }

  IXMLString_List = interface(IXMLNodeCollection)
    ['{E31F2421-2C6E-4925-BB00-DDF057D5A066}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLBooksType = class;
  TXMLBookType = class;
  TXMLBookTypeList = class;
  TXMLEbookType = class;
  TXMLEbookTypeList = class;
  TXMLString_List = class;

{ TXMLBooksType }

  TXMLBooksType = class(TXMLNode, IXMLBooksType)
  private
    FBook: IXMLBookTypeList;
    FEbook: IXMLEbookTypeList;
  protected
    { IXMLBooksType }
    function Get_Text: WideString;
    function Get_Book: IXMLBookTypeList;
    function Get_Ebook: IXMLEbookTypeList;
    procedure Set_Text(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBookType }

  TXMLBookType = class(TXMLNode, IXMLBookType)
  private
    FAuthor: IXMLString_List;
  protected
    { IXMLBookType }
    function Get_Title: WideString;
    function Get_Author: IXMLString_List;
    procedure Set_Title(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBookTypeList }

  TXMLBookTypeList = class(TXMLNodeCollection, IXMLBookTypeList)
  protected
    { IXMLBookTypeList }
    function Add: IXMLBookType;
    function Insert(const Index: Integer): IXMLBookType;
    function Get_Item(Index: Integer): IXMLBookType;
  end;

{ TXMLEbookType }

  TXMLEbookType = class(TXMLNode, IXMLEbookType)
  protected
    { IXMLEbookType }
    function Get_Title: WideString;
    function Get_Url: WideString;
    function Get_Author: WideString;
    procedure Set_Title(Value: WideString);
    procedure Set_Url(Value: WideString);
    procedure Set_Author(Value: WideString);
  end;

{ TXMLEbookTypeList }

  TXMLEbookTypeList = class(TXMLNodeCollection, IXMLEbookTypeList)
  protected
    { IXMLEbookTypeList }
    function Add: IXMLEbookType;
    function Insert(const Index: Integer): IXMLEbookType;
    function Get_Item(Index: Integer): IXMLEbookType;
  end;

{ TXMLString_List }

  TXMLString_List = class(TXMLNodeCollection, IXMLString_List)
  protected
    { IXMLString_List }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
  end;

{ Global Functions }

function Getbooks(Doc: IXMLDocument): IXMLBooksType;
function Loadbooks(const FileName: WideString): IXMLBooksType;
function Newbooks: IXMLBooksType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Getbooks(Doc: IXMLDocument): IXMLBooksType;
begin
  Result := Doc.GetDocBinding('books', TXMLBooksType, TargetNamespace) as IXMLBooksType;
end;

function Loadbooks(const FileName: WideString): IXMLBooksType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('books', TXMLBooksType, TargetNamespace) as IXMLBooksType;
end;

function Newbooks: IXMLBooksType;
begin
  Result := NewXMLDocument.GetDocBinding('books', TXMLBooksType, TargetNamespace) as IXMLBooksType;
end;

{ TXMLBooksType }

procedure TXMLBooksType.AfterConstruction;
begin
  RegisterChildNode('book', TXMLBookType);
  RegisterChildNode('ebook', TXMLEbookType);
  FBook := CreateCollection(TXMLBookTypeList, IXMLBookType, 'book') as IXMLBookTypeList;
  FEbook := CreateCollection(TXMLEbookTypeList, IXMLEbookType, 'ebook') as IXMLEbookTypeList;
  inherited;
end;

function TXMLBooksType.Get_Text: WideString;
begin
  Result := AttributeNodes['text'].Text;
end;

procedure TXMLBooksType.Set_Text(Value: WideString);
begin
  SetAttribute('text', Value);
end;

function TXMLBooksType.Get_Book: IXMLBookTypeList;
begin
  Result := FBook;
end;

function TXMLBooksType.Get_Ebook: IXMLEbookTypeList;
begin
  Result := FEbook;
end;

{ TXMLBookType }

procedure TXMLBookType.AfterConstruction;
begin
  FAuthor := CreateCollection(TXMLString_List, IXMLNode, 'author') as IXMLString_List;
  inherited;
end;

function TXMLBookType.Get_Title: WideString;
begin
  Result := ChildNodes['title'].Text;
end;

procedure TXMLBookType.Set_Title(Value: WideString);
begin
  ChildNodes['title'].NodeValue := Value;
end;

function TXMLBookType.Get_Author: IXMLString_List;
begin
  Result := FAuthor;
end;

{ TXMLBookTypeList }

function TXMLBookTypeList.Add: IXMLBookType;
begin
  Result := AddItem(-1) as IXMLBookType;
end;

function TXMLBookTypeList.Insert(const Index: Integer): IXMLBookType;
begin
  Result := AddItem(Index) as IXMLBookType;
end;
function TXMLBookTypeList.Get_Item(Index: Integer): IXMLBookType;
begin
  Result := List[Index] as IXMLBookType;
end;

{ TXMLEbookType }

function TXMLEbookType.Get_Title: WideString;
begin
  Result := ChildNodes['title'].Text;
end;

procedure TXMLEbookType.Set_Title(Value: WideString);
begin
  ChildNodes['title'].NodeValue := Value;
end;

function TXMLEbookType.Get_Url: WideString;
begin
  Result := ChildNodes['url'].Text;
end;

procedure TXMLEbookType.Set_Url(Value: WideString);
begin
  ChildNodes['url'].NodeValue := Value;
end;

function TXMLEbookType.Get_Author: WideString;
begin
  Result := ChildNodes['author'].Text;
end;

procedure TXMLEbookType.Set_Author(Value: WideString);
begin
  ChildNodes['author'].NodeValue := Value;
end;

{ TXMLEbookTypeList }

function TXMLEbookTypeList.Add: IXMLEbookType;
begin
  Result := AddItem(-1) as IXMLEbookType;
end;

function TXMLEbookTypeList.Insert(const Index: Integer): IXMLEbookType;
begin
  Result := AddItem(Index) as IXMLEbookType;
end;
function TXMLEbookTypeList.Get_Item(Index: Integer): IXMLEbookType;
begin
  Result := List[Index] as IXMLEbookType;
end;

{ TXMLString_List }

function TXMLString_List.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLString_List.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;
function TXMLString_List.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

end.