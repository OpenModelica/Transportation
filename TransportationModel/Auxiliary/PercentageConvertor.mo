within TransportationModel.Auxiliary;

model PercentageConvertor


  TransportationModel.Interfaces.SignalInPort signalInPort annotation(
    Placement(visible = true, transformation(origin = {-104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -64}, extent = {{-12, -12}, {12, 12}}, rotation = 90)));
  TransportationModel.Interfaces.SignalOutPort signalOutPort annotation(
    Placement(visible = true, transformation(origin = {112, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {2, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
equation
  
  signalOutPort = signalInPort/100;

annotation(
    Icon(graphics = {Ellipse(origin = {2.24, -0.28}, lineColor = {85, 0, 0}, lineThickness = 2, extent = {{-50.05, 49.64}, {50.05, -49.64}}, endAngle = 360), Text(origin = {5, 8}, extent = {{-31, 24}, {31, -24}}, textString = "%name")}));

end PercentageConvertor;
