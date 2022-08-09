within TransportationModel.Scenarios.Scenario3;

model TransportationIntegrator
  extends TransportationModel.Icons.TransportIntegrator;
  inner TransportationParameter TP;
    
  Real year(start = TP.StartSimulationYear);
  TransportationModel.Scenarios.Scenario3.TransportationHub transportationHub annotation(
    Placement(visible = true, transformation(origin = {-59, -43}, extent = {{-29, -29}, {29, 29}}, rotation = 0)));
  TransportationModel.Scenarios.Scenario3.EnvironmentalHub environmentalHub annotation(
    Placement(visible = true, transformation(origin = {44, 46}, extent = {{-28, -28}, {28, 28}}, rotation = 0)));
equation
  when sample(TP.StartTriggerTime, TP.SampleRate) then
    year = pre(year) + 1;
  end when;
  connect(transportationHub.VehiclesPoolBus, environmentalHub.DisplayHubPort) annotation(
    Line(points = {{-28, -42}, {-8, -42}, {-8, 52}, {16, 52}}, color = {255, 204, 51}, thickness = 0.5));
protected
  annotation(
    experiment(StartTime = 2019, StopTime = 2035, Tolerance = 1e-06, Interval = 0.02));

end TransportationIntegrator;
