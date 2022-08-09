within TransportationModel.LogicBox;

model RateLogic
  parameter String Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/BioVehicle.txt");
  parameter String Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/BioVehicle.txt");
  
  parameter String NewGrowth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/DummyData.txt");
  parameter String NewDepletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/DummyData.txt");
  
  parameter Real FossilBanYear;
  parameter Boolean CombitableFlag = false;
  
  
  Modelica.Blocks.Interfaces.RealInput InputSimulationTime annotation(
    Placement(visible = true, transformation(origin = {-102, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterThreshold VehicleBanYear(threshold = FossilBanYear)  annotation(
    Placement(visible = true, transformation(origin = {-14, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch RateSwitch annotation(
    Placement(visible = true, transformation(origin = {66, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch1 annotation(
    Placement(visible = true, transformation(origin = {58, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput GrowthRate annotation(
    Placement(visible = true, transformation(origin = {120, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 72}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput DepletionRate annotation(
    Placement(visible = true, transformation(origin = {120, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, -2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput GrowthToElectricVehicle annotation(
    Placement(visible = true, transformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, -72}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression annotation(
    Placement(visible = true, transformation(origin = {-50, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds1(columns = 2:2, fileName = Growth, tableName = "Table", tableOnFile = true, verboseRead = false)  annotation(
    Placement(visible = true, transformation(origin = {-58, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds2(columns = 2:2,fileName = Depletion, tableName = "Table", tableOnFile = true, verboseRead = false)  annotation(
    Placement(visible = true, transformation(origin = {-54, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 
  Modelica.Blocks.Logical.Switch switch11 annotation(
    Placement(visible = true, transformation(origin = {-4, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds(columns = 2:2, fileName = NewGrowth, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-58, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 
  Modelica.Blocks.Sources.BooleanExpression CombiFlag(y = CombitableFlag)  annotation(
    Placement(visible = true, transformation(origin = {-62, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 
  Modelica.Blocks.Logical.Switch switch12 annotation(
    Placement(visible = true, transformation(origin = {22, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 
  Modelica.Blocks.Tables.CombiTable1Ds combiTable1Ds3(columns = 2:2, fileName = NewDepletion, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-58, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
 connect(realExpression.y, RateSwitch.u1) annotation(
    Line(points = {{-39, 88}, {34, 88}, {34, 40}, {54, 40}}, color = {0, 0, 127}));
 connect(RateSwitch.y, GrowthRate) annotation(
    Line(points = {{77, 32}, {80, 32}, {80, 70}, {120, 70}}, color = {0, 0, 127}));
 connect(switch1.y, GrowthToElectricVehicle) annotation(
    Line(points = {{69, -24}, {80, -24}, {80, 0}, {120, 0}}, color = {0, 0, 127}));
 connect(realExpression.y, switch1.u3) annotation(
    Line(points = {{-39, 88}, {34, 88}, {34, -32}, {46, -32}}, color = {0, 0, 127}));
 connect(VehicleBanYear.y, RateSwitch.u2) annotation(
    Line(points = {{-3, 0}, {10, 0}, {10, 32}, {54, 32}}, color = {255, 0, 255}));
 connect(VehicleBanYear.y, switch1.u2) annotation(
    Line(points = {{-3, 0}, {10, 0}, {10, -24}, {46, -24}}, color = {255, 0, 255}));
 connect(InputSimulationTime, VehicleBanYear.u) annotation(
    Line(points = {{-102, 0}, {-26, 0}}, color = {0, 0, 127}));
 connect(InputSimulationTime, combiTable1Ds2.u) annotation(
    Line(points = {{-102, 0}, {-80, 0}, {-80, -66}, {-66, -66}}, color = {0, 0, 127}));
 connect(switch11.y, RateSwitch.u3) annotation(
    Line(points = {{7, 36}, {20, 36}, {20, 24}, {54, 24}}, color = {0, 0, 127}));
 connect(switch11.y, switch1.u1) annotation(
    Line(points = {{7, 36}, {20, 36}, {20, -16}, {46, -16}}, color = {0, 0, 127}));
 connect(combiTable1Ds1.y[1], switch11.u3) annotation(
    Line(points = {{-47, 18}, {-46, 18}, {-46, 28}, {-16, 28}}, color = {0, 0, 127}));
 connect(combiTable1Ds.y[1], switch11.u1) annotation(
    Line(points = {{-47, 64}, {-42, 64}, {-42, 44}, {-16, 44}}, color = {0, 0, 127}));
 connect(switch12.y, DepletionRate) annotation(
    Line(points = {{33, -50}, {120, -50}}, color = {0, 0, 127}));
 connect(combiTable1Ds2.y[1], switch12.u3) annotation(
    Line(points = {{-43, -66}, {-17.5, -66}, {-17.5, -58}, {10, -58}}, color = {0, 0, 127}));
 connect(combiTable1Ds3.y[1], switch12.u1) annotation(
    Line(points = {{-47, -28}, {-39, -28}, {-39, -42}, {10, -42}}, color = {0, 0, 127}));
 connect(InputSimulationTime, combiTable1Ds3.u) annotation(
    Line(points = {{-102, 0}, {-80, 0}, {-80, -28}, {-70, -28}}, color = {0, 0, 127}));
 connect(InputSimulationTime, combiTable1Ds1.u) annotation(
    Line(points = {{-102, 0}, {-80, 0}, {-80, 18}, {-70, 18}}, color = {0, 0, 127}));
 connect(InputSimulationTime, combiTable1Ds.u) annotation(
    Line(points = {{-102, 0}, {-80, 0}, {-80, 64}, {-70, 64}}, color = {0, 0, 127}));
 connect(CombiFlag.y, switch11.u2) annotation(
    Line(points = {{-51, 42}, {-34, 42}, {-34, 36}, {-16, 36}}, color = {255, 0, 255}));
 connect(CombiFlag.y, switch12.u2) annotation(
    Line(points = {{-51, 42}, {-34, 42}, {-34, -50}, {10, -50}}, color = {255, 0, 255}));
  annotation(
    Icon(graphics = {Rectangle(lineColor = {225, 225, 225}, fillColor = {190, 190, 190}, fillPattern = FillPattern.HorizontalCylinder, lineThickness = 0.47, extent = {{-100, 100}, {100, -100}}, radius = 25), Text(extent = {{-100, 100}, {100, -100}}, textString = "%name%", fontSize = 10)}),
    Diagram(coordinateSystem(extent = {{-150, -100}, {150, 100}})));
end RateLogic;
