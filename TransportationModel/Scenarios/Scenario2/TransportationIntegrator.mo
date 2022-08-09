within TransportationModel.Scenarios.Scenario2;

model TransportationIntegrator
  extends TransportationModel.Icons.TransportIntegrator;
  inner TransportationParameter TP;
    
  Real year(start = TP.StartSimulationYear);
  TransportationModel.Scenarios.Scenario2.TransportationHub transportationHub annotation(
    Placement(visible = true, transformation(origin = {-58, -46}, extent = {{-32, -32}, {32, 32}}, rotation = 0)));
  TransportationModel.Scenarios.Scenario2.EnvironmentalHub environmentalHub annotation(
    Placement(visible = true, transformation(origin = {47, 39}, extent = {{-31, -31}, {31, 31}}, rotation = 0)));
equation
  when sample(TP.StartTriggerTime, TP.SampleRate) then
    year = pre(year) + 1;
  end when;
  connect(transportationHub.VehiclesPoolBus, environmentalHub.DisplayHubPort) annotation(
    Line(points = {{-22, -46}, {-8, -46}, {-8, 44}, {16, 44}}, color = {255, 204, 51}, thickness = 0.5));
protected
  annotation(
    experiment(StartTime = 2019, StopTime = 2035, Tolerance = 1e-06, Interval = 0.02));

end TransportationIntegrator;
