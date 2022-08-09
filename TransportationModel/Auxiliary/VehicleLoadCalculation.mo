within TransportationModel.Auxiliary;

model VehicleLoadCalculation

  constant String PetrolCars = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/TotalPetrolCars.txt");

  Modelica.Blocks.Tables.CombiTable1Ds TotalCarPool(columns = 2:2, fileName = PetrolCars, tableName = "CarPool",
  tableOnFile = true, verboseRead = false)  annotation(
    Placement(visible = true, transformation(origin = {3, 5}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
 
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-106, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

equation

  connect(u, TotalCarPool.u) annotation(
    Line(points = {{-106, 0}, {-72, 0}, {-72, 6}, {-38, 6}}, color = {0, 0, 127}));
  connect(TotalCarPool.y[1], y) annotation(
    Line(points = {{42, 6}, {64, 6}, {64, 0}, {106, 0}}, color = {0, 0, 127}));

annotation(
    Icon(graphics = {Rectangle(fillColor = {135, 135, 135}, fillPattern = FillPattern.Sphere, extent = {{-100, 100}, {100, -100}}, radius = 25)}));
end VehicleLoadCalculation;
