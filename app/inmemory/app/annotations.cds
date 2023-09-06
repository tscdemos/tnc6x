using { bikestoreSrv } from '../srv/service.cds';

annotate bikestoreSrv.Product with @odata.draft.enabled;
annotate bikestoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productName } };
annotate bikestoreSrv.Product with {
  ID @Common.Text: { $value: productName, ![@UI.TextArrangement]: #TextOnly }
};
annotate bikestoreSrv.Product with @UI.Identification: [{ Value: productName }];
annotate bikestoreSrv.Product with {
  productName @title: 'Product Name';
  productDescription @title: 'Product Description';
  productPrice @title: 'Product Price'
};

annotate bikestoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: productPrice }
];

annotate bikestoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: productPrice }
  ]
};

annotate bikestoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

