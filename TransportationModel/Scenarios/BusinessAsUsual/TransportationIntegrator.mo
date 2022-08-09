within TransportationModel.Scenarios.BusinessAsUsual;



model TransportationIntegrator
  extends TransportationModel.Icons.TransportIntegrator;
  
  Real year(start = TP.StartSimulationYear);

  inner TransportationModel.TransportationRecords.TransportationParameter_S1 TP;
  TransportationModel.Scenarios.BusinessAsUsual.TransportationHub transportationHub annotation(
    Placement(visible = true, transformation(origin = {-60, -40}, extent = {{-32, -32}, {32, 32}}, rotation = 0)));
  TransportationModel.Scenarios.BusinessAsUsual.EnvironmentHub environmentHub annotation(
    Placement(visible = true, transformation(origin = {49, 59}, extent = {{-31, -31}, {31, 31}}, rotation = 0)));
equation
  when sample(TP.StartTriggerTime, TP.SampleRate) then
    year = pre(year) + 1;
  end when;
  connect(transportationHub.VehiclesPoolBus, environmentHub.TransportationHubPort) annotation(
    Line(points = {{-28, -40}, {0, -40}, {0, 60}, {18, 60}}, color = {255, 204, 51}, thickness = 0.5));
protected
  annotation(
    experiment(StartTime = 0, StopTime = 16, Tolerance = 1e-06, Interval = 0.002));
end TransportationIntegrator;
