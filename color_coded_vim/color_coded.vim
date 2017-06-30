" Vim global plugin for semantic highlighting using libclang
" Maintainer: Jeaye <contact@jeaye.com>
" Vim Colors: see http://blog.csdn.net/cp3alai/article/details/45509459
" LLVM Groups: see http://clang.llvm.org/doxygen/group__CINDEX.html

hi default Member ctermfg=Cyan guifg=Cyan
hi default Variable cterm=italic ctermfg=Grey guifg=Grey
hi default Namespace ctermfg=Yellow guifg=#BBBB00
hi default EnumConstant cterm=bold ctermfg=LightGreen guifg=LightGreen
" hi default LambdaExpr cterm=underline " why dont work?

hi link BlockExpr Normal
hi link CXXAccessSpecifier Label
hi link CXXBaseSpecifier Type
hi link CXXMethod Function
hi link CallExpr Function
hi link CharacterLiteral Character
hi link ClassDecl Type
hi link ClassTemplate Type
hi link ClassTemplatePartialSpecialization Type
hi link Constructor Function
hi link ConversionFunction Function
hi link DeclRefExpr Variable
hi link Destructor Function
hi link EnumConstantDecl EnumConstant
hi link EnumDecl Type
hi link FieldDecl Member
hi link FirstExpr Normal
hi link FirstInvalid Normal
hi link FloatingLiteral Float
hi link FunctionDecl Function
hi link FunctionTemplate Function
hi link ImaginaryLiteral Number
hi link IntegerLiteral Number
hi link InvalidCode Error
hi link InvalidFile Error
hi link LabelRef Label
hi link LinkageSpec Normal
hi link MacroDefinition Macro
hi link MacroInstantiation Macro
hi link MemberRef Member
hi link MemberRefExpr Member
hi link Namespace Namespace
hi link NamespaceAlias Namespace
hi link NamespaceRef Namespace
hi link NoDeclFound Error
hi link NonTypeTemplateParameter Variable
hi link NotImplemented Normal
hi link ObjCCategoryDecl Normal
hi link ObjCCategoryImplDecl Normal
hi link ObjCClassMethodDecl Normal
hi link ObjCClassRef Normal
hi link ObjCDynamicDecl Normal
hi link ObjCImplementationDecl Normal
hi link ObjCInstanceMethodDecl Normal
hi link ObjCInterfaceDecl Normal
hi link ObjCIvarDecl Normal
hi link ObjCMessageExpr Normal
hi link ObjCPropertyDecl Normal
hi link ObjCProtocolDecl Normal
hi link ObjCProtocolRef Normal
hi link ObjCSuperClassRef Normal
hi link ObjCSynthesizeDecl Normal
hi link OverloadedDeclRef Function
hi link ParmDecl Variable
hi link Punctuation Normal
hi link StringLiteral String
hi link StructDecl Type
hi link TemplateRef Type
hi link TemplateTemplateParameter Type
hi link TemplateTypeParameter Type
hi link TypeAliasDecl Type
hi link TypeRef Type
hi link TypedefDecl Type
hi link UnionDecl Type
hi link UsingDeclaration Type
hi link UsingDirective Type
hi link VarDecl Variable
hi link VariableRef Variable
