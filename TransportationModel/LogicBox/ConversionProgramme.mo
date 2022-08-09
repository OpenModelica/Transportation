within TransportationModel.LogicBox;

model ConversionProgramme

  Modelica.Blocks.Interfaces.RealInput VehicleInput annotation(
    Placement(visible = true, transformation(origin = {-120, 52}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {120, 2}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput ToElectricVehicleGrowth annotation(
    Placement(visible = true, transformation(origin = {108, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput ToElectricVehicleDepletion annotation(
    Placement(visible = true, transformation(origin = {108, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch Switch annotation(
    Placement(visible = true, transformation(origin = {12, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold annotation(
    Placement(visible = true, transformation(origin = {-64, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression annotation(
    Placement(visible = true, transformation(origin = {-24, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput GrowthRate annotation(
    Placement(visible = true, transformation(origin = {-120, 8}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-122, 78}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput DepletionRate annotation(
    Placement(visible = true, transformation(origin = {-120, -22}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-122, -76}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput VehicleGrowhRate annotation(
    Placement(visible = true, transformation(origin = {110, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput VehicleDepletionRate annotation(
    Placement(visible = true, transformation(origin = {110, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch1 annotation(
    Placement(visible = true, transformation(origin = {12, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch11 annotation(
    Placement(visible = true, transformation(origin = {12, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch12 annotation(
    Placement(visible = true, transformation(origin = {12, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  equation
  connect(VehicleInput, lessEqualThreshold.u) annotation(
    Line(points = {{-120, 52}, {-76, 52}}, color = {0, 0, 127}));
  connect(GrowthRate, Switch.u3) annotation(
    Line(points = {{-120, 8}, {0, 8}}, color = {0, 0, 127}));
  connect(Switch.y, VehicleGrowhRate) annotation(
    Line(points = {{23, 16}, {58, 16}, {58, 52}, {110, 52}}, color = {0, 0, 127}));
  connect(DepletionRate, switch1.u3) annotation(
    Line(points = {{-120, -22}, {0, -22}}, color = {0, 0, 127}));
  connect(GrowthRate, switch11.u1) annotation(
    Line(points = {{-120, 8}, {-32, 8}, {-32, -34}, {0, -34}}, color = {0, 0, 127}));
  connect(DepletionRate, switch12.u1) annotation(
    Line(points = {{-120, -22}, {-40, -22}, {-40, -66}, {0, -66}}, color = {0, 0, 127}));
  connect(switch11.y, ToElectricVehicleGrowth) annotation(
    Line(points = {{23, -42}, {50, -42}, {50, -24}, {108, -24}}, color = {0, 0, 127}));
  connect(switch12.y, ToElectricVehicleDepletion) annotation(
    Line(points = {{23, -74}, {74, -74}, {74, -50}, {108, -50}}, color = {0, 0, 127}));
  connect(switch1.y, VehicleDepletionRate) annotation(
    Line(points = {{24, -14}, {78, -14}, {78, 24}, {110, 24}, {110, 26}}, color = {0, 0, 127}));
  connect(lessEqualThreshold.y, switch12.u2) annotation(
    Line(points = {{-52, 52}, {-36, 52}, {-36, -74}, {0, -74}}, color = {255, 0, 255}));
  connect(switch11.u2, lessEqualThreshold.y) annotation(
    Line(points = {{0, -42}, {-36, -42}, {-36, 52}, {-52, 52}}, color = {255, 0, 255}));
  connect(switch1.u2, lessEqualThreshold.y) annotation(
    Line(points = {{0, -14}, {-36, -14}, {-36, 52}, {-52, 52}}, color = {255, 0, 255}));
  connect(Switch.u2, lessEqualThreshold.y) annotation(
    Line(points = {{0, 16}, {-36, 16}, {-36, 52}, {-52, 52}}, color = {255, 0, 255}));
  connect(realExpression.y, switch12.u3) annotation(
    Line(points = {{-13, 68}, {-10, 68}, {-10, -82}, {0, -82}}, color = {0, 0, 127}));
  connect(switch11.u3, realExpression.y) annotation(
    Line(points = {{0, -50}, {-10, -50}, {-10, 68}, {-13, 68}}, color = {0, 0, 127}));
  connect(switch1.u1, realExpression.y) annotation(
    Line(points = {{0, -6}, {-10, -6}, {-10, 68}, {-13, 68}}, color = {0, 0, 127}));
  connect(Switch.u1, realExpression.y) annotation(
    Line(points = {{0, 24}, {-10, 24}, {-10, 68}, {-13, 68}}, color = {0, 0, 127}));
  annotation(
    Icon(graphics = {Rectangle(lineColor = {255, 255, 255}, fillColor = {88, 88, 88}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 100}, {100, -100}})}));
end ConversionProgramme;
