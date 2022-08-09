within TransportationModel.LogicBox;

model variableAverageKM
  Real AverageKM;
 
  parameter Real InitialAverageKM;
  parameter Real PecentageReductionInAvegageKM = 0.02;
  parameter Real InitialEnergyPerKM = 1;
  parameter Real FossilBanYear;
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-92, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 4}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {88, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

initial equation 
  AverageKM = InitialAverageKM;

algorithm

  when sample(FossilBanYear, 1) then
  
    AverageKM := pre(AverageKM) * (1-PecentageReductionInAvegageKM) ;
    
  end when;
 
 equation
  
   
   y = AverageKM * u * InitialEnergyPerKM;
  annotation(
    Icon(graphics = {Rectangle(origin = {0, 2}, extent = {{-100, 34}, {100, -34}}), Text(origin = {0, 2}, extent = {{-100, 34}, {100, -34}}, textString = "%name%")}),
    experiment(StartTime = 2019, StopTime = 2035, Tolerance = 1e-06, Interval = 0.032),
 Diagram);
end variableAverageKM;
