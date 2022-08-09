within TransportationModel.Auxiliary;

model VehicleAggregator
  parameter Integer nOC;
  parameter Real k[nu]=fill(1, nu) "Input gains";
equation
 

 
 annotation(
    Icon(graphics = {Rectangle(origin = {-2, -8}, lineColor = {79, 79, 118}, fillColor = {189, 189, 189}, fillPattern = FillPattern.VerticalCylinder, lineThickness = 1, extent = {{-100, 40}, {100, -40}}, radius = 15), Text(origin = {-2, -10}, extent = {{-98, 26}, {98, -26}}, textString = "%name%", fontSize = 11)}));
end VehicleAggregator;
