within TransportationModel.LogicBox;

model VehicleOutput
  
  Modelica.Blocks.Logical.Switch switch1 annotation(
    Placement(visible = true, transformation(origin = {56, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold annotation(
    Placement(visible = true, transformation(origin = {-18, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = 0)  annotation(
    Placement(visible = true, transformation(origin = {-59, 54}, extent = {{-11, -8}, {11, 8}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput VehicleIn annotation(
    Placement(visible = true, transformation(origin = {-78, 12}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput VehicleOut annotation(
    Placement(visible = true, transformation(origin = {84, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(lessEqualThreshold.y, switch1.u2) annotation(
    Line(points = {{-7, 12}, {43, 12}, {43, 14}}, color = {255, 0, 255}));
  connect(realExpression.y, switch1.u1) annotation(
    Line(points = {{-46.9, 54}, {13.1, 54}, {13.1, 20}, {43.1, 20}}, color = {0, 0, 127}));
  connect(VehicleIn, lessEqualThreshold.u) annotation(
    Line(points = {{-78, 12}, {-30, 12}}, color = {0, 0, 127}));
  connect(switch1.y, VehicleOut) annotation(
    Line(points = {{67, 14}, {84, 14}}, color = {0, 0, 127}));
  connect(VehicleIn, switch1.u3) annotation(
    Line(points = {{-78, 12}, {-50, 12}, {-50, -36}, {44, -36}, {44, 6}}, color = {0, 0, 127}));
  annotation(
    Icon(graphics = {Rectangle(origin = {-0.00980392, 10}, extent = {{-100.01, 10}, {100.01, -10}}), Text(origin = {1.42109e-14, 10}, extent = {{-100, 10}, {100, -10}}, textString = "%name%")}));
end VehicleOutput;
