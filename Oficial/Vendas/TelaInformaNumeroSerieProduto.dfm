�
 TFORMTELAINFORMANUMEROSERIEPRODUTO 01  TPF0"TFormTelaInformaNumeroSerieProduto!FormTelaInformaNumeroSerieProdutoLeft�Top� BorderIconsbiSystemMenu BorderStylebsSingleCaptiontelainformanumeroseriClientHeight@ClientWidthColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 	FormStylefsStayOnTop
KeyPreview	OldCreateOrderPositionpoDesktopCenterOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight TRxLabelLblNomeSistemaLeft Top WidthHeightAlignalTop	AlignmenttaCenterCaption"   Informe o Nro de Série do ProdutoColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameVerdana
Font.Style ParentColor
ParentFontShadowColorclBlack
ShadowSize	ShadowPosspRightBottomTransparent	  TBitBtnBitBtn1LeftrTop#Width� Height&Caption&OKDefault	TabOrder OnClickBitBtn1Click
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphs  TBitBtnBitBtn2LeftTop#Width|Height&Caption	&CancelarTabOrderOnClickBitBtn2ClickKindbkCancel  TPanelPanel1Left TopOWidthHeight� AlignalBottomColor��� TabOrder TDBGridDBGridListaLeftTopWidthHeight� AlignalClientBorderStylebsNoneColorclWhite
DataSourceDSSQLProdutoSerie
FixedColor��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OptionsdgTitlesdgColumnResize
dgColLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWhiteTitleFont.Height�TitleFont.NameTahomaTitleFont.StylefsBold OnDrawColumnCellDBGridListaDrawColumnCell	OnKeyDownDBGridListaKeyDownColumnsExpanded	FieldNamePRODICODWidth[Visible	 Expanded	FieldNamePRSEA60NROSERIEWidth9Visible	 Expanded	FieldNameEMPRICODWidthNVisible	     TQuerySQLConsultaDatabaseNameDBLeft�Top�   TRxQuerySQLProdutoSerieDatabaseNameDBSQL.Stringsselect *from PRODUTOSERIE PSwhere PRSECSTATUS <> 'I' and      PRODICOD = :PRODUTO and      EMPRICOD = :EMPRESA  Macros Left�Top� 	ParamDataDataType	ftIntegerNamePRODUTO	ParamTypeptInput DataType	ftIntegerNameEMPRESA	ParamTypeptInput   TIntegerFieldSQLProdutoSeriePRODICODDisplayLabel   Código Produto	FieldNamePRODICODOriginDB.PRODUTOSERIE.PRODICOD  TStringFieldSQLProdutoSeriePRSEA60NROSERIEDisplayLabel   Série	FieldNamePRSEA60NROSERIEOriginDB.PRODUTOSERIE.PRSEA60NROSERIE	FixedChar	Size<  TIntegerFieldSQLProdutoSerieEMPRICODDisplayLabelEmpresa	FieldNameEMPRICODOriginDB.PRODUTOSERIE.EMPRICOD   TDataSourceDSSQLProdutoSerieDataSetSQLProdutoSerieLeftpTop�   TRxMemoryDataRXSerie	FieldDefs LeftpTop�  TIntegerFieldRXSerieItem	FieldNameItem  TStringFieldRXSerieNumeroSerie	FieldNameNumeroSerieSize<    