within TransportationModel.LogicBox;

model ElectricVehicleRateLogic
  parameter String Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/ElectricLogicCombiTable.txt"); 
  parameter String depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/ElectricDepletionCombiTable.txt");
  parameter String NewGrowth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Dummy.txt"); 
  parameter String Newdepletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Dummy.txt");
  parameter Boolean CombitableFlag = false;
  
  
  Modelica.Blocks.Interfaces.RealInput InputSimulationTime annotation(
    Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds1(columns = 2:2, fileName = Growth, tableName = "Table", tableOnFile = true, verboseRead = false)  annotation(
    Placement(visible = true, transformation(origin = {-70, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds2(columns = 2:2, fileName = depletion, tableName = "Table", tableOnFile = true, verboseRead = false)  annotation(
    Placement(visible = true, transformation(origin = {-70, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput GrowthRate annotation(
    Placement(visible = true, transformation(origin = {70, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput DepletionRate annotation(
    Placement(visible = true, transformation(origin = {66, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, -60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch GrowthSwitch annotation(
    Placement(visible = true, transformation(origin = {4, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression CombiFlag(y = CombitableFlag)  annotation(
    Placement(visible = true, transformation(origin = {-70, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds(columns = 2:2, fileName = Growth, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-70, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch DepletionSwitch annotation(
    Placement(visible = true, transformation(origin = {0, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds3(columns = 2:2, fileName = depletion, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-70, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(InputSimulationTime, combiTable1Ds2.u) annotation(
    Line(points = {{-120, 0}, {-96, 0}, {-96, -70}, {-82, -70}}, color = {0, 0, 127}));
  connect(InputSimulationTime, combiTable1Ds1.u) annotation(
    Line(points = {{-120, 0}, {-96, 0}, {-96, 74}, {-82, 74}}, color = {0, 0, 127}));
  connect(GrowthSwitch.y, GrowthRate) annotation(
    Line(points = {{15, 66}, {70, 66}}, color = {0, 0, 127}));
  connect(InputSimulationTime, combiTable1Ds3.u) annotation(
    Line(points = {{-120, 0}, {-96, 0}, {-96, -22}, {-82, -22}}, color = {0, 0, 127}));
  connect(InputSimulationTime, combiTable1Ds.u) annotation(
    Line(points = {{-120, 0}, {-96, 0}, {-96, 20}, {-82, 20}}, color = {0, 0, 127}));
  connect(combiTable1Ds.y[1], GrowthSwitch.u3) annotation(
    Line(points = {{-58, 20}, {-24, 20}, {-24, 58}, {-8, 58}}, color = {0, 0, 127}));
  connect(combiTable1Ds1.y[1], GrowthSwitch.u1) annotation(
    Line(points = {{-59, 74}, {-8, 74}}, color = {0, 0, 127}));
  connect(CombiFlag.y, GrowthSwitch.u2) annotation(
    Line(points = {{-58, 46}, {-42, 46}, {-42, 66}, {-8, 66}}, color = {255, 0, 255}));
  connect(DepletionSwitch.y, DepletionRate) annotation(
    Line(points = {{12, -10}, {39, -10}, {39, -18}, {66, -18}}, color = {0, 0, 127}));
  connect(combiTable1Ds2.y[1], DepletionSwitch.u3) annotation(
    Line(points = {{-58, -70}, {-30, -70}, {-30, -18}, {-12, -18}}, color = {0, 0, 127}));
  connect(combiTable1Ds3.y[1], DepletionSwitch.u1) annotation(
    Line(points = {{-58, -22}, {-46, -22}, {-46, -2}, {-12, -2}}, color = {0, 0, 127}));
  connect(CombiFlag.y, DepletionSwitch.u2) annotation(
    Line(points = {{-58, 46}, {-42, 46}, {-42, -10}, {-12, -10}}, color = {255, 0, 255}));

annotation(
    Icon(graphics = {Rectangle(origin = {-0.04, 0.09}, lineColor = {194, 194, 194}, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.75, extent = {{99.96, -99.6}, {-99.96, 99.6}}, radius = 25), Text(origin = {1, 1}, lineColor = {231, 231, 231}, fillColor = {218, 218, 218}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-101, 99}, {101, -99}}, textString = "%name%", fontSize = 10)}));
end ElectricVehicleRateLogic;
