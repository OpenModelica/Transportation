within TransportationModel.Auxiliary;


model YearConvertor
  Modelica.Blocks.Interfaces.RealInput InYear annotation(
    Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput OutYear annotation(
    Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

  OutYear  = InYear + time;
  
  annotation(
    Icon(graphics = {Rectangle(extent = {{-100, 20}, {100, -20}}), Text(origin = {-5, 3}, extent = {{-87, 13}, {87, -13}}, textString = "%name")}));
end YearConvertor;
