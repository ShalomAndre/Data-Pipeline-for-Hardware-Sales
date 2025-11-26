[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "dev_hardware_sales_data_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared dev_hardware_sales_data = let
  Source = Csv.Document(Web.Contents("https://raw.githubusercontent.com/ShalomAndre/HardwaresSales/refs/heads/main/dev_hardware_sales_data.csv"), [Delimiter = ",", Columns = 5, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Date", type date}, {"Category", type text}, {"Product", type text}, {"Quantity", Int64.Type}, {"Total", type number}}),
  #"Added custom" = Table.TransformColumnTypes(Table.AddColumn(#"Changed column type", "UnitPrice", each [Total] / [Quantity]), {{"UnitPrice", type number}}),
  #"Reordered columns" = Table.ReorderColumns(#"Added custom", {"Date", "Category", "Product", "Quantity", "UnitPrice", "Total"})
in
  #"Reordered columns";
shared dev_hardware_sales_data_DataDestination = let
  Pattern = Lakehouse.Contents([HierarchicalNavigation = null, CreateNavigationProperties = false, EnableFolding = false]),
  Navigation_1 = Pattern{[workspaceId = "a9726fbb-94dc-4325-83dc-55693edd2db8"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "d85bd19b-2fdd-4584-b399-105c6cec03ee"]}[Data],
  TableNavigation = Navigation_2{[Id = "dev_hardware_sales_data", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
