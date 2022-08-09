within TransportationModel.Utilites;

model LightElectricTruckCombiTable

  constant String LightElectricTruckData = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/LightTruckElectricCombiTable.txt");

  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds(columns = 2:2, fileName = LightElectricTruckData, tableName = "Table", tableOnFile = true, verboseRead = false)  annotation(
    Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-104, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(u, combiTable1Ds.u) annotation(
    Line(points = {{-104, 0}, {-12, 0}}, color = {0, 0, 127}));
  connect(combiTable1Ds.y[1], y) annotation(
    Line(points = {{12, 0}, {106, 0}}, color = {0, 0, 127}));
annotation(
    Icon(graphics = {Rectangle(lineColor = {225, 225, 225}, fillColor = {159, 159, 159}, fillPattern = FillPattern.Sphere, lineThickness = 1, extent = {{-100, 100}, {100, -100}}, radius = 25), Text(extent = {{-100, -100}, {100, 100}}, textString = "%name", fontSize = 10)}));
end LightElectricTruckCombiTable; 
