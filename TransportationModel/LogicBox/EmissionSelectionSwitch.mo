within TransportationModel.LogicBox;

model EmissionSelectionSwitch

  parameter Boolean EmissionFlag(start = true);
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {104, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-108, 8}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-112, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
algorithm

  if EmissionFlag then
    y := u;
  else
    y := 0;
  end if;
  annotation(
    Icon(graphics = {Polygon(points = {{-100, 20}, {-100, -20}, {100, -20}, {100, 20}, {-100, 20}, {-100, 20}}), Text(extent = {{-100, 20}, {100, -20}}, textString = "%name", fontSize = 8)}));
end EmissionSelectionSwitch;
