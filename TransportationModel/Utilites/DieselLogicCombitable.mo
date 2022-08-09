within TransportationModel.Utilites;

block DieselLogicCombitable
  constant String DieselData = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/DieselCombiTable.txt");
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-106, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds(columns = 2:2, fileName = DieselData, tableName = "Table", tableOnFile = true, verboseRead = false)  annotation(
    Placement(visible = true, transformation(origin = {-2, 0}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
equation
  connect(u, combiTable1Ds.u) annotation(
    Line(points = {{-106, 0}, {-18, 0}}, color = {0, 0, 127}));
  connect(combiTable1Ds.y[1], y) annotation(
    Line(points = {{14, 0}, {106, 0}}, color = {0, 0, 127}));
annotation(
    Icon(graphics = {Rectangle(lineColor = {225, 225, 225}, fillColor = {159, 159, 159}, fillPattern = FillPattern.Sphere, lineThickness = 1, extent = {{-100, 100}, {100, -100}}, radius = 25), Text(extent = {{-100, -100}, {100, 100}}, textString = "%name", fontSize = 10)}));
end DieselLogicCombitable;
